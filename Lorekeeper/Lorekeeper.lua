local _, LK = ...


local function Print(...)
	if not ... then
		if LoreK_DB["settings"]["debugAdvanced"] then
			Print("Something failed spectacularly, the data in Print was nil");
		end
		return
	end
	local prefix = string.format("|cFFFFF569".. Lorekeeper_API.LK["Lorekeeper"] .. "|r:");
	DEFAULT_CHAT_FRAME:AddMessage(string.join(" ", prefix, ...));
end

local function NextPage()
	RunNextFrame(function() ItemTextNextPage() end);
end

local function PrevPage()
	RunNextFrame(function() ItemTextPrevPage() end);
end

local PH_PLAYER_NAME = "$PLAYER_NAME$";
local PH_PLAYER_CLASS = "$PLAYER_CLASS$";

-- replace player name and class with generic identifiers
local function ReplaceNameAndClass(word)
	local playerNameF = GetUnitName("player", false);
	local playerNameT = GetUnitName("player", true);
	local playerClass = UnitClass("player");
	if string.lower(word) == string.lower(playerNameF) or string.lower(word) == string.lower(playerNameT) then
		return PH_PLAYER_NAME;
	end
	--if string.lower(word) == string.lower(playerClass) then
		--return PH_PLAYER_CLASS; -- this doesn't seem to be utilized legitimately, so disable for now.
	--end
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

local ignoredKeys = {
	mapData = true,
	material = true,
	hasRead = true,
	isFavorite = true,
	isObtainable = true,
	isClassSpecific = true,
	isFinalVersion = true,
	isHidden = true,
	expansion = true,
	source = true,
};

-- Helper function to check if a key is in the ignored list
local function isIgnoredKey(key)
	return ignoredKeys[key] ~= nil
end

function LK.tCompareDeez(t1, t2)
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

	-- Compare the size of the tables
	local t1size = 0
	for k in pairs(t1) do
		if not isIgnoredKey(k) then
			t1size = t1size + 1
		end
	end
	local t2size = 0
	for k in pairs(t2) do
		if not isIgnoredKey(k) then
			t2size = t2size + 1
		end
	end
	if t1size ~= t2size then
		return false
	end

	-- Compare keys and values recursively
	for k, v in pairs(t1) do
		if not isIgnoredKey(k) then
			if t2[k] == nil or not LK.tCompareDeez(v, t2[k]) then
				return false
			end
		end
	end

	return true
end


local function tablelength(T)
	local count = 0
	for _ in pairs(T) do count = count + 1 end
	return count
end

local simpleTypes = {
	itemID = 1,
	enchantID = 2,
	suffixID = 7,
	uniqueID = 8,
	linkLevel = 9,
	specializationID = 10,
	modifiersMask = 11,
	itemContext = 12,
}

local function ProcessItemLink(itemLink)
	local _, linkOptions = LinkUtil.ExtractLink(itemLink)
	local item = {strsplit(":", linkOptions)}
	local t = {}

	for k, v in pairs(simpleTypes) do
		t[k] = tonumber(item[v])
	end

	for i = 1, 4 do
		local gem = tonumber(item[i+2])
		if gem then
			t.gems = t.gems or {}
			t.gems[i] = gem
		end
	end

	local idx = 13
	local numBonusIDs = tonumber(item[idx])
	if numBonusIDs then
		t.bonusIDs = {}
		for i = 1, numBonusIDs do
			t.bonusIDs[i] = tonumber(item[idx+i])
		end
	end
	idx = idx + (numBonusIDs or 0) + 1

	local numModifiers = tonumber(item[idx])
	if numModifiers then
		t.modifiers = {}
		for i = 1, numModifiers do
			local offset = i*2
			t.modifiers[i] = {
				tonumber(item[idx+offset-1]),
				tonumber(item[idx+offset])
			}
		end
		idx = idx + numModifiers*2 + 1
	else
		idx = idx + 1
	end

	for i = 1, 3 do
		local relicNumBonusIDs = tonumber(item[idx])
		if relicNumBonusIDs then
			t.relicBonusIDs = t.relicBonusIDs or {}
			t.relicBonusIDs[i] = {}
			for j = 1, relicNumBonusIDs do
				t.relicBonusIDs[i][j] = tonumber(item[idx+j])
			end
		end
		idx = idx + (relicNumBonusIDs or 0) + 1
	end

	local crafterGUID = item[idx]
	if #crafterGUID > 0 then
		t.crafterGUID = crafterGUID
	end
	idx = idx + 1

	t.extraEnchantID = tonumber(item[idx])

	return t.crafterGUID
end

local function PlayerGUIDInfo(guid)
	if not guid then
		return
	end
	local localizedClass, englishClass, localizedRace, englishRace, sex, name, realmName = GetPlayerInfoByGUID(guid)
	if not GetPlayerInfoByGUID(guid) or name == "" or name == nil then -- the GUID is borked, blanked, or flawed. Don't return dummy default info.
		return
	end
	return localizedClass, englishClass, localizedRace, englishRace, sex, name, realmName
end


local activeContext;

local Lorekeeper = CreateFrame("Frame")
Lorekeeper.Initialize = CreateFrame("Frame");

function LK.ClearQuestItems() -- this should *only* be used to clear out duplicate entries in SVs. This will wipe all data including if it was discovered.
	for k, v in pairs(LK["LocalData"]["questItems"]) do
		if LK["LocalData"]["questItems"][k] and LoreK_DB["questItems"][k] then
			LoreK_DB["questItems"][k] = nil;
			if LoreK_DB.settings.debugAdvanced then
				Print("LocalData exists for QuestItemID "..k..". Cleaning up entry.")
			end
		end
	end
end

function Lorekeeper.Initialize:Events(event, arg1, arg2)
	if event == "ADDON_LOADED" and arg1 == "Lorekeeper" then

		if not LoreK_DB then
			LoreK_DB = {
				settings = {
					overrideMaterials = false,
					hideUnread = true,
					slashRead = false,
					debugAdvanced = false,
					collectSound = false,
					searchMenu = {
						showUnobtainable = false,
						showClassrestricted = true,
						showHidden = false,
					showCollected = true,
					showUnread = true,
						expansion = {
							classic = true,
							tbc = true,
							wrath = true,
							cata = true,
							mop = true,
							wod = true,
							legion = true,
							bfa = true,
							shadowlands = true,
							dragonflight = true,
							warwithin = true,
							midnight = true,
							lasttitan = true,
						},
					},
				},
				text = {},
				questItems = {},
			};
		end

		if LoreK_DB["settings"] and not LoreK_DB["settings"]["searchMenu"] then
			LoreK_DB["settings"]["searchMenu"] = {
				showUnobtainable = false,
				showClassrestricted = true,
				showHidden = false,
				showCollected = true,
				showUnread = true,
				expansion = {
					classic = true,
					tbc = true,
					wrath = true,
					cata = true,
					mop = true,
					wod = true,
					legion = true,
					bfa = true,
					shadowlands = true,
					dragonflight = true,
					warwithin = true,
					midnight = true,
					lasttitan = true,
				},
			};
		end

		Lorekeeper.commands = {
			[LK["show"]] = function()
				LK.LoreKGUI:Show();
			end,

			[LK["help"]] = function() --because there's not a lot of commands, don't use this yet.
				local concatenatedString
				for k, v in pairs(Lorekeeper.commands) do
					if concatenatedString == nil then
						concatenatedString = "|cFF00D1FF"..k.."|r"
					else
						concatenatedString = concatenatedString .. ", ".. "|cFF00D1FF"..k.."|r"
					end
				end
				Print(LK["ListOfCmds"] .. concatenatedString)
			end
		};

		local function HandleSlashCommands(str)
			if (#str == 0) then
				Lorekeeper.commands[LK["show"]](); --["PH"]
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
						Lorekeeper.commands[LK["help"]]();
						return;
					end
				end
			end
		end

		SLASH_LOREKEEPER1 = "/".. LK["SlashLoreK1"]
		SLASH_LOREKEEPER2 = "/".. LK["SlashLoreK2"]
		SlashCmdList.LOREKEEPER = HandleSlashCommands;

		Print(LK["LoreKIntro"])
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
			local text = ItemTextGetText();
			ctx.text[pageNum] = text:gsub("(%w+-?%w*)", ReplaceNameAndClass);
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
		local npcID = select(6, strsplit("-", activeContext.guid));
		local GUIDType = select(1, strsplit("-", activeContext.guid));
		local key = GUIDType .. "-" .. ( C_Item.GetItemIDByGUID(activeContext.guid) or npcID );
		if key == "Item-8383" or key == "Item-22059" then -- this will be handled by the Mail plugin.
			if C_AddOns.IsAddOnLoaded("Lorekeeper_Mail") then
				local itemLink = C_Item.GetItemLinkByGUID(activeContext.guid);
				local PlayerGUID = ProcessItemLink(itemLink);
				if PlayerGUID and PlayerGUIDInfo(PlayerGUID) then
					activeContext.playerGUID = PlayerGUID;
					Lorekeeper_API.MailDetected(activeContext);
				else
					activeContext.playerGUID = MISCELLANEOUS;
					Lorekeeper_API.MailDetected(activeContext);
					--activeContext = nil;
					if LoreK_DB.settings.debugAdvanced then
						Print("Attempting to save under 'Miscellaneous'.")
						--Print("Can't find GUID for item, it's probably been transferred cross realm.")
					end
				end
			end
			activeContext = nil;
			return;
		end
		local map = C_Map.GetBestMapForUnit("player");
		local position = C_Map.GetPlayerMapPosition(map, "player");
		local coords = {0,0} -- instanced content doesn't always allow proper pos
		if position then
			coords = {position:GetXY()};
		end

		if not LoreK_DB then
			LoreK_DB = {
				settings = {
					overrideMaterials = false,
					hideUnread = true,
					slashRead = false,
					debugAdvanced = false,
					collectSound = false,
					searchMenu = {
						showUnobtainable = false,
						showClassrestricted = true,
						showHidden = false,
						showUnread = false,
						expansion = {
							classic = true,
							tbc = true,
							wrath = true,
							cata = true,
							mop = true,
							wod = true,
							legion = true,
							bfa = true,
							shadowlands = true,
							dragonflight = true,
							warwithin = true,
							midnight = true,
							lasttitan = true,
						},
					},
				},
				text = {},
				questItems = {},
			};
		end

		if activeContext.doneResetting ~= true then
			activeContext = nil;
			return
		end
		activeContext.doneReading = nil;
		activeContext.IsDone = nil;
		activeContext.guid = nil;
		activeContext.doneResetting = nil;

		if not LoreK_DB["text"] then
			LoreK_DB["text"] = {}
		end

		if not LoreK_DB["text"][key] then
			LoreK_DB["text"][key] = {
				["base"] = {};
			};
		end

		if GUIDType == "GameObject" then
			activeContext.mapData = {
				[map] = coords,
			};
			if LK["LocalData"]["text"][key] and LK["LocalData"]["text"][key]["base"] and LK["LocalData"]["text"][key]["base"]["mapData"] then -- local map data is found
				if not LK["LocalData"]["text"][key]["base"]["mapData"][map] then -- check if no data specific to map ID exists
					LoreK_DB["text"][key]["base"]["mapData"][map] = coords;
					if LoreK_DB.settings.debugAdvanced then
						Print("Adding MapID data to SVs")
					end
				else
					if LoreK_DB["text"][key]["base"]["mapData"] and LoreK_DB["text"][key]["base"]["mapData"][map] then -- check for duplicate data is found and delete it
						LoreK_DB["text"][key]["base"]["mapData"][map] = nil;
						if LoreK_DB.settings.debugAdvanced then
							Print("Cleaning up duplicate Map ID data found in LocalData.")
						end
					end
				end
			else -- no local data
				if LoreK_DB["text"][key] and LoreK_DB["text"][key]["base"] then
					if LoreK_DB["text"][key]["base"]["mapData"] then -- local map data is not found, but the SV map data exists
						if not LoreK_DB["text"][key]["base"]["mapData"][map] then -- check if specific map ID data exists
							LoreK_DB["text"][key]["base"]["mapData"][map] = coords;
							if LoreK_DB.settings.debugAdvanced then
								Print("Adding MapID data to SVs")
							end
						end
					else -- no map data exists
						LoreK_DB["text"][key]["base"]["mapData"] = {
							[map] = coords,
						};
						if LoreK_DB.settings.debugAdvanced then
							Print("Writing Map Data")
						end
					end
				end
			end
		end
		if LoreK_DB["text"][key] then
			if LoreK_DB["text"][key]["base"] then
				if not LK["LocalData"]["text"][key] or not LK["LocalData"]["text"][key]["base"] then
					if LoreK_DB["text"][key]["base"]["text"] then -- does entry exist in SVs (with text)
						if LK.tCompareDeez(LoreK_DB["text"][key]["base"], activeContext) then -- is it an exact match
							if LoreK_DB.settings.debugAdvanced then
								Print("Detected exact copy in SVs, no changes made: "..activeContext.title)
							end
						else
							for k, v in pairs(LoreK_DB["text"][key]) do
								if LK.tCompareDeez(v, activeContext) then
									if LoreK_DB.settings.debugAdvanced then
										Print("Detected exact copy between SVs and LocalData, deleting extra SV data: ".."("..k..")"..activeContext.title)
									end
									LoreK_DB["text"][key][k] = nil;
								else
									LoreK_DB["text"][key]["copy_"..( tablelength(LoreK_DB["text"][key]) )] = CopyTable(activeContext) -- produce a copy
									if LoreK_DB.settings.debugAdvanced then
										Print("Detected changes in text, a copy of the old has been made: "..activeContext.title)
									end
								end
							end
						end
					else
						-- entry does NOT exist in SVs or LocalData, proceed to save.
						LoreK_DB["text"][key]["base"] = CopyTable(activeContext)
						if LoreK_DB["settings"]["collectSound"] ~= true then
							PlaySound(SOUNDKIT.TRADING_POST_UI_COMPLETED_ACTIVITY_TOAST, "SFX", true);
							PlaySound(SOUNDKIT.CONTENT_TRACKING_ITEM_ACQUIRED_TOAST, "SFX", true);
						end
						if LoreK_DB.settings.debugAdvanced then
							Print("Saved base version into SVs: "..activeContext.title)
						end
					end
				else
					if LK.tCompareDeez(LK["LocalData"]["text"][key]["base"], activeContext) then -- compare LocalData to Active
						if LoreK_DB.settings.debugAdvanced then
							Print("Detected exact copy in LocalData, no changes made: "..activeContext.title)
						end
					else
						if LK.tCompareDeez(LoreK_DB["text"][key]["base"], activeContext) then
							if LoreK_DB.settings.debugAdvanced then
								Print("Detected exact copy in SVs, no changes made: "..activeContext.title)
							end
						else
							LoreK_DB["text"][key]["base"] = CopyTable(activeContext);
							if LoreK_DB.settings.debugAdvanced then
								Print("Detected changes in text, creating base version: "..activeContext.title);
							end
						end
					end
					if LoreK_DB["text"][key]["base"] and LK["LocalData"]["text"][itemID] then
						if LK.tCompareDeez(LoreK_DB["text"][key]["base"], LK["LocalData"]["text"][key]["base"]) then -- entry exists, but it's a copy of the LocalData, local data probably got updated, so clean SV bloat but preserve hasRead/isFavorite/mapData
							LoreK_DB["text"][key]["base"]["text"] = nil;
							LoreK_DB["text"][key]["base"]["title"] = nil;
							LoreK_DB["text"][key]["base"]["singlePage"] = nil;
							LoreK_DB["text"][key]["base"]["pageCount"] = nil;
							LoreK_DB["text"][key]["base"]["material"] = nil;
							if LoreK_DB.settings.debugAdvanced then
								Print("Detected exact copy between SVs and LocalData, deleting extra SV data: "..activeContext.title)
							end
						end
					end
				end
				if not LoreK_DB["text"][key]["base"]["hasRead"] then
					if LoreK_DB["settings"]["collectSound"] ~= true then
						PlaySound(SOUNDKIT.TRADING_POST_UI_COMPLETED_ACTIVITY_TOAST, "SFX", true);
						PlaySound(SOUNDKIT.CONTENT_TRACKING_ITEM_ACQUIRED_TOAST, "SFX", true);
					end
					LoreK_DB["text"][key]["base"]["hasRead"] = true;
				end
			end
		end

		activeContext = nil;
		LK["LoreKGUI"].PopulateList();
	end
end


Lorekeeper.Initialize:RegisterEvent("ADDON_LOADED");
Lorekeeper.Initialize:RegisterEvent("ITEM_TEXT_BEGIN");
Lorekeeper.Initialize:RegisterEvent("ITEM_TEXT_READY");
Lorekeeper.Initialize:RegisterEvent("ITEM_TEXT_CLOSED");
Lorekeeper.Initialize:SetScript("OnEvent", Lorekeeper.Initialize.Events);


--------------------------------------------------------------------------
--------------------------------------------------------------------------
 -- Quest Item Collector
--------------------------------------------------------------------------
--------------------------------------------------------------------------

local LJ = CreateFrame("Frame");
LJ:RegisterEvent("CHAT_MSG_LOOT");

function LJ:OnEvent(event, arg1)
	if event == "CHAT_MSG_LOOT" then
		local itemID = arg1:match("item:(%d+):");
		if not itemID then return end -- Blizzard, why do you loot spells when you gain anima powers?
		itemID = tonumber(itemID);
		if select(7, C_Item.GetItemInfoInstant(itemID)) then
			local itemIDQ, itemType, itemSubType, itemEquipLoc, icon, classID, subClassID = C_Item.GetItemInfoInstant(itemID);
			-- Check if subClassID is valid (not nil)
			if not subClassID then
				-- It's not a valid item, might be a spell or something else, handle accordingly
				return -- Exit the function or handle the spell case as needed
			end

			-- If subClassID is valid, proceed with the rest of your code
			local itemType, itemSubType, _, _, _, _, classID, subclassID = select(6, C_Item.GetItemInfo(itemID));


			if classID == 12 then -- quest item detected
				if not LoreK_DB["questItems"] then
					LoreK_DB["questItems"] = {};
				end
				if not LoreK_DB["questItems"][itemID] then
					LoreK_DB["questItems"][itemID] = {
						isQuestItem = true,
						isDiscovered = true,
					};
					if LoreK_DB.settings.debugAdvanced then
						Print("Quest item stored: " .. itemID)
					end
				end
			end
		end
	end
end

LJ:SetScript("OnEvent", LJ.OnEvent)


--------------------------------------------------------------------------
--------------------------------------------------------------------------
 -- Minimap & Addon Comparment Frame
--------------------------------------------------------------------------
--------------------------------------------------------------------------


function Lorekeeper_OnAddonCompartmentClick(addonName, buttonName, menuButtonFrame)
	if LK["LoreKGUI"]:IsShown() then
		LK["LoreKGUI"]:Hide();
	else
		LK["LoreKGUI"]:Show();
	end
end

function Lorekeeper_OnAddonCompartmentEnter(addonName, menuButtonFrame)
	local tooltipData = {
		[1] = "|cFFFFF569"..LK["Lorekeeper"].."|r",
		[2] = "|cFFFFFFFF"..LK["LoreKeeperMinMap"].."|r",
	};
	local concatenatedString
	for k, v in ipairs(tooltipData) do
		if concatenatedString == nil then
			concatenatedString = v;
		else
			concatenatedString = concatenatedString .. "\n".. v;
		end
	end
	GameTooltip:SetOwner(menuButtonFrame, "ANCHOR_LEFT");
	GameTooltip:AddLine(concatenatedString, 1, 1, 1);
	GameTooltip:Show();
end

function Lorekeeper_OnAddonCompartmentLeave(addonName, menuButtonFrame)
	GameTooltip:Hide();
end

local addon = LibStub("AceAddon-3.0"):NewAddon("Lorekeeper");
local LoreK_DB = LibStub("LibDataBroker-1.1"):NewDataObject("Lorekeeper", {
	type = "data source",
	text = LK["Lorekeeper"],
	icon = "Interface\\Icons\\inv_misc_book_16",
	OnClick = function()
		if LK["LoreKGUI"]:IsShown() then
			LK["LoreKGUI"]:Hide();
		else
			LK["LoreKGUI"]:Show();
		end
	end, 
	OnTooltipShow = function(tt)
		tt:SetText("|cFFFFF569"..LK["Lorekeeper"].."|r")
		tt:AddLine("|cFFFFFFFF"..LK["LoreKeeperMinMap"].."|r");
	end,
})  
local icon = LibStub("LibDBIcon-1.0");

function addon:OnInitialize()
	self.db = LibStub("AceDB-3.0"):New("LoreK_DB", {
		profile = {
			minimap = {
				hide = false,
			},
		},
	})
	icon:Register("Lorekeeper", LoreK_DB, self.db.profile.minimap);
end

