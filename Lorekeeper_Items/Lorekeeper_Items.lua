local _, LK = ... 

if not Lorekeeper_API or not Lorekeeper_API.LK then return end

local LoreKGUI = Lorekeeper_API.LK.LoreKGUI
local LK_Local = Lorekeeper_API.LK 

local MAX_EXPANSION_ID = LE_EXPANSION_LEVEL_CURRENT
local MAX_QUALITY_ID = 8

local ItemsFilters = {
	onlyDescription = false,
	expansions = {},
	qualities = {},
	types = {
		quest = true,
		reagent = true,
		other = true,
	}
}

for i = 0, MAX_EXPANSION_ID do ItemsFilters.expansions[i] = true end
for i = 0, MAX_QUALITY_ID do ItemsFilters.qualities[i] = true end


local function GetItemFlavorText(itemID)
	if not itemID then return "" end

	if LitDB and LitDB.CustomTexts and LitDB.CustomTexts[tostring(itemID)] then
		return LitDB.CustomTexts[tostring(itemID)]
	end

	if LK["LocalData"] and LK["LocalData"]["questItems"] and LK["LocalData"]["questItems"][itemID] then
		local localData = LK["LocalData"]["questItems"][itemID]
		if localData.itemDescription and localData.itemDescription ~= "" then
			return localData.itemDescription
		end
	end

	if _G.LoreItemTooltips_Database and _G.LoreItemTooltips_Database[tostring(itemID)] then
		local text = _G.LoreItemTooltips_Database[tostring(itemID)]
		if type(text) == "number" and _G.LoreItemTooltips_Database[tostring(text)] then
			return _G.LoreItemTooltips_Database[tostring(text)]
		end
		return text
	end

	local tooltipData = C_TooltipInfo.GetItemByID(itemID)
	if not tooltipData then return "" end

	for _, line in ipairs(tooltipData.lines) do
		if line.leftText and line.leftColor then
			if line.leftColor.r > 0.9 and line.leftColor.g > 0.8 and line.leftColor.b < 0.2 then
				return line.leftText
			end
			if string.match(line.leftText, "^[\"'].+[\"']$") then
				return line.leftText
			end
		end
	end
	return "" 
end

local function StoreItemData(itemID, callback)
	if not itemID then return end

	if LK["LocalData"] and LK["LocalData"]["questItems"] and LK["LocalData"]["questItems"][itemID] then
		if callback then callback() end
		return
	end

	local item = Item:CreateFromItemID(itemID)
	if item:IsItemEmpty() then return end

	item:ContinueOnItemLoad(function()
		local itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture, sellPrice, classID, subclassID, bindType, expansionID, setID, isCraftingReagent = C_Item.GetItemInfo(itemID)
		
		local description = GetItemFlavorText(itemID)

		if not LoreKItems_DB["items"][itemID] then
			LoreKItems_DB["items"][itemID] = { 
				id = itemID, 
				dateObtained = date("%Y-%m-%d") 
			}
		end

		local dbEntry = LoreKItems_DB["items"][itemID]
		
		dbEntry.itemName = itemName
		dbEntry.itemQuality = itemQuality
		dbEntry.itemTexture = itemTexture
		dbEntry.expansionID = expansionID
		dbEntry.isCraftingReagent = isCraftingReagent
		dbEntry.itemDescription = description

		if callback then callback() end
	end)
end

local function CleanupStoredData()
	if not LK["LocalData"] or not LK["LocalData"]["questItems"] then return end
	if not LoreKItems_DB or not LoreKItems_DB["items"] then return end

	local count = 0
	for itemID, data in pairs(LoreKItems_DB["items"]) do
		if LK["LocalData"]["questItems"][itemID] then
			if data.itemName or data.itemTexture then
				data.itemName = nil
				data.itemQuality = nil
				data.itemTexture = nil
				data.expansionID = nil
				data.isCraftingReagent = nil
				data.itemDescription = nil
				count = count + 1
			end
		end
	end
	
	if count > 0 and LoreK_DB.settings.debugAdvanced then
		print(string.format("|cFFFFF569Lorekeeper:|r Cleaned up %d items present in LocalData.", count))
	end
end

local function MigrateQuestItems()
	if not LoreK_DB or not LoreK_DB["questItems"] then return end
	
	if not LoreKItems_DB then LoreKItems_DB = { ["items"] = {} } end
	if not LoreKItems_DB["items"] then LoreKItems_DB["items"] = {} end

	for itemID, data in pairs(LoreK_DB["questItems"]) do
		if not LoreKItems_DB["items"][itemID] then
			LoreKItems_DB["items"][itemID] = {
				id = itemID,
				dateObtained = data.dateObtained or date("%Y-%m-%d"), 
				isQuestItem = data.isQuestItem, 
			}
			StoreItemData(itemID)
		end
	end
end

local function ScanCustomItems()
	if not LitDB or not LitDB.CustomTexts then return end

	for itemIDStr, _ in pairs(LitDB.CustomTexts) do
		local itemID = tonumber(itemIDStr)
		if itemID and not LoreKItems_DB["items"][itemID] then
			local inLocal = LK["LocalData"] and LK["LocalData"]["questItems"] and LK["LocalData"]["questItems"][itemID]
			
			if not inLocal then
				LoreKItems_DB["items"][itemID] = {
					id = itemID,
					dateObtained = date("%Y-%m-%d"),
					source = "CustomText"
				}
				StoreItemData(itemID)
			end
		end
	end
end

StaticPopupDialogs["LOREKEEPER_ADD_CUSTOM_LIT"] = {
	text = "Enter custom flavor text for %s:",
	button1 = "Save",
	button2 = "Cancel",
	hasEditBox = true,
	OnAccept = function(self, data)
		local text = self.EditBox:GetText()
		if LitDB and LitDB.CustomTexts then
			LitDB.CustomTexts[tostring(data.id)] = text
			StoreItemData(data.id, function()
			LoreKGUI.RefreshItemsText(data.id)
			end)
		else
			print("|cFFFFF569Lorekeeper:|r LoreItemTooltips (LitDB) not found.")
		end
	end,
	EditBoxOnEnterPressed = function(self, data)
		local text = self:GetParent().EditBox:GetText()
		 if LitDB and LitDB.CustomTexts then
			LitDB.CustomTexts[tostring(data.id)] = text
			StoreItemData(data.id, function()
			LoreKGUI.RefreshItemsText(data.id)
			end)
		end
		self:GetParent():Hide()
	end,
	OnShow = function(self, data)
		if LitDB and LitDB.CustomTexts and LitDB.CustomTexts[tostring(data.id)] then
			self.EditBox:SetText(LitDB.CustomTexts[tostring(data.id)])
		end
		self.EditBox:SetFocus()
	end,
	timeout = 0,
	whileDead = true,
	hideOnEscape = true,
	preferredIndex = 3,
}

local LJ_Items = CreateFrame("Frame")
LJ_Items:RegisterEvent("ADDON_LOADED")
LJ_Items:RegisterEvent("CHAT_MSG_LOOT")

function LJ_Items:OnEvent(event, arg1)
	if event == "ADDON_LOADED" and arg1 == "Lorekeeper_Items" then
		if not LoreKItems_DB then
			LoreKItems_DB = { ["items"] = {} }
		end
		
		CleanupStoredData()
		MigrateQuestItems()
		ScanCustomItems()
		LoreKGUI.PopulateItemsList()

		if Lorekeeper_API.SetUpItemsColorsAndTextures then
			Lorekeeper_API.SetUpItemsColorsAndTextures()
		end
	end

	if event == "CHAT_MSG_LOOT" then
		local itemID = arg1:match("item:(%d+):")
		itemID = tonumber(itemID)
		if not itemID then return end

		local _, _, _, _, _, classID = C_Item.GetItemInfoInstant(itemID)

		if classID == 12 then
			if not LoreKItems_DB["items"][itemID] then
				LoreKItems_DB["items"][itemID] = {
					id = itemID,
					dateObtained = date("%Y-%m-%d"),
				}
				StoreItemData(itemID, function() 
					if LoreKGUI:IsVisible() then
						LoreKGUI.PopulateItemsList()
					end
				end)
			end
		end
	end
end
LJ_Items:SetScript("OnEvent", LJ_Items.OnEvent)

LoreKGUI.ItemsDisplayFrame = CreateFrame("Frame", "LoreKItemsDisplayFrame", LoreKGUI.ItemsPanel, "InsetFrameTemplate3")
local ItemsDisplayFrame = LoreKGUI.ItemsDisplayFrame
ItemsDisplayFrame:SetWidth(210)
ItemsDisplayFrame:SetPoint("TOPLEFT", LoreKGUI.ItemsPanel, "TOPLEFT", 0, -65)
ItemsDisplayFrame:SetPoint("BOTTOMLEFT", LoreKGUI.ItemsPanel, "BOTTOMLEFT", 0, 30)

LoreKGUI.ItemsTextDisplayFrame = CreateFrame("Frame", "LoreKItemsTextDisplayFrame", LoreKGUI.ItemsPanel, "InsetFrameTemplate4")
local ItemsTextDisplayFrame = LoreKGUI.ItemsTextDisplayFrame
ItemsTextDisplayFrame:SetPoint("TOPLEFT", ItemsDisplayFrame, "TOPRIGHT", 19, 0)
ItemsTextDisplayFrame:SetPoint("BOTTOMRIGHT", LoreKGUI.ItemsPanel, "BOTTOMRIGHT", -20, 30)

ItemsTextDisplayFrame.bg = ItemsTextDisplayFrame:CreateTexture(nil, "BACKGROUND")
ItemsTextDisplayFrame.bg:SetPoint("TOPLEFT", ItemsTextDisplayFrame, "TOPLEFT", 3, -40)
ItemsTextDisplayFrame.bg:SetPoint("BOTTOMRIGHT", ItemsTextDisplayFrame, "BOTTOMRIGHT", -4, 5)
ItemsTextDisplayFrame.bg:SetAtlas("QuestBG-Parchment") 

ItemsTextDisplayFrame.TitleBackdrop = CreateFrame("Frame", nil, ItemsTextDisplayFrame)
local TitleBackdrop = ItemsTextDisplayFrame.TitleBackdrop
TitleBackdrop:SetPoint("TOP", ItemsTextDisplayFrame, "TOP", 0, -4)
TitleBackdrop:SetWidth(ItemsTextDisplayFrame:GetWidth()-7)
TitleBackdrop:SetHeight(48)
TitleBackdrop.tex = TitleBackdrop:CreateTexture()
TitleBackdrop.tex:SetAllPoints(true)
TitleBackdrop.tex:SetAtlas("StoryHeader-BG")

ItemsTextDisplayFrame.ItemTitle = TitleBackdrop:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
ItemsTextDisplayFrame.ItemTitle:SetPoint("CENTER", TitleBackdrop, "CENTER", 0, 2)

ItemsTextDisplayFrame.FlavorText = ItemsTextDisplayFrame:CreateFontString(nil, "OVERLAY", "QuestFont_Huge")
ItemsTextDisplayFrame.FlavorText:SetPoint("TOPLEFT", TitleBackdrop, "BOTTOMLEFT", 20, -50)
ItemsTextDisplayFrame.FlavorText:SetPoint("BOTTOMRIGHT", ItemsTextDisplayFrame, "BOTTOMRIGHT", -20, 20)
ItemsTextDisplayFrame.FlavorText:SetJustifyH("CENTER")
ItemsTextDisplayFrame.FlavorText:SetJustifyV("TOP")
ItemsTextDisplayFrame.FlavorText:SetTextColor(0.2, 0.15, 0.1, 1)
ItemsTextDisplayFrame.FlavorText:SetText("")

ItemsTextDisplayFrame.AddTextButton = CreateFrame("Button", nil, ItemsTextDisplayFrame, "UIPanelButtonTemplate")
ItemsTextDisplayFrame.AddTextButton:SetPoint("BOTTOMRIGHT", ItemsTextDisplayFrame, "BOTTOMRIGHT", -10, 10)
ItemsTextDisplayFrame.AddTextButton:SetSize(120, 22)
ItemsTextDisplayFrame.AddTextButton:SetText("Edit Custom Text")
ItemsTextDisplayFrame.AddTextButton:SetScript("OnClick", function()
	if ItemsTextDisplayFrame.currentItemID then
		local itemID = ItemsTextDisplayFrame.currentItemID
		local itemName = "Item"
		
		if LK["LocalData"] and LK["LocalData"]["questItems"] and LK["LocalData"]["questItems"][itemID] then
			itemName = LK["LocalData"]["questItems"][itemID].itemName
		elseif LoreKItems_DB["items"][itemID] and LoreKItems_DB["items"][itemID].itemName then
			itemName = LoreKItems_DB["items"][itemID].itemName
		else
			itemName = C_Item.GetItemInfo(itemID) or "Item"
		end
		
		StaticPopup_Show("LOREKEEPER_ADD_CUSTOM_LIT", itemName, nil, {id = itemID})
	end
end)
ItemsTextDisplayFrame.AddTextButton:Disable()

function Lorekeeper_API.SetUpItemsColorsAndTextures()
	if not LoreK_DB or not LoreK_DB["settings"] or not LoreK_DB["settings"]["colors"] then return end

	local colors = LoreK_DB["settings"]["colors"]
	
	if LoreK_DB["settings"]["overrideMaterials"] and LoreK_DB["settings"]["material"] then
		ItemsTextDisplayFrame.bg:SetAtlas(LoreK_DB["settings"]["material"])
	else
		ItemsTextDisplayFrame.bg:SetAtlas("QuestBG-Parchment")
	end

	ItemsTextDisplayFrame.bg:SetVertexColor(ColorMixin.GetRGBA(colors["parchment"]))
	
	if TitleBackdrop.tex then
		TitleBackdrop.tex:SetVertexColor(ColorMixin.GetRGBA(colors["title"]))
	end
	
	if ItemsTextDisplayFrame.ItemTitle then
		ItemsTextDisplayFrame.ItemTitle:SetTextColor(ColorMixin.GetRGBA(colors["titleText"]))
	end
	
	if ItemsTextDisplayFrame.FlavorText then
		ItemsTextDisplayFrame.FlavorText:SetTextColor(ColorMixin.GetRGBA(colors["p"]))
	end
end

function LoreKGUI.RefreshItemsText(itemID)
	if not itemID then return end
	
	Lorekeeper_API.SetUpItemsColorsAndTextures()

	StoreItemData(itemID, function()
	end)

	local flavorText = GetItemFlavorText(itemID)
	
	local itemName = "Unknown Item"
	
	if LK["LocalData"] and LK["LocalData"]["questItems"] and LK["LocalData"]["questItems"][itemID] then
		itemName = LK["LocalData"]["questItems"][itemID].itemName or itemName
	elseif LoreKItems_DB["items"][itemID] and LoreKItems_DB["items"][itemID].itemName then
		itemName = LoreKItems_DB["items"][itemID].itemName
	else
		local infoName = C_Item.GetItemInfo(itemID)
		if infoName then itemName = infoName end
	end
	
	ItemsTextDisplayFrame.ItemTitle:SetText(itemName)
	ItemsTextDisplayFrame.currentItemID = itemID
	
	if flavorText and flavorText ~= "" then
		ItemsTextDisplayFrame.FlavorText:SetText(flavorText:gsub('^"',''):gsub('"$',''))
	else
		ItemsTextDisplayFrame.FlavorText:SetText(LK["NoDescription"] or "No description available.")
	end
	
	ItemsTextDisplayFrame.AddTextButton:Enable()
end

local function ItemsInitializer(button, data)
	local itemID = data.id
	
	local itemName
	local itemQuality
	local itemTexture

	if LK["LocalData"] and LK["LocalData"]["questItems"] and LK["LocalData"]["questItems"][itemID] then
		local ld = LK["LocalData"]["questItems"][itemID]
		itemName = ld.itemName
		itemQuality = ld.itemQuality
		itemTexture = ld.itemTexture
	end

	if not itemName and LoreKItems_DB["items"][itemID] then
		local sv = LoreKItems_DB["items"][itemID]
		itemName = sv.itemName
		itemQuality = sv.itemQuality
		itemTexture = sv.itemTexture
	end

	if not itemName or not itemTexture then 
		local infoName, _, infoQuality, _, _, _, _, _, _, infoTexture = C_Item.GetItemInfo(itemID)
		
		if infoName then
			itemName = infoName
			itemQuality = infoQuality
			itemTexture = infoTexture
			StoreItemData(itemID)
		else
			itemName = "Loading..."
			itemTexture = 134400
		end
	end

	button.tex = button.tex or button:CreateTexture(nil, "OVERLAY", nil, 0)
	button.tex:SetPoint("TOPLEFT", button, "TOPLEFT", button:GetHeight()+2, 0)
	button.tex:SetPoint("BOTTOMRIGHT", button, "BOTTOMRIGHT", 0, 0)
	button.tex:SetAtlas("PetList-ButtonBackground")

	button.icon = button.icon or CreateFrame("Frame", nil, button)
	button.icon:SetPoint("TOPRIGHT", button.tex, "TOPLEFT", -1, 0)
	button.icon:SetPoint("BOTTOMRIGHT", button.tex, "BOTTOMLEFT", -1, 0)
	button.icon:SetWidth(button:GetHeight())
	
	button.icon.tex = button.icon.tex or button.icon:CreateTexture(nil, "OVERLAY", nil, 0)
	button.icon.tex:SetTexture(itemTexture)
	button.icon.tex:SetAllPoints(button.icon)

	button.texHL = button.texHL or button:CreateTexture(nil, "OVERLAY", nil, 3)
	button.texHL:SetAllPoints(button.tex)
	button.texHL:SetAtlas("PetList-ButtonHighlight")
	button.texHL:Hide()

	button.texSel = button.texSel or button:CreateTexture(nil, "OVERLAY", nil, 3)
	button.texSel:SetAllPoints(button.tex)
	button.texSel:SetAtlas("PetList-ButtonSelect")
	button.texSel:SetShown(LoreKGUI.ItemsSelectionBehavior:IsElementDataSelected(data))

	button.textFont = button.textFont or button:CreateFontString(nil, "OVERLAY", "GameTooltipTextSmall")
	button.textFont:SetPoint("TOPLEFT", button.tex, "TOPLEFT", 5, -3)
	button.textFont:SetPoint("BOTTOMRIGHT", button.tex, "BOTTOMRIGHT", -5, 2)
	button.textFont:SetJustifyH("LEFT")
	button.textFont:SetJustifyV("MIDDLE")
	button.textFont:SetText(itemName)
	
	if itemQuality then
		local r, g, b = C_Item.GetItemQualityColor(itemQuality)
		button.textFont:SetTextColor(r, g, b, 1)
	else
		button.textFont:SetTextColor(1, 1, 1, 1)
	end

	button:SetScript("OnEnter", function(self)
		self.texHL:Show()
		GameTooltip:SetOwner(self, "ANCHOR_TOP")
		if itemID then
			GameTooltip:SetItemByID(itemID)
			GameTooltip:Show()
		end
	end)

	button:SetScript("OnLeave", function(self)
		self.texHL:Hide()
		GameTooltip:Hide()
	end)

	button:SetScript("OnClick", function(self, btn)
		LoreKGUI.ItemsSelectionBehavior:Select(self)
		
		if itemName == "Loading..." then
			StoreItemData(itemID, function()
				LoreKGUI.RefreshItemsText(itemID)
				local freshName = C_Item.GetItemInfo(itemID)
				if freshName then button.textFont:SetText(freshName) end
			end)
		end
		
		LoreKGUI.RefreshItemsText(itemID)
		PlaySound(SOUNDKIT.UI_JOURNEYS_OPEN_LORE_BOOK, "SFX", true)
	end)
end


LoreKGUI.ItemsScrollBox = CreateFrame("Frame", nil, ItemsDisplayFrame, "WowScrollBoxList")
local ItemsScrollBox = LoreKGUI.ItemsScrollBox
ItemsScrollBox:SetPoint("TOPLEFT", ItemsDisplayFrame, "TOPLEFT", 2, -25)
ItemsScrollBox:SetPoint("BOTTOMRIGHT", ItemsDisplayFrame, "BOTTOMRIGHT", -2, 3)

ItemsScrollBox.ScrollBar = CreateFrame("EventFrame", nil, ItemsDisplayFrame, "MinimalScrollBar")
ItemsScrollBox.ScrollBar:SetPoint("TOPLEFT", ItemsScrollBox, "TOPRIGHT", 7, 20)
ItemsScrollBox.ScrollBar:SetPoint("BOTTOMLEFT", ItemsScrollBox, "BOTTOMRIGHT", 7, 0)

local ItemsDataProvider = CreateDataProvider()
local ItemsScrollView = CreateScrollBoxListLinearView()

ScrollUtil.InitScrollBoxListWithScrollBar(ItemsScrollBox, ItemsScrollBox.ScrollBar, ItemsScrollView)
ItemsScrollView:SetElementInitializer("Button", ItemsInitializer)
ItemsScrollView:SetElementExtent(36)
ItemsScrollView:SetDataProvider(ItemsDataProvider)

function LoreKGUI:OnItemsSelectionChanged(data, isSelected)
	local f = self.ItemsScrollBox:FindFrame(data)
	if f then
		f.texSel:SetShown(isSelected)
	end
end

function LoreKGUI:OnItemsFrameInitialized(frame, data)
	local isSelected = self.ItemsSelectionBehavior:IsElementDataSelected(data)
	frame.texSel:SetShown(isSelected)
end

LoreKGUI.ItemsSelectionBehavior = ScrollUtil.AddSelectionBehavior(ItemsScrollBox, SelectionBehaviorFlags.Intrusive)
LoreKGUI.ItemsSelectionBehavior:RegisterCallback("OnSelectionChanged", LoreKGUI.OnItemsSelectionChanged, LoreKGUI)

ScrollUtil.AddInitializedFrameCallback(ItemsScrollBox, LoreKGUI.OnItemsFrameInitialized, LoreKGUI)

function LoreKGUI.PopulateItemsList()
	local items = {}
	local seen = {}
	
	local query = LoreKGUI.ItemsSearchBox:GetText():lower()

	local function checkFilters(id, data)
		local name = data.itemName or ""
		if not name:lower():find(query) then return false end
		
		if ItemsFilters.onlyDescription then
			if not data.itemDescription or data.itemDescription == "" then return false end
		end
		
		local expID = data.expansionID or 0
		if not ItemsFilters.expansions[expID] then return false end

		local qualID = data.itemQuality or 1
		if not ItemsFilters.qualities[qualID] then return false end
		
		local isQuest = data.isQuestItem
		local isReagent = data.isCraftingReagent
		
		if isQuest then
			if not ItemsFilters.types.quest then return false end
		elseif isReagent then
			if not ItemsFilters.types.reagent then return false end
		else
			if not ItemsFilters.types.other then return false end
		end

		return true
	end

	if LK["LocalData"] and LK["LocalData"]["questItems"] then
		for id, data in pairs(LK["LocalData"]["questItems"]) do
			if checkFilters(id, data) then
				tinsert(items, { id = id }) 
				seen[id] = true
			end
		end
	end

	if LoreKItems_DB and LoreKItems_DB["items"] then
		for id, data in pairs(LoreKItems_DB["items"]) do
			if not seen[id] then
				if checkFilters(id, data) then
					tinsert(items, data)
					seen[id] = true
				end
			end
		end
	end

	if _G.LoreItemTooltips_Database then
		for idStr, _ in pairs(_G.LoreItemTooltips_Database) do
			local id = tonumber(idStr)
			if id and not seen[id] then
				if query == "" then 
					tinsert(items, { id = id }) 
					seen[id] = true
					StoreItemData(id)
				end
			end
		end
	end

	table.sort(items, function(a, b) return a.id < b.id end)

	ItemsDataProvider = CreateDataProvider(items)
	ItemsScrollView:SetDataProvider(ItemsDataProvider)
end

LoreKGUI.ItemsSearchBox = CreateFrame("EditBox", "LoreKItemsSearchBox", ItemsDisplayFrame, "SearchBoxTemplate")
LoreKGUI.ItemsSearchBox:SetSize(105, 20)
LoreKGUI.ItemsSearchBox:SetPoint("TOPLEFT", ItemsDisplayFrame, "TOPLEFT", 10, -5)
LoreKGUI.ItemsSearchBox:SetAutoFocus(false)

LoreKGUI.ItemsSearchBox:HookScript("OnTextChanged", function(self)
	LoreKGUI.PopulateItemsList()
end)

LoreKGUI.ItemsFilterDropdown = CreateFrame("DropdownButton", nil, ItemsDisplayFrame, "WowStyle1FilterDropdownTemplate")
LoreKGUI.ItemsFilterDropdown.Text:SetText(LK["filter"])
LoreKGUI.ItemsFilterDropdown:SetPoint("LEFT", LoreKGUI.ItemsSearchBox, "RIGHT", 3, 0)
LoreKGUI.ItemsFilterDropdown:SetSize(80, 20)

local function ItemsFilterHandler(owner, rootDescription)
	
	rootDescription:CreateCheckbox(LK["Description"], function()
		return ItemsFilters.onlyDescription
	end, function()
		ItemsFilters.onlyDescription = not ItemsFilters.onlyDescription
		LoreKGUI.PopulateItemsList()
	end)

	local typeMenu = rootDescription:CreateButton(LK["Type"])
	typeMenu:CreateCheckbox(LK["QuestItem"], function()
		return ItemsFilters.types.quest
	end, function()
		ItemsFilters.types.quest = not ItemsFilters.types.quest
		LoreKGUI.PopulateItemsList()
	end)
	
	typeMenu:CreateCheckbox(LK["CraftingReagent"], function()
		return ItemsFilters.types.reagent
	end, function()
		ItemsFilters.types.reagent = not ItemsFilters.types.reagent
		LoreKGUI.PopulateItemsList()
	end)
	
	typeMenu:CreateCheckbox(LK["Other"], function()
		return ItemsFilters.types.other
	end, function()
		ItemsFilters.types.other = not ItemsFilters.types.other
		LoreKGUI.PopulateItemsList()
	end)

	local qualMenu = rootDescription:CreateButton(LK["Quality"])
	for i = 0, MAX_QUALITY_ID do
		local qName = _G["ITEM_QUALITY"..i.."_DESC"] or (LK["Quality"]..i)
		qualMenu:CreateCheckbox(qName, function()
			return ItemsFilters.qualities[i]
		end, function()
			ItemsFilters.qualities[i] = not ItemsFilters.qualities[i]
			LoreKGUI.PopulateItemsList()
		end)
	end

	local expMenu = rootDescription:CreateButton(LK["Expansion"])
	for i = 0, MAX_EXPANSION_ID do
		local eName = _G["EXPANSION_NAME"..i] or (LK["Expansion"]..i)
		expMenu:CreateCheckbox(eName, function()
			return ItemsFilters.expansions[i]
		end, function()
			ItemsFilters.expansions[i] = not ItemsFilters.expansions[i]
			LoreKGUI.PopulateItemsList()
		end)
	end
end

LoreKGUI.ItemsFilterDropdown:SetupMenu(ItemsFilterHandler)