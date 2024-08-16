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
		if k ~= "mapData" and k ~= "material" and k ~= "hasRead" then -- skip over mapData/material/hasRead if detected, these are not crucial
			t1size = t1size + 1
		end
	end
	local t2size = 0
	for k in pairs(t2) do
		if k ~= "mapData" and k ~= "material" and k ~= "hasRead" then
			t2size = t2size + 1
		end
	end
	if t1size ~= t2size then
		return false
	end

	-- Compare keys and values recursively, skipping mapData key
	for k, v in pairs(t1) do
		if k ~= "mapData" and k ~= "material" and k ~= "hasRead" then
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
					debug = false,
				},
				text = {},
				questItems = {},
			};
		end



		Lorekeeper.commands = {
			["show"] = function() -- ["PH"]
				LK.LoreKGUI:Show();
			end,

			--[[
			["test"] = function()
				Print("Test.");
			end,

			["hello"] = function(subCommand)
				if not subCommand or subCommand == "" then
					Print("No Command");
				elseif subCommand == "world" then
					Print("Specified Command");
				else
					Print("Invalid Sub-Command");
				end
			end,
			]]

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

					if (#arg > 0) then --if string length is greater than 0
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
		local map = C_Map.GetBestMapForUnit("player")
		local position = C_Map.GetPlayerMapPosition(map, "player")
		local coords = {position:GetXY()}
		--[[
		if key == "Item-8383" then
			--PANIC
		end
		]]
		--DATABASE:InsertItemText(activeContext); -- Save to storage?
		if not LoreK_DB then
			LoreK_DB = {
				settings = {
					overrideMaterials = false,
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
				map = map,
				coords = {coords},
			}
		end

		if not LoreK_DB["text"][key] then
			LoreK_DB["text"][key] = {}
		end
		--LoreK_DB["text"]["Item-139034"]["base"]["text"][1]
		if LoreK_DB["text"][key] then
			if LoreK_DB["text"][key]["base"] then
				--[[
				for k, v in pairs(LoreK_DB[key]) do
					for subk, subv in pairs(LoreK_DB[key]) do
						print("subkv",subk,subv)
						if k ~= subk and tCompareDeez(v,subv) then
							print(v["text"][1], subv["text"][1])
							print(tCompareDeez(v,subv))
							print(k, subk)
							print("Duplicate copy found, deleting entry: " .. subk)
							LoreK_DB[key][subk] = nil
						end
					end
				end
					]]
				if tCompareDeez(LoreK_DB["text"][key]["base"],activeContext) then
					if LoreK_DB.settings.debug then
						print("Detected exact copy, no changes made")
					end
				else

					LoreK_DB["text"][key]["copy_"..( tablelength(LoreK_DB["text"][key]) )] = CopyTable(LoreK_DB["text"][key]["base"])
					if LoreK_DB.settings.debug then
						print("Detected changes in text, a copy of the old has been made.") -- ["PH"]
					end
				end
			end
		end

		LoreK_DB["text"][key]["base"] = CopyTable(activeContext)
		--[[
		activeContext structure
			doneReading = boolean
			title = string
			pageCount = number
			IsDone = function
			guid = string
			text = {
				["pageNum"] = string -- the page number itself is a string because SVs delete numbers
			}
			singlePage = boolean
			doneResetting = boolean
			material = string -- will be either "default" or "ParchmentLarge"
			creator = string -- primarily used for mail items
			size = {
				x = number
				y = number
			}
			hasRead = boolean





		print(activeContext.guid)
		for k, v in pairs(activeContext) do
			if k == "text" then
				print("text has multiple pages")
				print("process pages")
				local tempText = MakeReadingGreatAgain(activeContext.text)
				for subk, subv in ipairs(tempText) do
					print("value " .. subk)
					print(subk, subv)
				end
			end
		end
		]]
		activeContext = nil;
	end
end

Lorekeeper.Initialize:RegisterEvent("ADDON_LOADED")
Lorekeeper.Initialize:RegisterEvent("ITEM_TEXT_BEGIN")
Lorekeeper.Initialize:RegisterEvent("ITEM_TEXT_READY")
Lorekeeper.Initialize:RegisterEvent("ITEM_TEXT_CLOSED")
Lorekeeper.Initialize:SetScript("OnEvent", Lorekeeper.Initialize.Events)