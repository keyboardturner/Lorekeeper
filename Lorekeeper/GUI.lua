local _, LK = ...

local function SetupFade(self)
	local minAlpha = 0.5;
	local maxAlpha = 1.0;
	local duration = 0.5;
	local predicate = function() return not self:IsMouseOver(); end;
	PlayerMovementFrameFader.AddDeferredFrame(self, minAlpha, maxAlpha, duration, predicate);
end

local function CleanupFade(self)
	PlayerMovementFrameFader.RemoveFrame(self);
end

local function moveFrameXY(frame, point, relativePoint, newxOfs, newyOfs)
	local point_, relativeTo, relativePoint_, xOfs, yOfs = frame:GetPoint();
	point, relativeTo, relativePoint, xOfs, yOfs = point, relativeTo, relativePoint, xOfs+newxOfs, yOfs+newyOfs;
	frame:SetPoint(point, relativeTo, relativePoint, xOfs, yOfs);
end

-- Sort items in a list
local filteredItems = {};

local allData = {};

local function insertItems(dataSource, searchText)
	for itemID, itemData in pairs(dataSource) do
		if dataSource[itemID]["base"] and dataSource[itemID]["base"]["title"] then
			local title = dataSource[itemID]["base"]["title"];
			if title:lower():find(searchText) then
				local isFavorite = dataSource[itemID]["base"]["isFavorite"] or false;
				table.insert(filteredItems, {itemID = itemID, title = title, isFavorite = isFavorite});
			end
		end
	end
end

local function parseFunc(path, itemID)
	-- Function to get nested table value based on a path
	local function getNestedValue(t, path, itemID)
		local result = t;
		for part in path:gmatch("%[(.-)%]") do
			part = part:match('^"(.-)"$') or tonumber(part) or part;
			result = result[part];
			if not result then return nil end;
		end
		return result;
	end

	-- Attempt to find the data in LK["LocalData"]
	local localData = getNestedValue(LK["LocalData"], path:gsub("itemID", "\""..itemID.."\""));

	if localData then
		return localData;
	end

	-- If not found in LK["LocalData"], attempt to find it in LoreK_DB
	local savedData = getNestedValue(LoreK_DB, path:gsub("itemID", "\""..itemID.."\""));

	if savedData then
		return savedData;
	end

	-- If not found in either table, return nil or an appropriate message
	return nil -- or return "Data not found" if you prefer a message
end



--------------------------------------------------------------------------

-- Create the main frame
local LoreKGUI = CreateFrame("Frame", "LoreKMainframe", UIParent, "PortraitFrameTemplateMinimizable");
tinsert(UISpecialFrames, LoreKGUI:GetName());
LK.LoreKGUI = LoreKGUI;
LoreKGUI:SetPortraitTextureRaw("Interface\\ICONS\\inv_misc_book_16");
LoreKGUI:SetSize(703, 606);
LoreKGUI:SetPoint("CENTER", UIParent, "CENTER");
LoreKGUI:SetClampedToScreen(true);
LoreKGUI:SetMovable(true);
LoreKGUI:EnableMouse(true);
LoreKGUI:RegisterForDrag("LeftButton");
LoreKGUI:SetScript("OnDragStart", LoreKGUI.StartMoving);
LoreKGUI:SetScript("OnDragStop", LoreKGUI.StopMovingOrSizing);
LoreKGUI:SetTitle(LK["Lorekeeper"]);

LoreKGUI:Hide();


StaticPopupDialogs["LOREK_DELETE_ENTRIES"] = {
	text = "Are you sure you want to delete all versions for this entry? This cannot be undone.",
	button1 = YES,
	button2 = NO,
	OnAccept = function()
		if UnitAffectingCombat("player") == true then
			print(ERR_NOT_IN_COMBAT);
			return
		else
			print("get wrecked");
		end
 	end,
	timeout = 0,
	whileDead = false,
	hideOnEscape = true,
};

--------------------------------------------------------------------------

-- Left Side
LoreKGUI.ItemDisplayFrame = CreateFrame("Frame", "LoreKDisplayFrame", LoreKGUI, "InsetFrameTemplate3");
local ItemDisplayFrame = LoreKGUI.ItemDisplayFrame;
ItemDisplayFrame:SetWidth(210);
ItemDisplayFrame:SetPoint("TOPLEFT", LoreKGUI.TopTileStreaks, "BOTTOMLEFT", 0, 0);
ItemDisplayFrame:SetPoint("BOTTOMLEFT", LoreKGUI, "BOTTOMLEFT", 5, 30);

-- Scroll frame for Items (Left)
LoreKGUI.ItemScrollFrame = CreateFrame("ScrollFrame", "LoreKItemScrollFrame", LoreKGUI, "ScrollFrameTemplate");
local ItemScrollFrame = LoreKGUI.ItemScrollFrame;
--ItemScrollFrame:SetWidth(207)
ItemScrollFrame:SetPoint("TOPLEFT", ItemDisplayFrame, "TOPLEFT", 2, -25);
ItemScrollFrame:SetPoint("BOTTOMRIGHT", ItemDisplayFrame, "BOTTOMRIGHT", 0, 3);
moveFrameXY(ItemScrollFrame.ScrollBar, "TOPLEFT", "TOPRIGHT", 0, 20);
moveFrameXY(ItemScrollFrame.ScrollBar, "BOTTOMLEFT", "BOTTOMRIGHT", 0, -23);

LoreKGUI.ItemScrollChild = CreateFrame("Frame", "LoreKItemScrollChild", ItemScrollFrame);
local ItemScrollChild = LoreKGUI.ItemScrollChild;
ItemScrollChild:SetSize(ItemScrollFrame:GetWidth()-8, 1); -- Height will adjust based on content
ItemScrollFrame:SetScrollChild(ItemScrollChild);
ItemScrollChild:SetPoint("TOP", ItemScrollFrame, "TOP", 0, 0);

ItemScrollFrame:Hide();

--------------------------------------------------------------------------

-- Right Side
LoreKGUI.TextDisplayFrame = CreateFrame("Frame", "LoreKTextDisplayFrame", LoreKGUI, "InsetFrameTemplate4");
local TextDisplayFrame = LoreKGUI.TextDisplayFrame;
TextDisplayFrame:SetPoint("TOPLEFT", LoreKGUI.TopTileStreaks, "BOTTOMLEFT", 230, 0);
TextDisplayFrame:SetPoint("BOTTOMRIGHT", LoreKGUI, "BOTTOMRIGHT",-20,30);
TextDisplayFrame.bg = TextDisplayFrame:CreateTexture(nil, "BACKGROUND");
TextDisplayFrame.bg:SetPoint("TOPLEFT", TextDisplayFrame, "TOPLEFT", 3, -50);
TextDisplayFrame.bg:SetPoint("BOTTOMRIGHT", TextDisplayFrame, "BOTTOMRIGHT", -4, 5);
TextDisplayFrame.bg:SetAtlas("spellbook-background-evergreen-right")
--TextDisplayFrame.bg:SetColorTexture(0.1, 0.1, 0.1, 0.8);

-- Scroll frame for Text Preview (Right)
TextDisplayFrame.TextScrollFrame = CreateFrame("ScrollFrame", "LoreKTextScrollFrame", TextDisplayFrame, "ScrollFrameTemplate");
local TextScrollFrame = TextDisplayFrame.TextScrollFrame;
TextScrollFrame:SetPoint("TOPLEFT", TextDisplayFrame, "TOPLEFT", 25,-55);
TextScrollFrame:SetPoint("BOTTOMRIGHT", TextDisplayFrame, "BOTTOMRIGHT", -2,3);
moveFrameXY(TextScrollFrame.ScrollBar, "TOPLEFT", "TOPRIGHT", 0, 45);
moveFrameXY(TextScrollFrame.ScrollBar, "BOTTOMLEFT", "BOTTOMRIGHT", 0, -47);

TextDisplayFrame.TextScrollChild = CreateFrame("Frame", "LoreKTextScrollChild", TextScrollFrame);
local TextScrollChild = TextDisplayFrame.TextScrollChild;
TextScrollChild:SetSize(TextScrollFrame:GetWidth()-10, 1); -- Height will adjust based on content
TextScrollFrame:SetScrollChild(TextScrollChild);

--[[-- mess with later, this isn't the proper way to hide scrollbar when nothing can be scrolled
local anchorsWithScrollBar = {
	CreateAnchor("TOPLEFT", 8, -20);
	CreateAnchor("BOTTOMRIGHT", TextDisplayFrame.TextScrollFrame.ScrollBar, -8, 4),
};

local anchorsWithoutScrollBar = {
	anchorsWithScrollBar[1],
	CreateAnchor("BOTTOMRIGHT", -4, 4);
};

ScrollUtil.InitScrollBoxListWithScrollBar(TextScrollFrame, TextScrollFrame.ScrollBar, TextScrollChild)
ScrollUtil.AddManagedScrollBarVisibilityBehavior(TextScrollFrame, TextScrollFrame.ScrollBar, anchorsWithScrollBar, anchorsWithoutScrollBar);
]]

--------------------------------------------------------------------------

TextDisplayFrame.TitleBackdrop = CreateFrame("Frame", nil, TextDisplayFrame); -- possibly change to generic frame using "StoryHeader-BG" atlas or "QuestLog-reward-top-frame"
local TitleBackdrop = TextDisplayFrame.TitleBackdrop;
TitleBackdrop:SetPoint("BOTTOM", TextScrollFrame, "TOP", -11.5,3);
TitleBackdrop:SetWidth(TextScrollFrame:GetWidth()+20);
TitleBackdrop:SetHeight(48);
TitleBackdrop.tex = TitleBackdrop:CreateTexture()
TitleBackdrop.tex:SetAllPoints(true)
TitleBackdrop.tex:SetAtlas("StoryHeader-BG")

TextDisplayFrame.DeleteEntry = CreateFrame("Button", nil, TextDisplayFrame);
local DeleteEntry = TextDisplayFrame.DeleteEntry;
DeleteEntry:SetPoint("BOTTOMRIGHT", TextDisplayFrame, "TOPRIGHT", -2, 3);
DeleteEntry:SetSize(25,25);
DeleteEntry:SetNormalAtlas("128-RedButton-Delete");
DeleteEntry:SetPushedAtlas("128-RedButton-Delete-Pressed");
DeleteEntry:SetDisabledAtlas("128-RedButton-Delete-Disabled");
DeleteEntry:SetEnabled(false);
DeleteEntry:SetScript("OnClick", function()
	StaticPopup_Show("LOREK_DELETE_ENTRIES");
end)

TextDisplayFrame.HideUnread_Check = CreateFrame("CheckButton", nil, TextDisplayFrame, "UICheckButtonTemplate");
local HideUnread_Check = TextDisplayFrame.HideUnread_Check;
HideUnread_Check:SetPoint("BOTTOMRIGHT", TextDisplayFrame, "TOPRIGHT", -35, 3);
HideUnread_Check:SetSize(25,25);
HideUnread_Check:SetScript("OnClick", function(self)
	if HideUnread_Check:GetChecked() then
		LoreK_DB["settings"]["hideUnread"] = true;
	else
		LoreK_DB["settings"]["hideUnread"] = false;
	end
end)


TextScrollChild.textTitle = TitleBackdrop:CreateFontString(nil, "OVERLAY");
TextScrollChild.textTitle:SetFontObject("GameFontHighlightLarge"); -- make into option later
TextScrollChild.textTitle:SetPoint("TOPLEFT", TitleBackdrop, "TOPLEFT", 7,-5);
TextScrollChild.textTitle:SetPoint("BOTTOMRIGHT", TitleBackdrop, "BOTTOMRIGHT", -7, 5);
TextScrollChild.textTitle:SetJustifyH("CENTER");
TextScrollChild.textTitle:SetJustifyV("TOP");

-- The Text Body on the right
TextScrollChild.textHTML = CreateFrame("SimpleHTML", nil, TextDisplayFrame.TextScrollChild);
TextScrollChild.textHTML:SetPoint("TOP", TextScrollChild, "TOP", 0, 0);
TextScrollChild.textHTML:SetPoint("BOTTOM", TextScrollChild, "BOTTOM", 0, 0);
TextScrollChild.textHTML:SetWidth(TextScrollChild:GetWidth());

-- Set the font for different HTML tags
TextScrollChild.textHTML:SetFont("h1", ITEM_TEXT_FONTS["default"]["H1"]:GetFont());
TextScrollChild.textHTML:SetFont("h2", ITEM_TEXT_FONTS["default"]["H2"]:GetFont());
TextScrollChild.textHTML:SetFont("h3", ITEM_TEXT_FONTS["default"]["H3"]:GetFont());
TextScrollChild.textHTML:SetFont("p", ITEM_TEXT_FONTS["default"]["P"]:GetFont());
TextScrollChild.textHTML:SetJustifyH("p","LEFT");

TextDisplayFrame.PrevPageButton = CreateFrame("Button", nil, TextDisplayFrame, "PagingControlsPrevPageButtonTemplate");
TextDisplayFrame.NextPageButton = CreateFrame("Button", nil, TextDisplayFrame, "PagingControlsNextPageButtonTemplate");
TextDisplayFrame.PrevPageButton:SetPoint("TOP", TextDisplayFrame, "BOTTOM", -12,2);
TextDisplayFrame.NextPageButton:SetPoint("TOP", TextDisplayFrame, "BOTTOM", 28,2);
TextDisplayFrame.PageNumber = TextDisplayFrame.PrevPageButton:CreateFontString(nil, "OVERLAY");
TextDisplayFrame.PageNumber:SetFontObject("GameFontHighlightLarge") -- make into option later
TextDisplayFrame.PageNumber:SetPoint("RIGHT", TextDisplayFrame.PrevPageButton, "LEFT", -15, 0);
TextDisplayFrame.PageNumber:SetJustifyH("RIGHT");
TextDisplayFrame.PrevPageButton:Disable();
TextDisplayFrame.NextPageButton:Disable();
TextDisplayFrame.PrevPageButton:Hide();
TextDisplayFrame.NextPageButton:Hide();
TextDisplayFrame.Type_ID = TextDisplayFrame:CreateFontString(nil, "OVERLAY");
TextDisplayFrame.Type_ID:SetFontObject("GameFontHighlightLarge"); -- make into option later
TextDisplayFrame.Type_ID:SetPoint("LEFT", TextDisplayFrame.NextPageButton, "RIGHT", 15, 0);


--------------------------------------------------------------------------

-- scrollBOX rework

LoreKGUI.ItemScrollBox = CreateFrame("Frame", nil, ItemDisplayFrame, "WowScrollBoxList");
local ItemScrollBox = LoreKGUI.ItemScrollBox;
ItemScrollBox:SetPoint("TOPLEFT", ItemDisplayFrame, "TOPLEFT", 2, -25);
ItemScrollBox:SetPoint("BOTTOMRIGHT", ItemDisplayFrame, "BOTTOMRIGHT", -2, 3);

ItemScrollBox.ItemScrollBar = CreateFrame("EventFrame", nil, ItemDisplayFrame, "MinimalScrollBar");
local ItemScrollBar = ItemScrollBox.ItemScrollBar;
ItemScrollBar:SetPoint("TOPLEFT", ItemScrollBox, "TOPRIGHT", 7, 20);
ItemScrollBar:SetPoint("BOTTOMLEFT", ItemScrollBox, "BOTTOMRIGHT", 7, 0);

local ItemDataProvider = CreateDataProvider();
local ItemScrollView = CreateScrollBoxListLinearView();
ItemScrollView:SetDataProvider(ItemDataProvider);

local function Button_OnSelect(elementData, selected)
	--print("begin selection")
	--print(elementData,selected)
	--for k, v in pairs(selected) do
		--print(k,v)
	--end
	--print("HAHA BINGLE")
end

local selectionBehavior = ScrollUtil.AddSelectionBehavior(ItemScrollBox);
selectionBehavior:RegisterCallback("OnSelectionChanged", Button_OnSelect);

ScrollUtil.InitScrollBoxListWithScrollBar(ItemScrollBox, ItemScrollBar, ItemScrollView);

-- The 'button' argument is the frame that our data will inhabit in our list
-- The 'data' argument will be the data table mentioned above
local function ItemInitializer(button, data)
	local itemID = data.id;
	local title = data.base.title;
	if not title then
		return
	end
	local GUIDType = select(1, strsplit("-", itemID));
	local entryID = select(2, strsplit("-", itemID));
	local GObjectEntryID;
	local ItemEntryID;
	local icon_Q;
	local GameObjTT = CHANNEL_CATEGORY_WORLD .. " " .. AUCTION_HOUSE_HEADER_ITEM .."\n|cnGREEN_FONT_COLOR:"..ITEM_CAN_BE_READ.."|r";
	if GUIDType == "Item" then
		ItemEntryID = tonumber(entryID);
	else
		icon_Q = "Interface/ICONS/INV_Misc_Book_09";
	end

	local favorite = data.base.isFavorite;

	local isFavorite = LoreK_DB["text"][itemID] and LoreK_DB["text"][itemID]["base"]["isFavorite"];
	if ItemEntryID then
		icon_Q = select(5,C_Item.GetItemInfoInstant(ItemEntryID));
	else
		icon_Q = "Interface/ICONS/INV_Misc_Book_09" or "Interface/AddOns/Lorekeeper/Assets/Textures/TEMP";
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
	button.icon.unreadIcon = button.icon.unreadIcon or button.icon:CreateTexture(nil, "OVERLAY", nil, 1);
	button.icon.unreadIcon:SetPoint("TOPLEFT", button.icon, "TOPLEFT", -1,0);
	button.icon.unreadIcon:SetPoint("BOTTOMRIGHT", button.icon, "BOTTOMRIGHT", -1,0);
	button.icon.unreadIcon:SetAtlas("UI-LFG-PendingMark"); -- possibly change to "Campaign-QuestLog-LoreBook"
	if LoreK_DB["text"][itemID] and LoreK_DB["text"][itemID]["base"]["hasRead"] then
		button.icon.unreadIcon:Hide();
	else
		button.icon.unreadIcon:Show();
	end
	button.icon.favoritesIcon = button.icon.favoritesIcon or button.icon:CreateTexture(nil, "OVERLAY", nil, 2);
	button.icon.favoritesIcon:SetPoint("TOPLEFT", button.icon.unreadIcon, "TOPLEFT", -5,2);
	button.icon.favoritesIcon:SetPoint("BOTTOMRIGHT", button.icon.unreadIcon, "BOTTOMRIGHT", -20,17);
	button.icon.favoritesIcon:SetAtlas("PetJournal-FavoritesIcon");
	if isFavorite then
		button.icon.favoritesIcon:Show();
	else
		button.icon.favoritesIcon:Hide();
	end
	button.isSel = button.isSel or false;
	local isSelected = button.isSel;
	button.texHL = button.texHL or button:CreateTexture(nil, "OVERLAY", nil, 3);
	button.texHL:SetAllPoints(button.tex);
	button.texHL:SetAtlas("PetList-ButtonHighlight");
	button.texHL:Hide();
	button.texSel = button.texSel or button:CreateTexture(nil, "OVERLAY", nil, 1);
	button.texSel:SetAllPoints(button.tex);
	button.texSel:SetAtlas("PetList-ButtonSelect");
	if not isSelected then
		button.texSel:Hide();
	end
	button.textFont = button.textFont or button:CreateFontString(nil, "OVERLAY");
	button.textFont:SetFontObject("GameTooltipTextSmall");
	button.textFont:SetPoint("TOPLEFT", button.tex, "TOPLEFT", 5,-3);
	button.textFont:SetPoint("BOTTOMRIGHT", button.tex, "BOTTOMRIGHT", -5,2);
	button.textFont:SetJustifyH("LEFT");
	button.textFont:SetJustifyV("TOP");
	button.textFont:SetText(parseFunc('["text"][itemID]["base"]["title"]', itemID), 1, 1, 1, 1, true);
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
							rootDescription:CreateButton(TRANSMOG_ITEM_UNSET_FAVORITE, function()
								LoreK_DB["text"][itemID]["base"]["isFavorite"] = false;
								LoreKGUI.updateSearchBox(LoreKGUI.SearchBox);
							end)
						else
							if LoreK_DB["text"][itemID] and LoreK_DB["text"][itemID]["base"] then
								rootDescription:CreateButton(TRANSMOG_ITEM_SET_FAVORITE, function()
									LoreK_DB["text"][itemID]["base"]["isFavorite"] = true;
									LoreKGUI.updateSearchBox(LoreKGUI.SearchBox);
								end)
							else
								local lockedBtn = rootDescription:CreateButton(LOCKED .. " - " .. NOT_COLLECTED);
								lockedBtn:SetEnabled(false);

								lockedBtn:SetTooltip(function(tooltip, elementDescription)
									GameTooltip_SetTitle(tooltip, MenuUtil.GetElementText(elementDescription));
									GameTooltip_AddErrorLine(tooltip, string.format(BARBERSHOP_CUSTOMIZATION_SOURCE_FORMAT, UNKNOWN));
								end);
							end
						end
					end)
				end
			else

				DeleteEntry:SetEnabled(true)
				--selectionBehavior:SelectElementData(self:GetData())

				local maxPages = 1;
				local pageNum = 1;
				local textBody = parseFunc('["text"][itemID]["base"]["text"]', itemID);
				local textTitle = parseFunc('["text"][itemID]["base"]["title"]', itemID);
				local isHTML = string.lower(textBody[pageNum]):find("<html>");
				local singlePage = parseFunc('["text"][itemID]["base"]["singlePage"]', itemID);
				local material = parseFunc('["text"][itemID]["base"]["material"]', itemID) or "default";
				local isHidden = LoreK_DB["settings"]["hideUnread"];
				local hasRead = false;
				if LoreK_DB["text"][itemID] and LoreK_DB["text"][itemID]["base"] and LoreK_DB["text"][itemID]["base"]["hasRead"] then
					if LoreK_DB["text"][itemID]["base"]["hasRead"] then
						hasRead = true;
					end
				end

				if material == "ParchmentLarge" then
					TextScrollChild.textHTML:SetFont("h1", ITEM_TEXT_FONTS["ParchmentLarge"]["H1"]:GetFont());
					TextScrollChild.textHTML:SetFont("h2", ITEM_TEXT_FONTS["ParchmentLarge"]["H2"]:GetFont());
					TextScrollChild.textHTML:SetFont("h3", ITEM_TEXT_FONTS["ParchmentLarge"]["H3"]:GetFont());
					TextScrollChild.textHTML:SetFont("p", ITEM_TEXT_FONTS["ParchmentLarge"]["P"]:GetFont());
					TextScrollChild.textHTML:SetTextColor("h1", 0, 0, 0, 1);
					TextScrollChild.textHTML:SetTextColor("h2", 0, 0, 0, 1);
					TextScrollChild.textHTML:SetTextColor("h3", 0, 0, 0, 1);
					TextScrollChild.textHTML:SetTextColor("p", 0, 0, 0, 1);
				else
					TextScrollChild.textHTML:SetFont("h1", ITEM_TEXT_FONTS["default"]["H1"]:GetFont());
					TextScrollChild.textHTML:SetFont("h2", ITEM_TEXT_FONTS["default"]["H2"]:GetFont());
					TextScrollChild.textHTML:SetFont("h3", ITEM_TEXT_FONTS["default"]["H3"]:GetFont());
					TextScrollChild.textHTML:SetFont("p", ITEM_TEXT_FONTS["default"]["P"]:GetFont());
					TextScrollChild.textHTML:SetTextColor("h1", 0, 0, 0, 1);
					TextScrollChild.textHTML:SetTextColor("h2", 0, 0, 0, 1);
					TextScrollChild.textHTML:SetTextColor("h3", 0, 0, 0, 1);
					TextScrollChild.textHTML:SetTextColor("p", 0, 0, 0, 1);
				end

				TextDisplayFrame.PrevPageButton:Hide();
				TextDisplayFrame.NextPageButton:Hide();
				TextDisplayFrame.PrevPageButton:Disable();
				TextDisplayFrame.NextPageButton:Disable();
				TextDisplayFrame.PageNumber:SetText("");
				if not singlePage then
					maxPages = #parseFunc('["text"][itemID]["base"]["text"]', itemID);
					local pageText = string.format(PAGE_NUMBER_WITH_MAX, pageNum, maxPages);

					TextDisplayFrame.PrevPageButton:Show();
					TextDisplayFrame.NextPageButton:Show();
					TextDisplayFrame.PageNumber:SetText(pageText);
					TextDisplayFrame.NextPageButton:Enable();
					TextDisplayFrame.PrevPageButton:SetScript("OnClick", function()
						if pageNum ~= 1 then
							pageNum = pageNum - 1;
						end
						if pageNum == 1 then
							TextDisplayFrame.PrevPageButton:Disable();
						end
						TextDisplayFrame.NextPageButton:Enable();

						local pageText = string.format(PAGE_NUMBER_WITH_MAX, pageNum, maxPages);
						local textBody = parseFunc('["text"][itemID]["base"]["text"]', itemID);
						local textTitle = parseFunc('["text"][itemID]["base"]["title"]', itemID);
						local isHTML = string.lower(textBody[pageNum]):find("<html>");
						local singlePage = parseFunc('["text"][itemID]["base"]["singlePage"]', itemID);

						TextDisplayFrame.PageNumber:SetText(pageText);
						TextScrollChild.textTitle:SetText(textTitle, 1, 1, 1, 1, true);
						if isHTML then
							TextScrollChild.textHTML:SetText(textBody[pageNum], false);
						else
							TextScrollChild.textHTML:SetText(textBody[pageNum], false);
						end
					end)
					TextDisplayFrame.NextPageButton:SetScript("OnClick", function()
						if pageNum ~= maxPages then
							pageNum = pageNum + 1;
						end
						if pageNum == maxPages then
							TextDisplayFrame.NextPageButton:Disable();
						end
						TextDisplayFrame.PrevPageButton:Enable();

						local pageText = string.format(PAGE_NUMBER_WITH_MAX, pageNum, maxPages);
						local textBody = parseFunc('["text"][itemID]["base"]["text"]', itemID);
						local textTitle = parseFunc('["text"][itemID]["base"]["title"]', itemID);
						local isHTML = string.lower(textBody[pageNum]):find("<html>");
						local singlePage = parseFunc('["text"][itemID]["base"]["singlePage"]', itemID);

						TextDisplayFrame.PageNumber:SetText(pageText);
						TextScrollChild.textTitle:SetText(textTitle, 1, 1, 1, 1, true);
						if isHTML then
							TextScrollChild.textHTML:SetText(textBody[pageNum], false);
						else
							TextScrollChild.textHTML:SetText(textBody[pageNum], false);
						end
					end)
				end

			if isHidden and not hasRead then
				TextScrollChild.textHTML:Hide();
				TextDisplayFrame.PrevPageButton:Hide();
				TextDisplayFrame.NextPageButton:Hide();
			else
				TextScrollChild.textHTML:Show();
			end

			TextScrollChild.textTitle:SetText(textTitle, 1, 1, 1, 1, true);
			if LoreK_DB.settings.debug then
				TextDisplayFrame.Type_ID:SetText(itemID, 1, 1, 1, 1, true);
			end
			if isHTML then
				TextScrollChild.textHTML:SetText(textBody[pageNum], false);
			else
				TextScrollChild.textHTML:SetText(textBody[pageNum], false);
			end
		end
	end);
	button:RegisterForClicks("AnyUp", "AnyDown");
end
ItemScrollView:SetElementExtent(36);


--------------------------------------------------------------------------


LoreKGUI.Events = CreateFrame("Frame")
LoreKGUI.Events:RegisterEvent("ADDON_LOADED")

function LoreKGUI.updateSearchBox(frame)
	if frame:HasText() then
		LoreKGUI.UpdateItemScrollFrame(frame:GetText());
	else
		LoreKGUI.UpdateItemScrollFrame("");
	end
end


function LoreKGUI.Initialize(self, event, arg1)
	if event == "ADDON_LOADED" and arg1 == "Lorekeeper" then

		allData = CopyTable(LK["LocalData"]["text"]);
		for id, data in pairs(LoreK_DB["text"]) do
			if allData[id] then
				Mixin(allData[id].base, data.base);
			else
				allData[id] = CopyTable(data);
			end
		end

		function LoreKGUI.PopulateList()
			if not LoreK_DB or not LoreK_DB["text"] then
				return;
			end

			--sort by favorite, then alphabetically
			local function sortFunc(a, b)
				if a.base.isFavorite ~= b.base.isFavorite then
					return a.base.isFavorite;
				else
					return strcmputf8i(a.base.title, b.base.title) < 0;
				end
			end
			ItemScrollView:SetElementInitializer("Button", ItemInitializer);
			-- Insert each entry into the DataProvider
			for id, data in pairs(allData) do
				data.id = id;
				ItemDataProvider:Insert(data);
			end

			ItemDataProvider:SetSortComparator(sortFunc);
			ItemDataProvider:Sort();
		end
		LoreKGUI.PopulateList()

		-- Function to update the scroll frame content
		function LoreKGUI.UpdateItemScrollFrame(searchText)
			if not LoreK_DB or not LoreK_DB["text"] then
				return;
			end
		end

		-- Search box
		LoreKGUI.SearchBox = CreateFrame("EditBox", "LoreKSearchBox", LoreKGUI, "SearchBoxTemplate");
		LoreKGUI.SearchBox:SetSize(190, 20);
		LoreKGUI.SearchBox:SetPoint("TOP", ItemDisplayFrame, "TOP", 0, -5);
		LoreKGUI.SearchBox:SetScript("OnTextChanged", function(self)
			local searchText = self:GetText():lower();
			-- Filter and update scroll frame content based on search text
			LoreKGUI.UpdateItemScrollFrame(searchText);
			if LoreKGUI.SearchBox:HasText() then
				LoreKGUI.SearchBox.Instructions:Hide();
			else
				LoreKGUI.SearchBox.Instructions:Show();
			end
		end)

		-- Initialize the scroll frame with no filter
		LoreKGUI.updateSearchBox(LoreKGUI.SearchBox);

	end
end


LoreKGUI.Events:SetScript("OnEvent", LoreKGUI.Initialize);

function LoreKGUI.Script_OnShow()
	LoreKGUI.UpdateItemScrollFrame("");
	PlaySound(74421);
end
function LoreKGUI.Script_OnHide()
	PlaySound(74423);
end

LoreKGUI:SetScript("OnShow", LoreKGUI.Script_OnShow);
LoreKGUI:SetScript("OnHide", LoreKGUI.Script_OnHide);
LoreKGUI:HookScript("OnShow", SetupFade);
LoreKGUI:HookScript("OnHide", CleanupFade);