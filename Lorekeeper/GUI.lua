local _, LK = ...

-- Create the main frame
local LoreKGUI = CreateFrame("Frame", "LoreKMainframe", UIParent, "PortraitFrameTemplateMinimizable")
LoreKGUI:SetPortraitTextureRaw("Interface\\ICONS\\inv_misc_book_16")
LoreKGUI:SetSize(703, 606)
LoreKGUI:SetPoint("CENTER", UIParent, "CENTER")
LoreKGUI:SetMovable(true)
LoreKGUI:EnableMouse(true)
LoreKGUI:RegisterForDrag("LeftButton")
LoreKGUI:SetScript("OnDragStart", LoreKGUI.StartMoving)
LoreKGUI:SetScript("OnDragStop", LoreKGUI.StopMovingOrSizing)
LoreKGUI:SetTitle("[PH] Lorekeeper")


-- Sample items for the scroll frame
local items = {
	"Item 1", "Item 2", "Item 3", "Item 4", "Item 5",
	"Item 6", "Item 7", "Item 8", "Item 9", "Item 10",
	"Item 6", "Item 7", "Item 8", "Item 9", "Item 10",
	"Item 6", "Item 7", "Item 8", "Item 9", "Item 10",
	"Item 6", "Item 7", "Item 8", "Item 9", "Item 10",
}

-- Scroll frame
LoreKGUI.ItemScrollFrame = CreateFrame("ScrollFrame", "LoreKItemScrollFrame", LoreKGUI, "ScrollFrameTemplate")
local ItemScrollFrame = LoreKGUI.ItemScrollFrame
ItemScrollFrame:SetWidth(200)
ItemScrollFrame:SetPoint("TOPLEFT", LoreKGUI.TopTileStreaks, "TOPLEFT", 10, -60)
ItemScrollFrame:SetPoint("BOTTOMLEFT", LoreKGUI, "BOTTOMLEFT", 10, 0)

LoreKGUI.ItemScrollChild = CreateFrame("Frame", "LoreKItemScrollChild", ItemScrollFrame)
local ItemScrollChild = LoreKGUI.ItemScrollChild
ItemScrollChild:SetSize(ItemScrollFrame:GetWidth(), 1) -- Height will adjust based on content
ItemScrollFrame:SetScrollChild(ItemScrollChild)

-- Display frame on the right
LoreKGUI.DisplayFrame = CreateFrame("Frame", "LoreKDisplayFrame", LoreKGUI)
local DisplayFrame = LoreKGUI.DisplayFrame
DisplayFrame:SetSize(360, 300)
DisplayFrame:SetPoint("TOPLEFT", LoreKGUI.TopTileStreaks, "TOPLEFT", 220,0)
DisplayFrame:SetPoint("BOTTOMRIGHT", LoreKGUI, "BOTTOMRIGHT")
DisplayFrame.bg = DisplayFrame:CreateTexture(nil, "BACKGROUND")
DisplayFrame.bg:SetAllPoints(true)
DisplayFrame.bg:SetColorTexture(0.1, 0.1, 0.1, 0.8)
DisplayFrame.TextArea = CreateFrame("Frame", nil, LoreKGUI)
DisplayFrame.TextArea:SetPoint("TOPLEFT", DisplayFrame, "TOPLEFT", 25,-20)
DisplayFrame.TextArea:SetPoint("BOTTOMRIGHT", DisplayFrame, "BOTTOMRIGHT", -25,20)

DisplayFrame.TextArea.text = DisplayFrame.TextArea:CreateFontString(nil, "OVERLAY")
DisplayFrame.TextArea.text:SetFontObject("GameFontHighlightLarge")
DisplayFrame.TextArea.text:SetAllPoints(DisplayFrame.TextArea)

LoreKGUI.Events = CreateFrame("Frame")
LoreKGUI.Events:RegisterEvent("ADDON_LOADED")

function LoreKGUI.Initialize(self, event, arg1)
	if event == "ADDON_LOADED" and arg1 == "Lorekeeper" then

		-- Function to update the scroll frame content
		local function UpdateItemScrollFrame(searchText)
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

			ItemScrollChild.buttons = ItemScrollChild.buttons or {}
			for i, itemID in ipairs(filteredItems) do
				local button = ItemScrollChild.buttons[i] or CreateFrame("Button", nil, ItemScrollChild, "UIPanelButtonTemplate")
				button:SetSize(180, 20)
				button:SetPoint("TOPLEFT", ItemScrollChild, "TOPLEFT", 10, -((i - 1) * 22))
				button:SetText(LoreK_DB[itemID]["base"]["title"], 1,1,1,1,true)
				button:SetScript("OnClick", function()
					DisplayFrame.TextArea.text:SetText(LoreK_DB[itemID]["base"]["text"][1],1,1,1,1,true)
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
			UpdateItemScrollFrame(searchText)
			if SearchBox:HasText() then
				SearchBox.Instructions:Hide()
			else
				SearchBox.Instructions:Show()
			end
		end)

		-- Initialize the scroll frame with no filter
		UpdateItemScrollFrame("")

	end
end

LoreKGUI.Events:SetScript("OnEVent", LoreKGUI.Initialize)