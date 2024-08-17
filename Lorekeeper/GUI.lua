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

LoreKGUI.ItemDisplayFrame = CreateFrame("Frame", "LoreKDisplayFrame", LoreKGUI, "InsetFrameTemplate3")
local ItemDisplayFrame = LoreKGUI.ItemDisplayFrame
ItemDisplayFrame:SetWidth(210)
ItemDisplayFrame:SetPoint("TOPLEFT", LoreKGUI.TopTileStreaks, "BOTTOMLEFT", 5, 0)
ItemDisplayFrame:SetPoint("BOTTOMLEFT", LoreKGUI, "BOTTOMLEFT", 5, 25)

-- Scroll frame
LoreKGUI.ItemScrollFrame = CreateFrame("ScrollFrame", "LoreKItemScrollFrame", LoreKGUI, "ScrollFrameTemplate")
local ItemScrollFrame = LoreKGUI.ItemScrollFrame
--ItemScrollFrame:SetWidth(207)
ItemScrollFrame:SetPoint("TOPLEFT", ItemDisplayFrame, "TOPLEFT", 0, -25)
ItemScrollFrame:SetPoint("BOTTOMRIGHT", ItemDisplayFrame, "BOTTOMRIGHT", -3, 3)

LoreKGUI.ItemScrollChild = CreateFrame("Frame", "LoreKItemScrollChild", ItemScrollFrame)
local ItemScrollChild = LoreKGUI.ItemScrollChild
ItemScrollChild:SetSize(ItemScrollFrame:GetWidth(), 1) -- Height will adjust based on content
ItemScrollFrame:SetScrollChild(ItemScrollChild)

-- Display frame on the right
LoreKGUI.TextDisplayFrame = CreateFrame("Frame", "LoreKTextDisplayFrame", LoreKGUI, "InsetFrameTemplate4")
local TextDisplayFrame = LoreKGUI.TextDisplayFrame
TextDisplayFrame:SetPoint("TOPLEFT", LoreKGUI.TopTileStreaks, "BOTTOMLEFT", 230, 0)
TextDisplayFrame:SetPoint("BOTTOMRIGHT", LoreKGUI, "BOTTOMRIGHT",-5,25)
TextDisplayFrame.bg = TextDisplayFrame:CreateTexture(nil, "BACKGROUND")
TextDisplayFrame.bg:SetAllPoints(true)
TextDisplayFrame.bg:SetColorTexture(0.1, 0.1, 0.1, 0.8)



-- Scroll frame
TextDisplayFrame.TextScrollFrame = CreateFrame("ScrollFrame", "LoreKTextScrollFrame", TextDisplayFrame, "ScrollFrameTemplate")
local TextScrollFrame = TextDisplayFrame.TextScrollFrame
TextScrollFrame:SetPoint("TOPLEFT", TextDisplayFrame, "TOPLEFT", 25,-50)
TextScrollFrame:SetPoint("BOTTOMRIGHT", TextDisplayFrame, "BOTTOMRIGHT", -25,40)

TextDisplayFrame.TextScrollChild = CreateFrame("Frame", "LoreKTextScrollChild", TextScrollFrame)
local TextScrollChild = TextDisplayFrame.TextScrollChild
TextScrollChild:SetSize(TextScrollFrame:GetWidth(), 1) -- Height will adjust based on content
TextScrollFrame:SetScrollChild(TextScrollChild)

TextDisplayFrame.TitleArea = CreateFrame("Frame", nil, TextDisplayFrame)
TextDisplayFrame.TitleArea:SetPoint("TOP", TextScrollFrame, "TOP", 0,25)
TextDisplayFrame.TitleArea:SetWidth(TextScrollFrame:GetWidth())
TextDisplayFrame.TitleArea:SetHeight(20)

TextScrollChild.textBody = TextScrollChild:CreateFontString(nil, "OVERLAY")
TextScrollChild.textBody:SetFontObject("GameFontHighlightLarge") -- make into option later
TextScrollChild.textBody:SetPoint("TOP", TextScrollChild, "TOP", 0, 0)
TextScrollChild.textBody:SetPoint("BOTTOM", TextScrollChild, "BOTTOM", 0, 0)
TextScrollChild.textBody:SetJustifyH("LEFT")
TextScrollChild.textBody:SetJustifyV("TOP")
TextScrollChild.textBody:SetWidth(TextScrollChild:GetWidth())
TextScrollChild.textTitle = TextDisplayFrame.TitleArea:CreateFontString(nil, "OVERLAY")
TextScrollChild.textTitle:SetFontObject("GameFontHighlightLarge") -- make into option later
TextScrollChild.textTitle:SetAllPoints(TextDisplayFrame.TitleArea)

TextScrollChild.textHTML = CreateFrame("SimpleHTML", nil, TextDisplayFrame.TextScrollChild)
TextScrollChild.textHTML:SetPoint("TOP", TextScrollChild.textBody, "TOP", 0, 0)
TextScrollChild.textHTML:SetPoint("BOTTOM", TextScrollChild.textBody, "BOTTOM", 0, 0)
TextScrollChild.textHTML:SetWidth(TextScrollChild.textBody:GetWidth())

-- Set the font for different HTML tags
TextScrollChild.textHTML:SetFont("h1", ITEM_TEXT_FONTS["default"]["H1"]:GetFont())
TextScrollChild.textHTML:SetFont("h2", ITEM_TEXT_FONTS["default"]["H2"]:GetFont())
TextScrollChild.textHTML:SetFont("h3", ITEM_TEXT_FONTS["default"]["H3"]:GetFont())
TextScrollChild.textHTML:SetFont("p", ITEM_TEXT_FONTS["default"]["P"]:GetFont())
TextScrollChild.textHTML:SetJustifyH("p","LEFT")

TextDisplayFrame.PrevPageButton = CreateFrame("Button", nil, TextDisplayFrame, "PagingControlsPrevPageButtonTemplate")
TextDisplayFrame.NextPageButton = CreateFrame("Button", nil, TextDisplayFrame, "PagingControlsNextPageButtonTemplate")
TextDisplayFrame.PrevPageButton:SetPoint("BOTTOM", TextDisplayFrame, "BOTTOM", -20,10)
TextDisplayFrame.NextPageButton:SetPoint("BOTTOM", TextDisplayFrame, "BOTTOM", 20,10)
TextDisplayFrame.PageNumber = TextDisplayFrame:CreateFontString(nil, "OVERLAY")
TextDisplayFrame.PageNumber:SetFontObject("GameFontHighlightLarge") -- make into option later
TextDisplayFrame.PageNumber:SetPoint("RIGHT", TextDisplayFrame.PrevPageButton, "LEFT", -15, 0)
--TextDisplayFrame.PageNumber:SetText("[PH]") -- Test 
TextDisplayFrame.PageNumber:SetJustifyH("RIGHT")
TextDisplayFrame.PrevPageButton:Disable()
TextDisplayFrame.NextPageButton:Disable()

LoreKGUI.Events = CreateFrame("Frame")
LoreKGUI.Events:RegisterEvent("ADDON_LOADED")

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

			-- Create new buttons based on the search filter
			local filteredItems = {}

			-- Function to insert items into filteredItems
			local function insertItems(dataSource)
				for itemID, itemData in pairs(dataSource) do
					if not dataSource[itemID]["base"]["title"] then
						return
					end
					local title = dataSource[itemID]["base"]["title"]
					if title:lower():find(searchText) then
						table.insert(filteredItems, {itemID = itemID, source = dataSource})
					end
				end
			end

			-- Insert items from both LoreK_DB and LK["LocalData"]
			insertItems(LoreK_DB["text"])
			insertItems(LK["LocalData"]["text"])

			-- Sort filtered items alphabetically by their title
			table.sort(filteredItems, function(a, b)
				local titleA = a.source[a.itemID]["base"]["title"]:lower()
				local titleB = b.source[b.itemID]["base"]["title"]:lower()
				return titleA < titleB
			end)

			ItemScrollChild.buttons = ItemScrollChild.buttons or {}
			for i, entry in ipairs(filteredItems) do
				local itemID = entry.itemID
				local source = entry.source

				local button = ItemScrollChild.buttons[i] or CreateFrame("Button", nil, ItemScrollChild)
				button:SetSize(170, 35)
				button:SetPoint("TOP", ItemScrollChild, "TOP", 20, -((i - 1) * 37))
				button.tex = button.tex or button:CreateTexture(nil, "OVERLAY", nil, 0)
				button.tex:SetAllPoints(true)
				button.tex:SetAtlas("PetList-ButtonBackground")
				button.icon = button.icon or button:CreateTexture(nil, "OVERLAY", nil, 0)
				button.icon:SetPoint("TOPRIGHT", button, "TOPLEFT", -1,0)
				button.icon:SetPoint("BOTTOMRIGHT", button, "BOTTOMLEFT", -1,0)
				button.icon:SetWidth(button:GetHeight())
				button.icon:SetTexture("Interface/AddOns/Lorekeeper/Assets/Textures/TEMP")
				button.texHL = button.texHL or button:CreateTexture(nil, "OVERLAY", nil, 2)
				button.texHL:SetAllPoints(true)
				button.texHL:SetAtlas("PetList-ButtonHighlight")
				button.texHL:Hide()
				button.texSel = button.texSel or button:CreateTexture(nil, "OVERLAY", nil, 1)
				button.texSel:SetAllPoints(true)
				button.texSel:SetAtlas("PetList-ButtonSelect")
				button.texSel:Hide()
				button.textFont = button.textFont or button:CreateFontString(nil, "OVERLAY")
				button.textFont:SetFontObject("GameTooltipTextSmall")
				--button.textFont:SetFont(select(1,GameTooltipTextSmall:GetFont()), 12)
				button.textFont:SetPoint("TOPLEFT", button, "TOPLEFT", 5,-3)
				button.textFont:SetPoint("BOTTOMRIGHT", button, "BOTTOMRIGHT", -5,2)
				button.textFont:SetJustifyH("LEFT")
				button.textFont:SetJustifyV("TOP")
				button.textFont:SetText(source[itemID]["base"]["title"], 1, 1, 1, 1, true)
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
					local textBody = source[itemID]["base"]["text"]
					local textTitle = source[itemID]["base"]["title"]
					local isHTML = string.lower(textBody[pageNum]):find("<html>")
					local singlePage = source[itemID]["base"]["singlePage"]
					local material = source[itemID]["base"]["material"] or "default"
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
						maxPages = #source[itemID]["base"]["text"]
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
							local textBody = source[itemID]["base"]["text"]
							local textTitle = source[itemID]["base"]["title"]
							local isHTML = string.lower(textBody[pageNum]):find("<html>")
							local singlePage = source[itemID]["base"]["singlePage"]

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
							local textBody = source[itemID]["base"]["text"]
							local textTitle = source[itemID]["base"]["title"]
							local isHTML = string.lower(textBody[pageNum]):find("<html>")
							local singlePage = source[itemID]["base"]["singlePage"]

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