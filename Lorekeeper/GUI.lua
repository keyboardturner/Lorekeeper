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
	local point_, relativeTo, relativePoint_, xOfs, yOfs = frame:GetPoint()
	point, relativeTo, relativePoint, xOfs, yOfs = point, relativeTo, relativePoint, xOfs+newxOfs, yOfs+newyOfs
	frame:SetPoint(point, relativeTo, relativePoint, xOfs, yOfs)
end

-- Create the main frame
local LoreKGUI = CreateFrame("Frame", "LoreKMainframe", UIParent, "PortraitFrameTemplateMinimizable")
tinsert(UISpecialFrames, LoreKGUI:GetName())
LK.LoreKGUI = LoreKGUI
LoreKGUI:SetPortraitTextureRaw("Interface\\ICONS\\inv_misc_book_16")
LoreKGUI:SetSize(703, 606)
LoreKGUI:SetPoint("CENTER", UIParent, "CENTER")
LoreKGUI:SetClampedToScreen(true)
LoreKGUI:SetMovable(true)
LoreKGUI:EnableMouse(true)
LoreKGUI:RegisterForDrag("LeftButton")
LoreKGUI:SetScript("OnDragStart", LoreKGUI.StartMoving)
LoreKGUI:SetScript("OnDragStop", LoreKGUI.StopMovingOrSizing)
LoreKGUI:SetTitle("[PH] Lorekeeper")

LoreKGUI:Hide()

-- Left Side
LoreKGUI.ItemDisplayFrame = CreateFrame("Frame", "LoreKDisplayFrame", LoreKGUI, "InsetFrameTemplate3")
local ItemDisplayFrame = LoreKGUI.ItemDisplayFrame
ItemDisplayFrame:SetWidth(210)
ItemDisplayFrame:SetPoint("TOPLEFT", LoreKGUI.TopTileStreaks, "BOTTOMLEFT", 0, 0)
ItemDisplayFrame:SetPoint("BOTTOMLEFT", LoreKGUI, "BOTTOMLEFT", 5, 30)

-- Scroll frame for Items (Left)
LoreKGUI.ItemScrollFrame = CreateFrame("ScrollFrame", "LoreKItemScrollFrame", LoreKGUI, "ScrollFrameTemplate")
local ItemScrollFrame = LoreKGUI.ItemScrollFrame
--ItemScrollFrame:SetWidth(207)
ItemScrollFrame:SetPoint("TOPLEFT", ItemDisplayFrame, "TOPLEFT", 2, -25)
ItemScrollFrame:SetPoint("BOTTOMRIGHT", ItemDisplayFrame, "BOTTOMRIGHT", 0, 3)
moveFrameXY(ItemScrollFrame.ScrollBar, "TOPLEFT", "TOPRIGHT", 0, 20)
moveFrameXY(ItemScrollFrame.ScrollBar, "BOTTOMLEFT", "BOTTOMRIGHT", 0, -23)

LoreKGUI.ItemScrollChild = CreateFrame("Frame", "LoreKItemScrollChild", ItemScrollFrame)
local ItemScrollChild = LoreKGUI.ItemScrollChild
ItemScrollChild:SetSize(ItemScrollFrame:GetWidth()-8, 1) -- Height will adjust based on content
ItemScrollFrame:SetScrollChild(ItemScrollChild)
ItemScrollChild:SetPoint("TOP", ItemScrollFrame, "TOP", 0, 0)


--------------------------------------------------------------------------

-- Right Side
LoreKGUI.TextDisplayFrame = CreateFrame("Frame", "LoreKTextDisplayFrame", LoreKGUI, "InsetFrameTemplate4")
local TextDisplayFrame = LoreKGUI.TextDisplayFrame
TextDisplayFrame:SetPoint("TOPLEFT", LoreKGUI.TopTileStreaks, "BOTTOMLEFT", 230, 0)
TextDisplayFrame:SetPoint("BOTTOMRIGHT", LoreKGUI, "BOTTOMRIGHT",-20,30)
TextDisplayFrame.bg = TextDisplayFrame:CreateTexture(nil, "BACKGROUND")
TextDisplayFrame.bg:SetAllPoints(true)
TextDisplayFrame.bg:SetColorTexture(0.1, 0.1, 0.1, 0.8)

-- Scroll frame for Text Preview (Right)
TextDisplayFrame.TextScrollFrame = CreateFrame("ScrollFrame", "LoreKTextScrollFrame", TextDisplayFrame, "ScrollFrameTemplate")
local TextScrollFrame = TextDisplayFrame.TextScrollFrame
TextScrollFrame:SetPoint("TOPLEFT", TextDisplayFrame, "TOPLEFT", 25,-55)
TextScrollFrame:SetPoint("BOTTOMRIGHT", TextDisplayFrame, "BOTTOMRIGHT", -2,3)
moveFrameXY(TextScrollFrame.ScrollBar, "TOPLEFT", "TOPRIGHT", 0, 45)
moveFrameXY(TextScrollFrame.ScrollBar, "BOTTOMLEFT", "BOTTOMRIGHT", 0, -47)

TextDisplayFrame.TextScrollChild = CreateFrame("Frame", "LoreKTextScrollChild", TextScrollFrame)
local TextScrollChild = TextDisplayFrame.TextScrollChild
TextScrollChild:SetSize(TextScrollFrame:GetWidth()-10, 1) -- Height will adjust based on content
TextScrollFrame:SetScrollChild(TextScrollChild)

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

TextDisplayFrame.TitleBackdrop = CreateFrame("Frame", nil, TextDisplayFrame, "TooltipBorderedFrameTemplate")
local TitleBackdrop = TextDisplayFrame.TitleBackdrop
TitleBackdrop:SetPoint("BOTTOM", TextScrollFrame, "TOP", -11.5,5)
TitleBackdrop:SetWidth(TextScrollFrame:GetWidth()+22)
TitleBackdrop:SetHeight(48)

TextScrollChild.textTitle = TitleBackdrop:CreateFontString(nil, "OVERLAY")
TextScrollChild.textTitle:SetFontObject("GameFontHighlightLarge") -- make into option later
TextScrollChild.textTitle:SetPoint("TOPLEFT", TitleBackdrop, "TOPLEFT", 7,-5)
TextScrollChild.textTitle:SetPoint("BOTTOMRIGHT", TitleBackdrop, "BOTTOMRIGHT", -7, 5)
TextScrollChild.textTitle:SetJustifyH("CENTER")
TextScrollChild.textTitle:SetJustifyV("TOP")

-- The Text Body on the right
TextScrollChild.textHTML = CreateFrame("SimpleHTML", nil, TextDisplayFrame.TextScrollChild)
TextScrollChild.textHTML:SetPoint("TOP", TextScrollChild, "TOP", 0, 0)
TextScrollChild.textHTML:SetPoint("BOTTOM", TextScrollChild, "BOTTOM", 0, 0)
TextScrollChild.textHTML:SetWidth(TextScrollChild:GetWidth())

-- Set the font for different HTML tags
TextScrollChild.textHTML:SetFont("h1", ITEM_TEXT_FONTS["default"]["H1"]:GetFont())
TextScrollChild.textHTML:SetFont("h2", ITEM_TEXT_FONTS["default"]["H2"]:GetFont())
TextScrollChild.textHTML:SetFont("h3", ITEM_TEXT_FONTS["default"]["H3"]:GetFont())
TextScrollChild.textHTML:SetFont("p", ITEM_TEXT_FONTS["default"]["P"]:GetFont())
TextScrollChild.textHTML:SetJustifyH("p","LEFT")

TextDisplayFrame.PrevPageButton = CreateFrame("Button", nil, TextDisplayFrame, "PagingControlsPrevPageButtonTemplate")
TextDisplayFrame.NextPageButton = CreateFrame("Button", nil, TextDisplayFrame, "PagingControlsNextPageButtonTemplate")
TextDisplayFrame.PrevPageButton:SetPoint("TOP", TextDisplayFrame, "BOTTOM", -12,2)
TextDisplayFrame.NextPageButton:SetPoint("TOP", TextDisplayFrame, "BOTTOM", 28,2)
TextDisplayFrame.PageNumber = TextDisplayFrame:CreateFontString(nil, "OVERLAY")
TextDisplayFrame.PageNumber:SetFontObject("GameFontHighlightLarge") -- make into option later
TextDisplayFrame.PageNumber:SetPoint("RIGHT", TextDisplayFrame.PrevPageButton, "LEFT", -15, 0)
--TextDisplayFrame.PageNumber:SetText("[PH]") -- Test 
TextDisplayFrame.PageNumber:SetJustifyH("RIGHT")
TextDisplayFrame.PrevPageButton:Disable()
TextDisplayFrame.NextPageButton:Disable()
TextDisplayFrame.Type_ID = TextDisplayFrame:CreateFontString(nil, "OVERLAY")
TextDisplayFrame.Type_ID:SetFontObject("GameFontHighlightLarge") -- make into option later
TextDisplayFrame.Type_ID:SetPoint("LEFT", TextDisplayFrame.NextPageButton, "RIGHT", 15, 0)

LoreKGUI.Events = CreateFrame("Frame")
LoreKGUI.Events:RegisterEvent("ADDON_LOADED")

-- Create the filteredItems table outside the function
local filteredItems = {}

-- Create the insertItems function outside the function
local function insertItems(dataSource, searchText)
	for itemID, itemData in pairs(dataSource) do
		if dataSource[itemID]["base"] and dataSource[itemID]["base"]["title"] then
			local title = dataSource[itemID]["base"]["title"]
			if title:lower():find(searchText) then
				table.insert(filteredItems, {itemID = itemID, title = title})
			end
		end
	end
end

local function parseFunc(path, itemID)
	-- Function to get nested table value based on a path
	local function getNestedValue(t, path, itemID)
		local result = t
		for part in path:gmatch("%[(.-)%]") do
			part = part:match('^"(.-)"$') or tonumber(part) or part
			result = result[part]
			if not result then return nil end
		end
		return result
	end

	-- Attempt to find the data in LK["LocalData"]
	local localData = getNestedValue(LK["LocalData"], path:gsub("itemID", "\""..itemID.."\""))

	if localData then
		return localData
	end

	-- If not found in LK["LocalData"], attempt to find it in LoreK_DB
	local savedData = getNestedValue(LoreK_DB, path:gsub("itemID", "\""..itemID.."\""))

	if savedData then
		return savedData
	end

	-- If not found in either table, return nil or an appropriate message
	return nil -- or return "Data not found" if you prefer a message
end


function LoreKGUI.Initialize(self, event, arg1)
	if event == "ADDON_LOADED" and arg1 == "Lorekeeper" then

		-- Function to update the scroll frame content
		function LoreKGUI.UpdateItemScrollFrame(searchText)
			if not LoreK_DB or not LoreK_DB["text"] then
				return
			end

			-- Clear existing buttons
			for i, button in ipairs(ItemScrollChild.buttons or {}) do
				button:Hide()
			end
			
			-- Clear the filteredItems table
			for i = #filteredItems, 1, -1 do
				table.remove(filteredItems, i)
			end


			-- Insert items from both LoreK_DB and LK["LocalData"]
			insertItems(LoreK_DB["text"], searchText)
			insertItems(LK["LocalData"]["text"], searchText)

			-- Sort filtered items alphabetically by their title
			table.sort(filteredItems, function(a, b)
				local titleA = a.title:lower()
				local titleB = b.title:lower()
				return titleA < titleB
			end)

			ItemScrollChild.buttons = ItemScrollChild.buttons or {}
			for i, entry in ipairs(filteredItems) do
				local itemID = entry.itemID
				local title = entry.title

				local button = ItemScrollChild.buttons[i] or CreateFrame("Button", nil, ItemScrollChild)
				button:SetSize(168, 35)
				button:SetPoint("TOP", ItemScrollChild, "TOP", 22, -((i - 1) * 37))
				button.tex = button.tex or button:CreateTexture(nil, "OVERLAY", nil, 0)
				button.tex:SetAllPoints(true)
				button.tex:SetAtlas("PetList-ButtonBackground")
				button.icon = button.icon or button:CreateTexture(nil, "OVERLAY", nil, 0)
				button.icon:SetPoint("TOPRIGHT", button, "TOPLEFT", -1,0)
				button.icon:SetPoint("BOTTOMRIGHT", button, "BOTTOMLEFT", -1,0)
				button.icon:SetWidth(button:GetHeight())
				button.icon:SetTexture("Interface/AddOns/Lorekeeper/Assets/Textures/TEMP")
				button.unreadIcon = button.unreadIcon or button:CreateTexture(nil, "OVERLAY", nil, 1)
				button.unreadIcon:SetPoint("TOPRIGHT", button, "TOPLEFT", -1,0)
				button.unreadIcon:SetPoint("BOTTOMRIGHT", button, "BOTTOMLEFT", -1,0)
				button.unreadIcon:SetWidth(button:GetHeight())
				button.unreadIcon:SetAtlas("UI-LFG-PendingMark")
				if LoreK_DB["text"][itemID] and LoreK_DB["text"][itemID]["base"]["hasRead"] then
					button.unreadIcon:Hide()
				else
					button.unreadIcon:Show()
				end
				button.texHL = button.texHL or button:CreateTexture(nil, "OVERLAY", nil, 2)
				button.texHL:SetAllPoints(true)
				button.texHL:SetAtlas("PetList-ButtonHighlight")
				button.texHL:Hide()
				button.texSel = button.texSel or button:CreateTexture(nil, "OVERLAY", nil, 1)
				button.texSel:SetAllPoints(true)
				button.texSel:SetAtlas("PetList-ButtonSelect")
				button.texSel:Hide()
				button.isSelected = false;
				button.textFont = button.textFont or button:CreateFontString(nil, "OVERLAY")
				button.textFont:SetFontObject("GameTooltipTextSmall")
				--button.textFont:SetFont(select(1,GameTooltipTextSmall:GetFont()), 12)
				button.textFont:SetPoint("TOPLEFT", button, "TOPLEFT", 5,-3)
				button.textFont:SetPoint("BOTTOMRIGHT", button, "BOTTOMRIGHT", -5,2)
				button.textFont:SetJustifyH("LEFT")
				button.textFont:SetJustifyV("TOP")
				button.textFont:SetText(parseFunc('["text"][itemID]["base"]["title"]', itemID), 1, 1, 1, 1, true)
				button:SetScript("OnEnter", function()
					button.texHL:Show()
				end)
				button:SetScript("OnLeave", function()
					button.texHL:Hide()
				end)
				button:SetScript("OnClick", function()
					for k, v in pairs(ItemScrollChild.buttons) do
						v["texSel"]:Hide()
					end
					button.texSel:Show()

					local maxPages = 1
					local pageNum = 1
					local textBody = parseFunc('["text"][itemID]["base"]["text"]', itemID)
					local textTitle = parseFunc('["text"][itemID]["base"]["title"]', itemID)
					local isHTML = string.lower(textBody[pageNum]):find("<html>")
					local singlePage = parseFunc('["text"][itemID]["base"]["singlePage"]', itemID)
					local material = parseFunc('["text"][itemID]["base"]["material"]', itemID) or "default"
					if material == "ParchmentLarge" then
						TextScrollChild.textHTML:SetFont("h1", ITEM_TEXT_FONTS["ParchmentLarge"]["H1"]:GetFont())
						TextScrollChild.textHTML:SetFont("h2", ITEM_TEXT_FONTS["ParchmentLarge"]["H2"]:GetFont())
						TextScrollChild.textHTML:SetFont("h3", ITEM_TEXT_FONTS["ParchmentLarge"]["H3"]:GetFont())
						TextScrollChild.textHTML:SetFont("p", ITEM_TEXT_FONTS["ParchmentLarge"]["P"]:GetFont())
					else
						TextScrollChild.textHTML:SetFont("h1", ITEM_TEXT_FONTS["default"]["H1"]:GetFont())
						TextScrollChild.textHTML:SetFont("h2", ITEM_TEXT_FONTS["default"]["H2"]:GetFont())
						TextScrollChild.textHTML:SetFont("h3", ITEM_TEXT_FONTS["default"]["H3"]:GetFont())
						TextScrollChild.textHTML:SetFont("p", ITEM_TEXT_FONTS["default"]["P"]:GetFont())
					end
					TextDisplayFrame.PrevPageButton:Disable()
					TextDisplayFrame.NextPageButton:Disable()
					TextDisplayFrame.PageNumber:SetText("")
					if not singlePage then
						maxPages = #parseFunc('["text"][itemID]["base"]["text"]', itemID)
						local pageText = string.format(PAGE_NUMBER_WITH_MAX, pageNum, maxPages)
						TextDisplayFrame.PageNumber:SetText(pageText)
						TextDisplayFrame.NextPageButton:Enable()
						TextDisplayFrame.PrevPageButton:SetScript("OnClick", function()
							if pageNum ~= 1 then
								pageNum = pageNum - 1
							end
							if pageNum == 1 then
								TextDisplayFrame.PrevPageButton:Disable()
							end
							TextDisplayFrame.NextPageButton:Enable()

							local pageText = string.format(PAGE_NUMBER_WITH_MAX, pageNum, maxPages)
							local textBody = parseFunc('["text"][itemID]["base"]["text"]', itemID)
							local textTitle = parseFunc('["text"][itemID]["base"]["title"]', itemID)
							local isHTML = string.lower(textBody[pageNum]):find("<html>")
							local singlePage = parseFunc('["text"][itemID]["base"]["singlePage"]', itemID)

							TextDisplayFrame.PageNumber:SetText(pageText)
							TextScrollChild.textTitle:SetText(textTitle, 1, 1, 1, 1, true)
							if isHTML then
								TextScrollChild.textHTML:SetText(textBody[pageNum])
							else
								TextScrollChild.textHTML:SetText(textBody[pageNum], 1, 1, 1, 1, true)
							end
						end)
						TextDisplayFrame.NextPageButton:SetScript("OnClick", function()
							if pageNum ~= maxPages then
								pageNum = pageNum + 1
							end
							if pageNum == maxPages then
								TextDisplayFrame.NextPageButton:Disable()
							end
							TextDisplayFrame.PrevPageButton:Enable()

							local pageText = string.format(PAGE_NUMBER_WITH_MAX, pageNum, maxPages)
							local textBody = parseFunc('["text"][itemID]["base"]["text"]', itemID)
							local textTitle = parseFunc('["text"][itemID]["base"]["title"]', itemID)
							local isHTML = string.lower(textBody[pageNum]):find("<html>")
							local singlePage = parseFunc('["text"][itemID]["base"]["singlePage"]', itemID)

							TextDisplayFrame.PageNumber:SetText(pageText)
							TextScrollChild.textTitle:SetText(textTitle, 1, 1, 1, 1, true)
							if isHTML then
								TextScrollChild.textHTML:SetText(textBody[pageNum])
							else
								TextScrollChild.textHTML:SetText(textBody[pageNum], 1, 1, 1, 1, true)
							end
						end)

					end
					TextScrollChild.textTitle:SetText(textTitle, 1, 1, 1, 1, true)
					if LoreK_DB.settings.debug then
						TextDisplayFrame.Type_ID:SetText(itemID, 1, 1, 1, 1, true)
					end
					if isHTML then
						TextScrollChild.textHTML:SetText(textBody[pageNum])
					else
						TextScrollChild.textHTML:SetText(textBody[pageNum], 1, 1, 1, 1, true)
					end
				end)
				button:Show()
				ItemScrollChild.buttons[i] = button
			end

			ItemScrollChild:SetHeight(#filteredItems * 22)
		end

		-- Search box
		local SearchBox = CreateFrame("EditBox", "LoreKSearchBox", LoreKGUI, "SearchBoxTemplate")
		SearchBox:SetSize(190, 20)
		SearchBox:SetPoint("TOP", ItemDisplayFrame, "TOP", 0, -5)
		SearchBox:SetScript("OnTextChanged", function(self)
			local searchText = self:GetText():lower()
			-- Filter and update scroll frame content based on search text
			LoreKGUI.UpdateItemScrollFrame(searchText)
			if SearchBox:HasText() then
				SearchBox.Instructions:Hide()
			else
				SearchBox.Instructions:Show()
			end
		end)

		-- Initialize the scroll frame with no filter
		LoreKGUI.UpdateItemScrollFrame("")

	end
end


LoreKGUI.Events:SetScript("OnEvent", LoreKGUI.Initialize)

function LoreKGUI.Script_OnShow()
	LoreKGUI.UpdateItemScrollFrame("")
	PlaySound(74421);
end
function LoreKGUI.Script_OnHide()
	PlaySound(74423);
end

LoreKGUI:SetScript("OnShow", LoreKGUI.Script_OnShow)
LoreKGUI:SetScript("OnHide", LoreKGUI.Script_OnHide)
LoreKGUI:HookScript("OnShow", SetupFade);
LoreKGUI:HookScript("OnHide", CleanupFade);