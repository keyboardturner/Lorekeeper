local _, LK = ...


local function Print(...)
	local prefix = string.format("|cFFFFF569".."[PH] Lorekeeper" .. "|r:");
	DEFAULT_CHAT_FRAME:AddMessage(string.join(" ", prefix, ...));
end

local function NextPage()
	RunNextFrame(function() ItemTextNextPage() end);
end

local function PrevPage()
	RunNextFrame(function() ItemTextPrevPage() end);
end

local DEFAULT_PAGE_COUNT = 0; -- since books are not zero-indexed

local _context = {
	text = {},
	guid = nil,
	title = nil,
	singlePage = false,
	pageCount = DEFAULT_PAGE_COUNT,
	doneReading = false,
	doneResetting = false,
	material = ItemTextGetMaterial() or "default", 
	creator = ItemTextGetCreator(),
	hasRead = true,
	isFavorite = false,
	IsDone = function(self) return self.doneReading and self.doneResetting; end
};

local function CreateContext()
	local ctx = CopyTable(_context);
	ctx.guid = UnitGUID("npc");
	ctx.title = ItemTextGetItem();
	ctx.singlePage = not ItemTextHasNextPage();
	ctx.material = ItemTextGetMaterial() or "default";
	ctx.creator = ItemTextGetCreator();
	ctx.hasRead = true;
	ctx.isFavorite = false;
	return ctx;
end

local function MakeReadingGreatAgain(bookText)
	local tbl = {};
	for k, v in pairs(bookText) do
		tbl[tonumber(k)] = v;
	end
	return tbl;
end

local function tCompareDeez(t1, t2)
	-- If both tables are the same reference, they are equal
	if t1 == t2 then
		return true
	end

	-- If either table is nil, they are not equal
	if t1 == nil or t2 == nil then
		return false
	end

	-- Check that both inputs are tables
	if type(t1) ~= "table" or type(t2) ~= "table" then
		return false
	end

	-- Compare the size of the tables, ignoring mapData key
	local t1size = 0
	for k in pairs(t1) do
		if k ~= "mapData" and k ~= "material" and k ~= "hasRead" and k ~= "texture" and k ~= "isFavorite" then -- skip over mapData/material/hasRead if detected, these are not crucial
			t1size = t1size + 1
		end
	end
	local t2size = 0
	for k in pairs(t2) do
		if k ~= "mapData" and k ~= "material" and k ~= "hasRead" and k ~= "texture" and k ~= "isFavorite" then
			t2size = t2size + 1
		end
	end
	if t1size ~= t2size then
		return false
	end

	-- Compare keys and values recursively, skipping mapData key
	for k, v in pairs(t1) do
		if k ~= "mapData" and k ~= "material" and k ~= "hasRead" and k ~= "texture" and k ~= "isFavorite" then
			if t2[k] == nil or not tCompareDeez(v, t2[k]) then
				return false
			end
		end
	end

	return true
end


function tablelength(T)
	local count = 0
	for _ in pairs(T) do count = count + 1 end
	return count
end


local activeContext;

local Lorekeeper = CreateFrame("Frame")
Lorekeeper.Initialize = CreateFrame("Frame");

function Lorekeeper.Initialize:Events(event, arg1, arg2)
	if event == "ADDON_LOADED" and arg1 == "Lorekeeper" then

		if not LoreK_DB then
			LoreK_DB = {
				settings = {
					overrideMaterials = false,
					debug = true,
				},
				text = {},
				questItems = {},
			};
		end

		Lorekeeper.commands = {
			["show"] = function() -- ["PH"]
				LK.LoreKGUI:Show();
			end,

			["help"] = function() --because there's not a lot of commands, don't use this yet. -- ["PH"]
				local concatenatedString
				for k, v in pairs(Lorekeeper.commands) do
					if concatenatedString == nil then
						concatenatedString = "|cFF00D1FF"..k.."|r"
					else
						concatenatedString = concatenatedString .. ", ".. "|cFF00D1FF"..k.."|r"
					end
				end
				Print("List of Commands:" .. " " .. concatenatedString) -- ["PH"]
			end
		};

		local function HandleSlashCommands(str)
			if (#str == 0) then
				Lorekeeper.commands["show"](); --["PH"]
				return;
			end

			local args = {};
			for _dummy, arg in ipairs({ string.split(' ', str) }) do
				if (#arg > 0) then
					table.insert(args, arg);
				end
			end

			local path = Lorekeeper.commands; -- required for updating found table.

			for id, arg in ipairs(args) do
				if (#arg > 0) then -- if string length is greater than 0
					arg = arg:lower();          
					if (path[arg]) then
						if (type(path[arg]) == "function") then
							-- all remaining args passed to our function!
							path[arg](select(id + 1, unpack(args))); 
							return;                 
						elseif (type(path[arg]) == "table") then
							path = path[arg]; -- another sub-table found!
						end
					else
						Lorekeeper.commands["help"](); -- ["PH"]
						return;
					end
				end
			end
		end

		SLASH_LOREKEEPER1 = "/".. "lorekeeper" -- ["PH"]
		SLASH_LOREKEEPER2 = "/".. "lorek" -- ["PH"]
		SlashCmdList.LOREKEEPER = HandleSlashCommands;

		Print("[PH] Loaded! Type /lorekeeper to open the journal.")
	end

	if event == "ITEM_TEXT_BEGIN" then
		activeContext = CreateContext();
		ItemTextFrame:SetAlpha(0);
	end
	if event == "ITEM_TEXT_READY" then
		local ctx = activeContext;
		if not ctx or ctx:IsDone() then
			return;
		end

		if not ctx.doneReading then
			local pageNum = ItemTextGetPage();
			ctx.text[pageNum] = ItemTextGetText();
			if ItemTextHasNextPage() then
				ctx.pageCount = ctx.pageCount + 1;
				NextPage();
			else
				ctx.doneReading = true;
				if ctx.singlePage then
					ctx.doneResetting = true;
					ItemTextFrame:SetAlpha(1);
				end

				PrevPage();
			end
		elseif not ctx.doneResetting then
			ctx.pageCount = ctx.pageCount - 1;
			if ctx.pageCount == DEFAULT_PAGE_COUNT then
				ctx.doneResetting = true;
				ItemTextFrame:SetAlpha(1);
			end
			PrevPage();
		end
	end
	if event == "ITEM_TEXT_CLOSED" then
		if not activeContext then
			return;
		end
		local npcID = select(6, strsplit("-", activeContext.guid))
		local GUIDType = select(1, strsplit("-", activeContext.guid))
		local key = GUIDType .. "-" .. ( C_Item.GetItemIDByGUID(activeContext.guid) or npcID )
		if key == "Item-8383" then -- this will be handled by the Mail plugin.
			if C_AddOns.IsAddOnLoaded("Lorekeeper_Mail") then
				LoreKeeper_API_Mail()
			end
			return;
		end
		local map = C_Map.GetBestMapForUnit("player")
		local position = C_Map.GetPlayerMapPosition(map, "player")
		local coords = {0,0} -- instanced content doesn't always allow proper pos
		if position then
			coords = {position:GetXY()}
		end

		if not LoreK_DB then
			LoreK_DB = {
				settings = {
					overrideMaterials = false,
					debug = true,
				},
				text = {},
				questItems = {},
			};
		end

		if activeContext.doneResetting ~= true then
			activeContext = nil;
			return
		end
		activeContext.doneReading = nil
		activeContext.IsDone = nil
		activeContext.guid = nil
		activeContext.doneResetting = nil

		if GUIDType == "GameObject" then
			activeContext.mapData = {
				[map] = coords,
			};
			if LK["LocalData"]["text"][key]["base"]["mapData"] then
				if not LK["LocalData"]["text"][key]["base"]["mapData"][map] then
					LoreK_DB["text"][key]["base"]["mapData"] = {
						[map] = coords,
					};
					if LoreK_DB.settings.debug then
						Print("Adding MapID data to SVs")
					end
				else
					if LoreK_DB["text"][key]["base"]["mapData"] and LoreK_DB["text"][key]["base"]["mapData"][map] then
						LoreK_DB["text"][key]["base"]["mapData"][map] = nil
						if LoreK_DB.settings.debug then
							Print("Cleaning up duplicate Map ID data found in LocalData.")
						end
					end
				end
			else
				LoreK_DB["text"][key]["base"]["mapData"] = {
					[map] = coords,
				};
			end
		end
		if LoreK_DB["text"][key] then
			if LoreK_DB["text"][key]["base"] then
				if not LK["LocalData"]["text"][key] or not LK["LocalData"]["text"][key]["base"] then
					if LoreK_DB["text"][key]["base"]["text"] then -- does entry exist in SVs (with text)
						if tCompareDeez(LoreK_DB["text"][key]["base"], activeContext) then -- is it an exact match
							if LoreK_DB.settings.debug then
								Print("Detected exact copy in SVs, no changes made: "..activeContext.title)
							end
						else
							LoreK_DB["text"][key]["copy_"..( tablelength(LoreK_DB["text"][key]) )] = CopyTable(activeContext) -- produce a copy
							if LoreK_DB.settings.debug then
								Print("Detected changes in text, a copy of the old has been made: "..activeContext.title) -- ["PH"]
							end
						end
					else
						-- entry does NOT exist in SVs or LocalData, proceed to save.
						LoreK_DB["text"][key]["base"] = CopyTable(activeContext)
						Print("Saved base version into SVs: "..activeContext.title)
					end
				else
					tCompareDeez(LK["LocalData"]["text"][key]["base"], activeContext) -- compare LocalData to Active
					if LoreK_DB.settings.debug then
						Print("Detected exact copy in LocalData, no changes made: "..activeContext.title)
					end
					if LoreK_DB["text"][key]["base"] then
						if tCompareDeez(LoreK_DB["text"][key]["base"], LK["LocalData"]["text"][key]["base"]) then -- entry exists, but it's a copy of the LocalData, local data probably got updated, so clean SV bloat.
							LoreK_DB["text"][key]["base"] = nil
							if LoreK_DB.settings.debug then
								Print("Detected exact copy between SVs and LocalData, deleting SV entry: "..activeContext.title)
							end
						end
					end
				end
				if not LoreK_DB["text"][key]["base"]["hasRead"] then
					LoreK_DB["text"][key]["base"]["hasRead"] = true;
				end
			end
		end

		activeContext = nil;
	end
end


Lorekeeper.Initialize:RegisterEvent("ADDON_LOADED")
Lorekeeper.Initialize:RegisterEvent("ITEM_TEXT_BEGIN")
Lorekeeper.Initialize:RegisterEvent("ITEM_TEXT_READY")
Lorekeeper.Initialize:RegisterEvent("ITEM_TEXT_CLOSED")
Lorekeeper.Initialize:SetScript("OnEvent", Lorekeeper.Initialize.Events)