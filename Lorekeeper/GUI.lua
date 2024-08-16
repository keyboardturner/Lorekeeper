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

-- Scroll frame
LoreKGUI.ItemScrollFrame = CreateFrame("ScrollFrame", "LoreKItemScrollFrame", LoreKGUI, "ScrollFrameTemplate")
local ItemScrollFrame = LoreKGUI.ItemScrollFrame
ItemScrollFrame:SetWidth(200)
ItemScrollFrame:SetPoint("TOPLEFT", LoreKGUI.TopTileStreaks, "TOPLEFT", 10, -60)
ItemScrollFrame:SetPoint("BOTTOMLEFT", LoreKGUI, "BOTTOMLEFT", 10, 5)

LoreKGUI.ItemScrollChild = CreateFrame("Frame", "LoreKItemScrollChild", ItemScrollFrame)
local ItemScrollChild = LoreKGUI.ItemScrollChild
ItemScrollChild:SetSize(ItemScrollFrame:GetWidth(), 1) -- Height will adjust based on content
ItemScrollFrame:SetScrollChild(ItemScrollChild)

-- Display frame on the right
LoreKGUI.DisplayFrame = CreateFrame("Frame", "LoreKDisplayFrame", LoreKGUI)
local DisplayFrame = LoreKGUI.DisplayFrame
DisplayFrame:SetSize(360, 300)
DisplayFrame:SetPoint("TOPLEFT", LoreKGUI.TopTileStreaks, "TOPLEFT", 220,0)
DisplayFrame:SetPoint("BOTTOMRIGHT", LoreKGUI, "BOTTOMRIGHT",0,5)
DisplayFrame.bg = DisplayFrame:CreateTexture(nil, "BACKGROUND")
DisplayFrame.bg:SetAllPoints(true)
DisplayFrame.bg:SetColorTexture(0.1, 0.1, 0.1, 0.8)
DisplayFrame.TextArea = CreateFrame("Frame", nil, LoreKGUI)
DisplayFrame.TextArea:SetPoint("TOPLEFT", DisplayFrame, "TOPLEFT", 25,-90)
DisplayFrame.TextArea:SetPoint("BOTTOMRIGHT", DisplayFrame, "BOTTOMRIGHT", -25,20)
DisplayFrame.TitleArea = CreateFrame("Frame", nil, LoreKGUI)
DisplayFrame.TitleArea:SetPoint("TOP", DisplayFrame.TextArea, "TOP", 0,25)
DisplayFrame.TitleArea:SetWidth(DisplayFrame.TextArea:GetWidth())
DisplayFrame.TitleArea:SetHeight(20)

DisplayFrame.TextArea.textBody = DisplayFrame.TextArea:CreateFontString(nil, "OVERLAY")
DisplayFrame.TextArea.textBody:SetFontObject("GameFontHighlightLarge") -- make into option later
DisplayFrame.TextArea.textBody:SetAllPoints(DisplayFrame.TextArea)
DisplayFrame.TextArea.textBody:SetJustifyH("LEFT")
DisplayFrame.TextArea.textBody:SetJustifyV("TOP")
DisplayFrame.TextArea.textTitle = DisplayFrame.TextArea:CreateFontString(nil, "OVERLAY")
DisplayFrame.TextArea.textTitle:SetFontObject("GameFontHighlightLarge") -- make into option later
DisplayFrame.TextArea.textTitle:SetAllPoints(DisplayFrame.TitleArea)

DisplayFrame.TextArea.textHTML = CreateFrame("SimpleHTML", nil, DisplayFrame.TextArea)
DisplayFrame.TextArea.textHTML:SetPoint("TOP", DisplayFrame.TextArea, "TOP", 0, 0)
DisplayFrame.TextArea.textHTML:SetPoint("BOTTOM", DisplayFrame.TextArea, "BOTTOM", 0, 0)
DisplayFrame.TextArea.textHTML:SetWidth(DisplayFrame.TextArea:GetWidth())
-- Set the font for different HTML tags
DisplayFrame.TextArea.textHTML:SetFont("h1", "Fonts\\FRIZQT__.TTF", 18, "OUTLINE")
DisplayFrame.TextArea.textHTML:SetFont("h2", "Fonts\\FRIZQT__.TTF", 16, "OUTLINE")
DisplayFrame.TextArea.textHTML:SetFont("p", "Fonts\\FRIZQT__.TTF", 12, "OUTLINE")

LoreKGUI.PrevPageButton = CreateFrame("Button", nil, DisplayFrame, "PagingControlsPrevPageButtonTemplate")
LoreKGUI.NextPageButton = CreateFrame("Button", nil, DisplayFrame, "PagingControlsNextPageButtonTemplate")
LoreKGUI.PrevPageButton:SetPoint("BOTTOM", DisplayFrame, "BOTTOM", -20,50)
LoreKGUI.NextPageButton:SetPoint("BOTTOM", DisplayFrame, "BOTTOM", 20,50)
LoreKGUI.PageNumber = DisplayFrame.TextArea:CreateFontString(nil, "OVERLAY")
LoreKGUI.PageNumber:SetFontObject("GameFontHighlightLarge") -- make into option later
LoreKGUI.PageNumber:SetPoint("RIGHT", LoreKGUI.PrevPageButton, "LEFT", -15, 0)
--LoreKGUI.PageNumber:SetText("[PH]") -- Test 
LoreKGUI.PageNumber:SetJustifyH("RIGHT")
LoreKGUI.PrevPageButton:Disable()
LoreKGUI.NextPageButton:Disable()

LoreKGUI.Events = CreateFrame("Frame")
LoreKGUI.Events:RegisterEvent("ADDON_LOADED")

function LoreKGUI.Initialize(self, event, arg1)
	if event == "ADDON_LOADED" and arg1 == "Lorekeeper" then

		-- Function to update the scroll frame content
		function LoreKGUI.UpdateItemScrollFrame(searchText)
			-- Clear existing buttons
			for i, button in ipairs(ItemScrollChild.buttons or {}) do
				button:Hide()
			end

			-- Create new buttons based on the search filter
			local filteredItems = {}
			for itemID, itemData in pairs(LoreK_DB) do
				local title = LoreK_DB[itemID]["base"]["title"]
				if title:lower():find(searchText) then
					table.insert(filteredItems, itemID)
				end
			end

			-- Sort filtered items alphabetically by their title
			table.sort(filteredItems, function(a, b)
				local titleA = LoreK_DB[a]["base"]["title"]:lower()
				local titleB = LoreK_DB[b]["base"]["title"]:lower()
				return titleA < titleB
			end)

			ItemScrollChild.buttons = ItemScrollChild.buttons or {}
			for i, itemID in ipairs(filteredItems) do
				local button = ItemScrollChild.buttons[i] or CreateFrame("Button", nil, ItemScrollChild, "UIPanelButtonTemplate")
				button:SetSize(180, 20)
				button:SetPoint("TOPLEFT", ItemScrollChild, "TOPLEFT", 10, -((i - 1) * 22))
				button:SetText(LoreK_DB[itemID]["base"]["title"], 1,1,1,1,true)
				button:SetScript("OnClick", function()
					local maxPages = 1
					local pageNum = 1
					local textBody = LoreK_DB[itemID]["base"]["text"]
					local textTitle = LoreK_DB[itemID]["base"]["title"]
					local isHTML = string.lower(textBody[pageNum]):find("<html>")
					local singlePage = LoreK_DB[itemID]["base"]["singlePage"]
					LoreKGUI.PrevPageButton:Disable()
					LoreKGUI.NextPageButton:Disable()
					LoreKGUI.PageNumber:SetText("")
					if not singlePage then
						maxPages = #LoreK_DB[itemID]["base"]["text"]
						local pageText = string.format(PAGE_NUMBER_WITH_MAX, pageNum, maxPages)
						LoreKGUI.PageNumber:SetText(pageText)
						LoreKGUI.NextPageButton:Enable()
						LoreKGUI.PrevPageButton:SetScript("OnClick", function()
							if pageNum ~= 1 then
								pageNum = pageNum-1
							end
							if pageNum == 1 then
								LoreKGUI.PrevPageButton:Disable()
							end
							LoreKGUI.NextPageButton:Enable()

							local pageText = string.format(PAGE_NUMBER_WITH_MAX, pageNum, maxPages)
							local textBody = LoreK_DB[itemID]["base"]["text"]
							local textTitle = LoreK_DB[itemID]["base"]["title"]
							local isHTML = string.lower(textBody[pageNum]):find("<html>")
							local singlePage = LoreK_DB[itemID]["base"]["singlePage"]

							LoreKGUI.PageNumber:SetText(pageText)
							DisplayFrame.TextArea.textTitle:SetText(textTitle,1,1,1,1,true) -- color option later
							if isHTML then
								DisplayFrame.TextArea.textHTML:SetText(textBody[pageNum]) -- color option later
								DisplayFrame.TextArea.textBody:SetText("")
							else
								DisplayFrame.TextArea.textBody:SetText(textBody[pageNum],1,1,1,1,true) -- color option later
								DisplayFrame.TextArea.textHTML:SetText("") -- color option later
							end
						end)
						LoreKGUI.NextPageButton:SetScript("OnClick", function()
							if pageNum ~= maxPages then
								pageNum = pageNum+1
							end
							if pageNum == maxPages then
								LoreKGUI.NextPageButton:Disable()
							end
							LoreKGUI.PrevPageButton:Enable()

							local pageText = string.format(PAGE_NUMBER_WITH_MAX, pageNum, maxPages)
							local textBody = LoreK_DB[itemID]["base"]["text"]
							local textTitle = LoreK_DB[itemID]["base"]["title"]
							local isHTML = string.lower(textBody[pageNum]):find("<html>")
							local singlePage = LoreK_DB[itemID]["base"]["singlePage"]

							LoreKGUI.PageNumber:SetText(pageText)
							DisplayFrame.TextArea.textTitle:SetText(textTitle,1,1,1,1,true) -- color option later
							if isHTML then
								DisplayFrame.TextArea.textHTML:SetText(textBody[pageNum]) -- color option later
								DisplayFrame.TextArea.textBody:SetText("")
							else
								DisplayFrame.TextArea.textBody:SetText(textBody[pageNum],1,1,1,1,true) -- color option later
								DisplayFrame.TextArea.textHTML:SetText("") -- color option later
							end
						end)

					end
					DisplayFrame.TextArea.textTitle:SetText(textTitle,1,1,1,1,true) -- color option later
					if isHTML then
						DisplayFrame.TextArea.textHTML:SetText(textBody[pageNum]) -- color option later
						DisplayFrame.TextArea.textBody:SetText("")
					else
						DisplayFrame.TextArea.textBody:SetText(textBody[pageNum],1,1,1,1,true) -- color option later
						DisplayFrame.TextArea.textHTML:SetText("") -- color option later
					end
				end)
				button:Show()
				ItemScrollChild.buttons[i] = button
			end

			ItemScrollChild:SetHeight(#filteredItems * 22)
		end

		-- Search box
		local SearchBox = CreateFrame("EditBox", "LoreKSearchBox", LoreKGUI, "SearchBoxTemplate")
		SearchBox:SetSize(200, 20)
		SearchBox:SetPoint("TOPLEFT", LoreKGUI.TopTileStreaks, "TOPLEFT", 10, -35)
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