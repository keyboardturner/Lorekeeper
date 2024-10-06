-- The purpose of this addon is so that the savedvariables of gathered mail items from the Lorekeeper addon are kept separate, and therefore private.
-- A user who wishes to upload their Lorekeeper data won't need to remove their mails from the upload.

--[[
LoreKMail_DB["mail"] = {
	[senderName] = {
		"text 1",
		"text 2",
		"text 3",
	}
};
]]


if not C_AddOns.IsAddOnLoaded("Lorekeeper") then
	return;
end

local function IsNameWithoutRealm(nameRealm)
	if not nameRealm then return end
	if string.find(nameRealm, "-") then
		return false -- The string contains a realm
	else
		return true -- The string is only a name
	end
end

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


local allData = {}

local LoreKGUI = Lorekeeper_API.LK.LoreKGUI

local PH_PLAYER_NAME = "$PLAYER_NAME$";
local PH_PLAYER_CLASS = "$PLAYER_CLASS$";

local function ReverseNameAndClass(pageText)
	local name = UnitName("player");
	local class = UnitClass("player");
	pageText = pageText:gsub("%$PLAYER_NAME%$", name);
	pageText = pageText:gsub("%$PLAYER_CLASS%$", class);
	return pageText;
end

function Lorekeeper_API.MailDetected(activeContext)
	if not activeContext then
		return;
	end
	local creator = activeContext.creator;
	local realmCurrent = GetNormalizedRealmName();
	local playerGUID = activeContext.playerGUID;
	local NameFromGUID
	local RealmFromGUID
	if playerGUID then
		NameFromGUID = select(6,GetPlayerInfoByGUID(playerGUID));
		RealmFromGUID = select(7,GetPlayerInfoByGUID(playerGUID));
	end

	if RealmFromGUID == "" or RealmFromGUID == nil or not RealmFromGUID then -- Realm GUID is gone, do not use.
		if IsNameWithoutRealm(creator) then
			creator = creator.."-"..realmCurrent;
		end
	else
		if IsNameWithoutRealm(creator) then
			creator = creator.."-"..RealmFromGUID; -- this *might* handle connected realms?
		end
	end
	if creator == "-"..realmCurrent or creator == nil then
		creator = MISCELLANEOUS;
	end
	local text = activeContext.text[1];
	local isDuplicateFound;
	if not LoreKMail_DB then
		LoreKMail_DB = {
			["mail"] = {};
			["custom"] = {};
		};
	end

	if LoreKMail_DB["mail"][creator] and LoreKMail_DB["mail"][creator]["text"] then
		for k, v in ipairs(LoreKMail_DB["mail"][creator]["text"]) do
			if v == text then
				isDuplicateFound = true;
				if LoreK_DB["settings"]["debugAdvanced"] then
					Print("Duplicate mail found, no action taken.");
				end
				return;
			end
		end
		if not isDuplicateFound then
			table.insert(LoreKMail_DB["mail"][creator]["text"], text);
			if LoreK_DB["settings"]["debugAdvanced"] then
				Print("No duplicate found, adding entry under creator name: " .. creator);
			end
		end
	else
		LoreKMail_DB["mail"][creator] = {
			["nameRealm"] = creator,
			["text"] = {text},
		};
		if LoreK_DB["settings"]["debugAdvanced"] then
			Print("Mail found! Saving entry under creator name: " .. creator);
		end
	end
	LoreKGUI.PopulateMailList();
end

local function moveFrameXY(frame, point, relativePoint, newxOfs, newyOfs)
	local point_, relativeTo, relativePoint_, xOfs, yOfs = frame:GetPoint();
	point, relativeTo, relativePoint, xOfs, yOfs = point, relativeTo, relativePoint, xOfs+newxOfs, yOfs+newyOfs;
	frame:SetPoint(point, relativeTo, relativePoint, xOfs, yOfs);
end

local LK = Lorekeeper_API.LK

LoreKGUI.MailDisplayFrame = CreateFrame("Frame", "LoreKMailDisplayFrame", LoreKGUI.MailPanel, "InsetFrameTemplate3");
local MailDisplayFrame = LoreKGUI.MailDisplayFrame;
MailDisplayFrame:SetWidth(210);
MailDisplayFrame:SetPoint("TOPLEFT", LoreKGUI.MailPanel, "TOPLEFT", 0, -65);
MailDisplayFrame:SetPoint("BOTTOMLEFT", LoreKGUI.MailPanel, "BOTTOMLEFT", 0, 30);

LoreKGUI.MailTextDisplayFrame = CreateFrame("Frame", "LoreKMailTextDisplayFrame", LoreKGUI.MailPanel, "InsetFrameTemplate4");
local MailTextDisplayFrame = LoreKGUI.MailTextDisplayFrame;
MailTextDisplayFrame:SetPoint("TOPLEFT", MailDisplayFrame, "TOPRIGHT", 19, 0);
MailTextDisplayFrame:SetPoint("BOTTOMRIGHT", LoreKGUI.MailPanel, "BOTTOMRIGHT",-20,30);
MailTextDisplayFrame.bg = MailTextDisplayFrame:CreateTexture(nil, "BACKGROUND");
MailTextDisplayFrame.bg:SetPoint("TOPLEFT", MailTextDisplayFrame, "TOPLEFT", 3, -40);
MailTextDisplayFrame.bg:SetPoint("BOTTOMRIGHT", MailTextDisplayFrame, "BOTTOMRIGHT", -4, 5);
MailTextDisplayFrame.bg:SetAtlas("QuestBG-Parchment");

MailTextDisplayFrame.TextScrollFrame = CreateFrame("ScrollFrame", "LoreKMailTextScrollFrame", MailTextDisplayFrame, "ScrollFrameTemplate");
local TextScrollFrame = MailTextDisplayFrame.TextScrollFrame;
TextScrollFrame:SetPoint("TOPLEFT", MailTextDisplayFrame, "TOPLEFT", 25,-55);
TextScrollFrame:SetPoint("BOTTOMRIGHT", MailTextDisplayFrame, "BOTTOMRIGHT", -2,3);
moveFrameXY(TextScrollFrame.ScrollBar, "TOPLEFT", "TOPRIGHT", 0, 45);
moveFrameXY(TextScrollFrame.ScrollBar, "BOTTOMLEFT", "BOTTOMRIGHT", 0, -47);

MailTextDisplayFrame.TextScrollChild = CreateFrame("Frame", "LoreKMailTextScrollChild", TextScrollFrame);
local TextScrollChild = MailTextDisplayFrame.TextScrollChild;
TextScrollChild:SetSize(TextScrollFrame:GetWidth()-10, 1); -- Height will adjust based on content
TextScrollFrame:SetScrollChild(TextScrollChild);

MailTextDisplayFrame.TitleBackdrop = CreateFrame("Frame", nil, MailTextDisplayFrame);
local TitleBackdrop = MailTextDisplayFrame.TitleBackdrop;
TitleBackdrop:SetPoint("BOTTOM", TextScrollFrame, "TOP", -11.5,3);
TitleBackdrop:SetWidth(TextScrollFrame:GetWidth()+20);
TitleBackdrop:SetHeight(48);
TitleBackdrop.tex = TitleBackdrop:CreateTexture()
TitleBackdrop.tex:SetAllPoints(true)
TitleBackdrop.tex:SetAtlas("StoryHeader-BG")

TextScrollChild.textTitle = TitleBackdrop:CreateFontString(nil, "OVERLAY");
TextScrollChild.textTitle:SetFontObject("GameFontHighlightLarge"); -- make into option later
TextScrollChild.textTitle:SetPoint("TOPLEFT", TitleBackdrop, "TOPLEFT", 7,-8);
TextScrollChild.textTitle:SetPoint("BOTTOMRIGHT", TitleBackdrop, "BOTTOMRIGHT", -7, 5);
TextScrollChild.textTitle:SetJustifyH("CENTER");
TextScrollChild.textTitle:SetJustifyV("MIDDLE");

-- The Text Body on the right
TextScrollChild.textHTML = CreateFrame("SimpleHTML", nil, MailTextDisplayFrame.TextScrollChild);
TextScrollChild.textHTML:SetPoint("TOP", TextScrollChild, "TOP", 0, 0);
TextScrollChild.textHTML:SetPoint("BOTTOM", TextScrollChild, "BOTTOM", 0, 0);
TextScrollChild.textHTML:SetWidth(TextScrollChild:GetWidth()-50);

-- Set the font for different HTML tags
TextScrollChild.textHTML:SetFont("h1", ITEM_TEXT_FONTS["default"]["H1"]:GetFont());
TextScrollChild.textHTML:SetFont("h2", ITEM_TEXT_FONTS["default"]["H2"]:GetFont());
TextScrollChild.textHTML:SetFont("h3", ITEM_TEXT_FONTS["default"]["H3"]:GetFont());
TextScrollChild.textHTML:SetFont("p", ITEM_TEXT_FONTS["default"]["P"]:GetFont());
TextScrollChild.textHTML:SetJustifyH("p","LEFT");

MailTextDisplayFrame.PrevPageButton = CreateFrame("Button", nil, MailTextDisplayFrame, "PagingControlsPrevPageButtonTemplate");
MailTextDisplayFrame.NextPageButton = CreateFrame("Button", nil, MailTextDisplayFrame, "PagingControlsNextPageButtonTemplate");
MailTextDisplayFrame.PrevPageButton:SetPoint("TOP", MailTextDisplayFrame, "BOTTOM", -12,2);
MailTextDisplayFrame.NextPageButton:SetPoint("TOP", MailTextDisplayFrame, "BOTTOM", 28,2);
MailTextDisplayFrame.PageNumber = MailTextDisplayFrame.PrevPageButton:CreateFontString(nil, "OVERLAY");
MailTextDisplayFrame.PageNumber:SetFontObject("GameFontHighlightLarge") -- make into option later
MailTextDisplayFrame.PageNumber:SetPoint("RIGHT", MailTextDisplayFrame.PrevPageButton, "LEFT", -15, 0);
MailTextDisplayFrame.PageNumber:SetJustifyH("RIGHT");
MailTextDisplayFrame.PrevPageButton:Disable();
MailTextDisplayFrame.NextPageButton:Disable();
MailTextDisplayFrame.PrevPageButton:Hide();
MailTextDisplayFrame.NextPageButton:Hide();
MailTextDisplayFrame.Type_ID = MailTextDisplayFrame:CreateFontString(nil, "OVERLAY");
MailTextDisplayFrame.Type_ID:SetFontObject("GameFontHighlightLarge"); -- make into option later
MailTextDisplayFrame.Type_ID:SetPoint("LEFT", MailTextDisplayFrame.NextPageButton, "RIGHT", 15, 0);

--------------------------------------------------------------------------
--------------------------------------------------------------------------

LoreKGUI.MailScrollBox = CreateFrame("Frame", nil, MailDisplayFrame, "WowScrollBoxList");
local MailScrollBox = LoreKGUI.MailScrollBox;
MailScrollBox:SetPoint("TOPLEFT", MailDisplayFrame, "TOPLEFT", 2, -25);
MailScrollBox:SetPoint("BOTTOMRIGHT", MailDisplayFrame, "BOTTOMRIGHT", -2, 3);

MailScrollBox.MailScrollBar = CreateFrame("EventFrame", nil, MailDisplayFrame, "MinimalScrollBar");
local MailScrollBar = MailScrollBox.MailScrollBar;
MailScrollBar:SetPoint("TOPLEFT", MailScrollBox, "TOPRIGHT", 7, 20);
MailScrollBar:SetPoint("BOTTOMLEFT", MailScrollBox, "BOTTOMRIGHT", 7, 0);

local MailDataProvider = CreateDataProvider();
local MailScrollView = CreateScrollBoxListLinearView();
MailScrollView:SetDataProvider(MailDataProvider);

ScrollUtil.InitScrollBoxListWithScrollBar(MailScrollBox, MailScrollBar, MailScrollView);

-- The 'button' argument is the frame that our data will inhabit in our list
-- The 'data' argument will be the data table mentioned above
local function MailInitializer(button, data)
	local mailID = data.id;
	local title = data.nameRealm;
	if not title then
		return
	end
	local GUIDType = select(1, strsplit("-", mailID));
	local entryID = select(2, strsplit("-", mailID));
	local GObjectEntryID;
	local ItemEntryID;
	local icon_Q;
	local GameObjTT = CHANNEL_CATEGORY_WORLD .. " " .. AUCTION_HOUSE_HEADER_ITEM .."\n|cnGREEN_FONT_COLOR:"..ITEM_CAN_BE_READ.."|r";
	local isFavorite = LoreKMail_DB["mail"][mailID] and LoreKMail_DB["mail"][mailID]["isFavorite"];
	if GUIDType == "Item" then
		ItemEntryID = tonumber(entryID);
	else
		icon_Q = "Interface/ICONS/inv_letter_01";
	end

	if ItemEntryID then
		icon_Q = select(5,C_Item.GetItemInfoInstant(ItemEntryID));
	else
		icon_Q = "Interface/ICONS/inv_letter_01" or "Interface/AddOns/Lorekeeper/Assets/Textures/TEMP";
	end
	--button:SetWidth(168);
	--button:SetPoint(moveFrameXY(22,0));
	button.tex = button.tex or button:CreateTexture(nil, "OVERLAY", nil, 0);
	button.tex:SetPoint("TOPLEFT", button, "TOPLEFT", button:GetHeight()+2,0);
	button.tex:SetPoint("BOTTOMRIGHT", button, "BOTTOMRIGHT", 0,0);
	button.tex:SetAtlas("PetList-ButtonBackground");
	button.icon = button.icon or CreateFrame("Frame", nil, button);
	button.icon:SetPoint("TOPRIGHT", button.tex, "TOPLEFT", -1,0);
	button.icon:SetPoint("BOTTOMRIGHT", button.tex, "BOTTOMLEFT", -1,0);
	button.icon:SetWidth(button:GetHeight());
	button.icon.tex = button.icon.tex or button.icon:CreateTexture(nil, "OVERLAY", nil, 0);
	button.icon.tex:SetTexture(icon_Q);
	button.icon.tex:SetAllPoints(button.icon);
	button.icon.favoritesIcon = button.icon.favoritesIcon or button.icon:CreateTexture(nil, "OVERLAY", nil, 2);
	button.icon.favoritesIcon:SetPoint("TOPLEFT", button.icon, "TOPLEFT", -5,2);
	button.icon.favoritesIcon:SetPoint("BOTTOMRIGHT", button.icon, "BOTTOMRIGHT", -20,17);
	button.icon.favoritesIcon:SetAtlas("PetJournal-FavoritesIcon");
	if isFavorite then
		button.icon.favoritesIcon:Show();
	else
		button.icon.favoritesIcon:Hide();
	end
	button.texHL = button.texHL or button:CreateTexture(nil, "OVERLAY", nil, 3);
	button.texHL:SetAllPoints(button.tex);
	button.texHL:SetAtlas("PetList-ButtonHighlight");
	button.texHL:Hide();
	button.texSel = button.texSel or button:CreateTexture(nil, "OVERLAY", nil, 3);
	button.texSel:SetAllPoints(button.tex);
	button.texSel:SetAtlas("PetList-ButtonSelect");
	button.textFont = button.textFont or button:CreateFontString(nil, "OVERLAY");
	button.textFont:SetFontObject("GameTooltipTextSmall");
	button.textFont:SetPoint("TOPLEFT", button.tex, "TOPLEFT", 5,-3);
	button.textFont:SetPoint("BOTTOMRIGHT", button.tex, "BOTTOMRIGHT", -5,2);
	button.textFont:SetJustifyH("LEFT");
	button.textFont:SetJustifyV("TOP");
	button.textFont:SetText(title);
	button.textFont:SetTextColor(1, 1, 1, 1);
	button:SetScript("OnEnter", function()
		button.texHL:Show();
	end);
	button:SetScript("OnLeave", function()
		button.texHL:Hide();
	end);
	button.icon:SetScript("OnEnter", function()
		if ItemEntryID then
			GameTooltip:SetOwner(button.icon, "ANCHOR_TOPLEFT");
			GameTooltip:SetItemByID(ItemEntryID);
			GameTooltip:Show();
		end
		if GUIDType == "GameObject" then
			GameTooltip:SetOwner(button.icon, "ANCHOR_TOPLEFT");
			GameTooltip:AddLine(title);
			GameTooltip:AddLine(GameObjTT, 1, 1, 1);
			GameTooltip:Show();
		end
	end);
	button.icon:SetScript("OnLeave", function()
		GameTooltip:Hide();
	end);
	button:SetScript("OnClick", function(self, BINGLEBUTTON, down)
		if BINGLEBUTTON == "RightButton" then
			if down == false then
				MenuUtil.CreateContextMenu(button, function(ownerRegion, rootDescription)
					rootDescription:CreateTitle(title)
					if isFavorite then
						rootDescription:CreateButton(LK["UnsetFavorite"], function()
							LoreKMail_DB["mail"][mailID]["isFavorite"] = false;
							LoreKGUI.PopulateMailList();
							PlaySound(SOUNDKIT.UI_70_ARTIFACT_FORGE_APPEARANCE_LOCKED, "SFX");
						end)
					else
						rootDescription:CreateButton(LK["SetFavorite"], function()
							LoreKMail_DB["mail"][mailID]["isFavorite"] = true;
							LoreKGUI.PopulateMailList();
							PlaySound(SOUNDKIT.UI_70_ARTIFACT_FORGE_APPEARANCE_APPEARANCE_CHANGE, "SFX");
						end)
					end
					--[[ -- i don't want to set up filters right now :)
					if isManuallyHidden then
						rootDescription:CreateButton(LK["Show"], function()
							LoreKMail_DB["mail"][mailID]["isHidden"] = false;
							LoreKMainframe.PopulateList();
						end)
					else
						if LoreKMail_DB["mail"][mailID] and LoreKMail_DB["mail"][mailID] then
							rootDescription:CreateButton(LK["Hide"], function()
								LoreKMail_DB["mail"][mailID]["isHidden"] = true;
								LoreKMainframe.PopulateList();
							end)
						end
					end
					]]
				end)
			end
		else
			LoreKGUI.MailSelectionBehavior:Select(self);

			PlaySound(SOUNDKIT.UI_JOURNEYS_OPEN_LORE_BOOK, "SFX", true);
			--DeleteEntry:SetEnabled(true);
			--selectionBehavior:SelectElementData(self:GetData())

			local maxPages = 1;
			local pageNum = 1;
			local textTable = allData[mailID]["text"]--parseFunc('["text"][mailID]["text"]', mailID);
			local pageText = textTable[pageNum]
			local HTMLbody
			local textTitle = allData[mailID]["nameRealm"]; --parseFunc('["text"][mailID]["title"]', mailID);
			local isHTML = string.lower(ReverseNameAndClass(pageText)):find("<html>");
			local singlePage = true;

			if #allData[mailID]["text"] > 1 then
				maxPages = #allData[mailID]["text"];
				singlePage = false;
			end
			local material = allData[mailID]["material"] or "default"; --parseFunc('["text"][mailID]["material"]', mailID) or "default";
			local isHidden = LoreK_DB["settings"]["hideUnread"];
			local hasRead = true;

			if material == "ParchmentLarge" then
				TextScrollChild.textHTML:SetFont("h1", ITEM_TEXT_FONTS["ParchmentLarge"]["H1"]:GetFont());
				TextScrollChild.textHTML:SetFont("h2", ITEM_TEXT_FONTS["ParchmentLarge"]["H2"]:GetFont());
				TextScrollChild.textHTML:SetFont("h3", ITEM_TEXT_FONTS["ParchmentLarge"]["H3"]:GetFont());
				TextScrollChild.textHTML:SetFont("p", ITEM_TEXT_FONTS["ParchmentLarge"]["P"]:GetFont());
				TextScrollChild.textHTML:SetTextColor("h1", 0, 0, 0, 1);
				TextScrollChild.textHTML:SetTextColor("h2", 0, 0, 0, 1);
				TextScrollChild.textHTML:SetTextColor("h3", 0, 0, 0, 1);
				TextScrollChild.textHTML:SetTextColor("p", 0, 0, 0, 1);
				LoreKGUI.SetFontSizeP();
			else
				TextScrollChild.textHTML:SetFont("h1", ITEM_TEXT_FONTS["default"]["H1"]:GetFont());
				TextScrollChild.textHTML:SetFont("h2", ITEM_TEXT_FONTS["default"]["H2"]:GetFont());
				TextScrollChild.textHTML:SetFont("h3", ITEM_TEXT_FONTS["default"]["H3"]:GetFont());
				TextScrollChild.textHTML:SetFont("p", ITEM_TEXT_FONTS["default"]["P"]:GetFont());
				TextScrollChild.textHTML:SetTextColor("h1", 0, 0, 0, 1);
				TextScrollChild.textHTML:SetTextColor("h2", 0, 0, 0, 1);
				TextScrollChild.textHTML:SetTextColor("h3", 0, 0, 0, 1);
				TextScrollChild.textHTML:SetTextColor("p", 0, 0, 0, 1);
				LoreKGUI.SetFontSizeP();
			end

			MailTextDisplayFrame.PrevPageButton:Hide();
			MailTextDisplayFrame.NextPageButton:Hide();
			MailTextDisplayFrame.PrevPageButton:Disable();
			MailTextDisplayFrame.NextPageButton:Disable();
			MailTextDisplayFrame.PageNumber:SetText("");

			Lorekeeper_API.SetUpMailColorsAndTextures();

			if not singlePage then
				maxPages = #allData[mailID]["text"];
				local pageNumberText = string.format(PAGE_NUMBER_WITH_MAX, pageNum, maxPages);

				MailTextDisplayFrame.PrevPageButton:Show();
				MailTextDisplayFrame.NextPageButton:Show();
				MailTextDisplayFrame.PageNumber:SetText(pageNumberText);
				MailTextDisplayFrame.NextPageButton:Enable();
				MailTextDisplayFrame.PrevPageButton:SetScript("OnClick", function()
					if pageNum ~= 1 then
						pageNum = pageNum - 1;
					end
					if pageNum == 1 then
						MailTextDisplayFrame.PrevPageButton:Disable();
					end
					MailTextDisplayFrame.NextPageButton:Enable();
					PlaySound(SOUNDKIT.IG_ABILITY_PAGE_TURN, "SFX", false);

					local pageNumberText = string.format(PAGE_NUMBER_WITH_MAX, pageNum, maxPages);
					local textTable = allData[mailID]["text"];
					local pageText = textTable[pageNum]
					local textTitle = allData[mailID]["nameRealm"] or UNKNOWN;
					local isHTML = string.lower(ReverseNameAndClass(pageText)):find("<html>");
					local singlePage = allData[mailID]["singlePage"];
					if isHTML then
						HTMLbody = string.gsub(ReverseNameAndClass(pageText),"<BODY>","<BODY>".."<br />");
					end

					MailTextDisplayFrame.PageNumber:SetText(pageNumberText);
					TextScrollChild.textTitle:SetText(textTitle, 1, 1, 1, 1, true);
					if isHTML then
						TextScrollChild.textHTML:SetText(HTMLbody or ReverseNameAndClass(pageText), false);
					else
						TextScrollChild.textHTML:SetText("\n"..ReverseNameAndClass(pageText), false);
					end
				end)
				MailTextDisplayFrame.NextPageButton:SetScript("OnClick", function()
					if pageNum ~= maxPages then
						pageNum = pageNum + 1;
					end
					if pageNum == maxPages then
						MailTextDisplayFrame.NextPageButton:Disable();
					end
					MailTextDisplayFrame.PrevPageButton:Enable();
					PlaySound(SOUNDKIT.IG_ABILITY_PAGE_TURN, "SFX", false);

					local pageNumberText = string.format(PAGE_NUMBER_WITH_MAX, pageNum, maxPages);
					local textTable = allData[mailID]["text"];
					local pageText = textTable[pageNum]
					local textTitle = allData[mailID]["nameRealm"];
					local isHTML = string.lower(ReverseNameAndClass(pageText)):find("<html>");
					local singlePage = allData[mailID]["singlePage"];
					if isHTML then
						HTMLbody = string.gsub(ReverseNameAndClass(textTable[pageNum]),"<BODY>","<BODY>".."<br />");
					end

					MailTextDisplayFrame.PageNumber:SetText(pageNumberText);
					TextScrollChild.textTitle:SetText(textTitle, 1, 1, 1, 1, true);
					if isHTML then
						TextScrollChild.textHTML:SetText(HTMLbody or ReverseNameAndClass(textTable[pageNum]), false);
					else
						TextScrollChild.textHTML:SetText("\n"..ReverseNameAndClass(textTable[pageNum]), false);
					end
				end)
			else
				MailTextDisplayFrame.PrevPageButton:Hide();
				MailTextDisplayFrame.NextPageButton:Hide();
			end

			if isHidden and not hasRead then
				TextScrollChild.textHTML:Hide();
				MailTextDisplayFrame.PrevPageButton:Hide();
				MailTextDisplayFrame.NextPageButton:Hide();
			else
				TextScrollChild.textHTML:Show();
			end

			TextScrollChild.textTitle:SetText(textTitle, 1, 1, 1, 1, true);
			if LoreK_DB.settings.debugAdvanced then
				MailTextDisplayFrame.Type_ID:SetText(mailID, 1, 1, 1, 1, true);
			else
				MailTextDisplayFrame.Type_ID:SetText("", 1, 1, 1, 1, true);
			end
			if isHTML then
				HTMLbody = string.gsub(ReverseNameAndClass(textTable[pageNum]),"<BODY>","<BODY>".."<br />")
			end
			if isHTML then
				TextScrollChild.textHTML:SetText(HTMLbody or ReverseNameAndClass(textTable[pageNum]), false);
			else
				TextScrollChild.textHTML:SetText("\n"..ReverseNameAndClass(textTable[pageNum]), false);
			end
		end
	end);
	button:RegisterForClicks("AnyUp", "AnyDown");
end
MailScrollView:SetElementExtent(36);

function LoreKGUI:OnMailSelectionChanged(data, isSelected)
	local f = self.MailScrollBox:FindFrame(data);
	if not f then
		return;
	end

	f.texSel:SetShown(isSelected);
end

function LoreKGUI:OnFrameInitialized(frame, data)
	local isSelected = self.SelectionBehavior:IsElementDataSelected(data);
	frame.texSel:SetShown(isSelected);
end

LoreKGUI.MailSelectionBehavior = ScrollUtil.AddSelectionBehavior(MailScrollBox, SelectionBehaviorFlags.Intrusive);
LoreKGUI.MailSelectionBehavior:RegisterCallback("OnSelectionChanged", LoreKGUI.OnMailSelectionChanged, LoreKGUI);

ScrollUtil.AddInitializedFrameCallback(MailScrollBox, LoreKGUI.OnFrameInitialized, LoreKGUI);

-- This function will clear the ScrollView and repopulate it with the given search results
local function PopulateNewDataProvider(newData)
	MailDataProvider = CreateDataProvider(newData);
	MailScrollView:SetDataProvider(MailDataProvider);
end

function LoreKGUI.sortMailFunc(a, b)
	--print("a",a.base.title, a.base.isFavorite)
	if (not not a.isFavorite) ~= (not not b.isFavorite) then
		return a.isFavorite;
	elseif a.nameRealm and b.nameRealm then
		return strcmputf8i(a.nameRealm, b.nameRealm) < 0;
	end
end

function LoreKGUI.PopulateMailList()
	if not LoreKMail_DB or not LoreKMail_DB["mail"] then
		return;
	end

	allData = CopyTable(LoreKMail_DB["mail"]);
	for id, data in pairs(LoreKMail_DB["mail"]) do
		if allData[id] then
			Mixin(allData[id], data);
		else
			allData[id] = CopyTable(data);
		end
	end

	MailScrollView:SetElementInitializer("Button", MailInitializer);

	local proxy = {};
	for id, data in pairs(allData) do
		data.id = id;
		tinsert(proxy, data);
	end

	PopulateNewDataProvider(proxy);
	LoreKGUI.OnMailTextChanged(LoreKGUI.MailSearchBox);
end


-- Search box
LoreKGUI.MailSearchBox = CreateFrame("EditBox", "LoreKMailSearchBox", MailDisplayFrame, "SearchBoxTemplate");
LoreKGUI.MailSearchBox:SetSize(190, 20);
LoreKGUI.MailSearchBox:SetPoint("TOPLEFT", MailDisplayFrame, "TOPLEFT", 10, -5);
LoreKGUI.MailSearchBox:SetAutoFocus(false);

local function escapePattern(text)
	-- Escape all special characters in the user's input
	return text:gsub("([%(%)%.%%%+%-%*%?%[%]%^%$])", "%%%1")
end

function LoreKGUI.OnMailTextChanged(editBox)
	local query = editBox:GetText();
	query = escapePattern(query)

	local matches = {};

	for name, element in pairs(allData) do
		local match = false;

		if element and string.find(name:lower(), query:lower()) then
			match = true;
		end

		-- Add to matches only if exactly one filter condition is met
		if match then
			tinsert(matches, element);
		end
	end

	table.sort(matches, LoreKGUI.sortMailFunc);
	PopulateNewDataProvider(matches);
end

LoreKGUI.MailSearchBox:HookScript("OnTextChanged", LoreKGUI.OnMailTextChanged);

function Lorekeeper_API.SetUpMailColorsAndTextures()
	TitleBackdrop.tex:SetVertexColor(ColorMixin.GetRGBA(LoreK_DB["settings"]["colors"]["title"]));
	MailTextDisplayFrame.bg:SetVertexColor(ColorMixin.GetRGBA(LoreK_DB["settings"]["colors"]["parchment"]));

	TextScrollChild.textTitle:SetTextColor(ColorMixin.GetRGBA(LoreK_DB["settings"]["colors"]["titleText"]));

	TextScrollChild.textHTML:SetTextColor("h1", ColorMixin.GetRGBA(LoreK_DB["settings"]["colors"]["h1"]));
	TextScrollChild.textHTML:SetTextColor("h2", ColorMixin.GetRGBA(LoreK_DB["settings"]["colors"]["h2"]));
	TextScrollChild.textHTML:SetTextColor("h3", ColorMixin.GetRGBA(LoreK_DB["settings"]["colors"]["h3"]));
	TextScrollChild.textHTML:SetTextColor("p", ColorMixin.GetRGBA(LoreK_DB["settings"]["colors"]["p"]));

	if LoreK_DB["settings"]["overrideMaterials"] and LoreK_DB["settings"]["material"] then
		MailTextDisplayFrame.bg:SetAtlas(LoreK_DB["settings"]["material"]); -- actual frame
	else
		MailTextDisplayFrame.bg:SetAtlas("QuestBG-Parchment"); -- actual frame
	end

	local fontFile, height, flags = ITEM_TEXT_FONTS["ParchmentLarge"]["P"]:GetFont()

	TextScrollChild.textHTML:SetFont("p", fontFile, LoreK_DB["settings"]["fontSizeP"]["height"] or 13, flags);
end

local function OnAddonLoad(self,event,arg1)
	if event == "ADDON_LOADED" and arg1 == "Lorekeeper_Mail" then
		LoreKGUI.PopulateMailList()
	end
end

local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", OnAddonLoad)

--[[ -- the mailbox seemingly explodes pretty bad from this, likely something to do with throttling after querying 30+ mail
local function ProcessMailbox()
	local numItems, totalItems = GetInboxNumItems()
	for i = 1, numItems do
		if CanComplainInboxItem(i) then
			local sender = select(3,GetInboxHeaderInfo(i))
			local body = GetInboxText(i)
			local activeContext = {};
			activeContext.creator = sender;
			activeContext.text = {
				[1] = body;
			};
			Lorekeeper_API.MailDetected(activeContext, true);
		end
	end
end

local HandleMailbox = CreateFrame("Frame")
HandleMailbox:RegisterEvent("MAIL_INBOX_UPDATE")

MailFrame:SetScript("OnEvent", function(self, event, ...)
	if event == "MAIL_INBOX_UPDATE" then
		ProcessMailbox()
	end
end)

]]

--------------------------------------------------------------------------
--------------------------------------------------------------------------
 -- Mail Panel
--------------------------------------------------------------------------
--------------------------------------------------------------------------
