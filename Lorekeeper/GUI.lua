local _, LK = ...

-- Using Blizz's globally accessible frame fade function causes taint with the map
-- So just add their own code in locally

local FrameFaderDriver;
local fadingFrames;
local deferredFadingFrames;

local defaultTTSSettings = {
	queuePages = false,
	volume = 50,
	speed = 0,
	phonetics = true,
};

local function OnUpdate(self, elapsed)
	local isMoving = IsPlayerMoving();
	for frame, setting in pairs(fadingFrames) do
		local fadeOut = isMoving and (not setting.fadePredicate or setting.fadePredicate());
		frame:SetAlpha(DeltaLerp(frame:GetAlpha(), fadeOut and setting.minAlpha or setting.maxAlpha, .1, elapsed));
	end
end

local function MergeDeferredEvents()
	if deferredFadingFrames then
		for frame, setting in pairs(deferredFadingFrames) do
			fadingFrames[frame] = setting;
		end
		deferredFadingFrames = nil;
	end
end

local function OnEvent(self, event, ...)
	if event == "PLAYER_STARTED_MOVING" 
	or event == "PLAYER_STOPPED_MOVING" 
	or event == "PLAYER_IS_GLIDING_CHANGED" 
	or event == "PLAYER_IMPULSE_APPLIED" then
		MergeDeferredEvents();
	end
end

local function InitializeDriver()
	if not FrameFaderDriver then
		fadingFrames = {};

		FrameFaderDriver = CreateFrame("FRAME");
		FrameFaderDriver:SetScript("OnUpdate", OnUpdate);
		FrameFaderDriver:SetScript("OnEvent", OnEvent);
		FrameFaderDriver:RegisterEvent("PLAYER_STARTED_MOVING");
		FrameFaderDriver:RegisterEvent("PLAYER_STOPPED_MOVING");
		FrameFaderDriver:RegisterEvent("PLAYER_IS_GLIDING_CHANGED");
		FrameFaderDriver:RegisterEvent("PLAYER_IMPULSE_APPLIED");
	end
end

local function PackFadeData(minAlpha, maxAlpha, durationSec, fadePredicate)
	return { minAlpha = minAlpha or .5, maxAlpha = maxAlpha or 1, durationSec = durationSec or 1, fadePredicate = fadePredicate };
end

local function RemoveFrameInternal(frame)
	if fadingFrames then
		fadingFrames[frame] = nil;
	end
	if deferredFadingFrames then
		deferredFadingFrames[frame] = nil;
	end
end

local PlayerMovementFrameFader = {};

function PlayerMovementFrameFader.AddFrame(frame, minAlpha, maxAlpha, durationSec, fadePredicate)
	RemoveFrameInternal(frame);

	InitializeDriver();
	fadingFrames[frame] = PackFadeData(minAlpha, maxAlpha, durationSec, fadePredicate);
end

-- The fading won't take effect until the player stops or starts moving again
function PlayerMovementFrameFader.AddDeferredFrame(frame, minAlpha, maxAlpha, durationSec, fadePredicate)
	InitializeDriver();
	RemoveFrameInternal(frame);

	if not deferredFadingFrames then
		deferredFadingFrames = {};
	end
	deferredFadingFrames[frame] = PackFadeData(minAlpha, maxAlpha, durationSec, fadePredicate);
end

function PlayerMovementFrameFader.RemoveFrame(frame)
	local maxAlpha = fadingFrames and fadingFrames[frame] and fadingFrames[frame].maxAlpha;
	if maxAlpha then
		frame:SetAlpha(maxAlpha);
	end

	RemoveFrameInternal(frame, restoreAlpha);
end

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

local PH_PLAYER_NAME = "$PLAYER_NAME$";
local PH_PLAYER_CLASS = "$PLAYER_CLASS$";

local function ReverseNameAndClass(pageText)
	local name = UnitName("player");
	local class = UnitClass("player");
	pageText = pageText:gsub("%$PLAYER_NAME%$", name);
	pageText = pageText:gsub("%$PLAYER_CLASS%$", class);
	return pageText;
end

-- Function to replace words with their phonetic equivalents
local function replaceWithPhonetics(text)
	if not LK["Phonetics"] then return text end
	if not LoreK_DB.settings.TTSSettings.phonetics then return text end
	return text:gsub("[%w']+", function(word)
		local lowerWord = word:lower()

		-- Check if the word itself is in the phoneticTable
		if LK["Phonetics"][lowerWord] then
			return LK["Phonetics"][lowerWord]

		-- Check for possessive form (word ending with 's)
		elseif lowerWord:sub(-2) == "'s" then
			local baseWord = lowerWord:sub(1, -3)  -- Remove the 's for lookup
			if LK["Phonetics"][baseWord] then
				return LK["Phonetics"][baseWord] .. "'s"  -- Append the 's to the phonetic replacement
			end
		end

		-- If no replacement found, return the original word
		return word
	end)
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

local function parseFunc(path, itemID)

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
	return nil; -- or return "Data not found" if you prefer a message
end

--------------------------------------------------------------------------

--------------------------------------------------------------------------

-- Create the main frame
local LoreKGUI = CreateFrame("Frame", "LoreKMainframe", UIParent, "PortraitFrameTemplateMinimizable");
LK["LoreKGUI"] = LoreKGUI
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
LoreKGUI:SetFrameStrata("MEDIUM");
LoreKGUI:Hide();
LoreKGUI:SetScript("OnMouseDown", function(self) self:SetToplevel(true); end);

local HolidaysTheme = {};
HolidaysTheme.Header = CreateFrame("Frame", nil, LoreKGUI);
HolidaysTheme.Header.Resize = .56
HolidaysTheme.Header:SetPoint("CENTER", LoreKGUI, "TOP", 45, -2);
HolidaysTheme.Header:SetSize(2048*HolidaysTheme.Header.Resize,256*HolidaysTheme.Header.Resize);
HolidaysTheme.Header:SetFrameLevel(LoreKGUI.TitleContainer:GetFrameLevel()+50);
HolidaysTheme.Header.tex = HolidaysTheme.Header:CreateTexture(nil, "ARTWORK", nil, 1);
HolidaysTheme.Header.tex:SetAllPoints(true);
HolidaysTheme.Header.tex:SetTexture("Interface\\AddOns\\Lorekeeper\\Assets\\Textures\\HallowsEndTop");

HolidaysTheme.Corner_BL = CreateFrame("Frame", nil, LoreKGUI);
HolidaysTheme.Corner_BL:SetSize(220,80);
HolidaysTheme.Corner_BL:SetFrameLevel(LoreKGUI.TitleContainer:GetFrameLevel()+50);
HolidaysTheme.Corner_BL.tex = HolidaysTheme.Corner_BL:CreateTexture(nil, "ARTWORK", nil, 2);
HolidaysTheme.Corner_BL.tex:SetAllPoints(true);
HolidaysTheme.Corner_BL.tex:SetTexture("Interface\\store\\perksthemehallowsend");
HolidaysTheme.Corner_BL.tex:SetTexCoord(.00098, .21466, .16811, .27642);

HolidaysTheme.Corner_BR = CreateFrame("Frame", nil, LoreKGUI);
HolidaysTheme.Corner_BR:SetSize(220,290);
HolidaysTheme.Corner_BR:SetFrameLevel(LoreKGUI.TitleContainer:GetFrameLevel()+50);
HolidaysTheme.Corner_BR.tex = HolidaysTheme.Corner_BR:CreateTexture(nil, "ARTWORK", nil, 2);
HolidaysTheme.Corner_BR.tex:SetAllPoints(true);
HolidaysTheme.Corner_BR.tex:SetAtlas("perks-theme-hallowsend-tl-box");

local function GetHoliday()
	local numEvents = C_Calendar.GetNumDayEvents(0, C_DateAndTime.GetCurrentCalendarTime().monthDay);

	for i = 1, numEvents do
		local event = C_Calendar.GetHolidayInfo(0, C_DateAndTime.GetCurrentCalendarTime().monthDay, i);
		
		if event and event.name == LK["Holiday_HallowsEnd"] then
			return true;
		end
	end
end

local function HideHolidays()
	for k, v in pairs(HolidaysTheme) do
		v:Hide();
	end
end
HideHolidays();

local function ToggleHolidays()
	if GetHoliday() and LoreK_DB["settings"]["holidayThemes"] then
		for k, v in pairs(HolidaysTheme) do
			v:Show();
		end
	else
		HideHolidays();
	end
end


local MeowFrameMixin = {};

MeowFrameMixin.SoundFileList = {
	3598607, 3598611, 3598615, 3598605,
	3598609, 3598613, 3598617, 3598619,
	3598621, 3598623, 3598625, 3598641,
	3598639, 3598635, 3598637, 3598611,
}

function MeowFrameMixin:OnLoad()
	self.clickCount = 0;
	self.clickThreshold = 20;
	self.timeFrame = .2;
	self.lastClickTime = 0;

	self:RegisterForClicks("AnyDown", "AnyUp");
end

function MeowFrameMixin:OnClick(_, down)
	local portrait = LoreKGUI.PortraitContainer.portrait;
	local currentTime = GetTime();

	if not down then
		portrait:SetTexCoord(0, 1, 0, 1);
	else
		portrait:SetTexCoord(.01, .99, .01, .99);
	end

	if currentTime - self.lastClickTime > self.timeFrame then
		self:ResetClicks();
	end

	self.clickCount = self.clickCount + 1;
	self.lastClickTime = currentTime;

	if self.clickCount >= self.clickThreshold then
		self:ResetClicks();
		self:Mrow();
	end
end

function MeowFrameMixin:ResetClicks()
	self.clickCount = 0
end

function MeowFrameMixin:Mrow()
	local sound = self.SoundFileList[fastrandom(1, #self.SoundFileList)]
	PlaySoundFile(sound, "SFX")
end

LoreKGUI.PortraitContainer.portrait.MeowFrame = CreateFrame("Button", nil, LoreKGUI)
FrameUtil.SpecializeFrameWithMixins(LoreKGUI.PortraitContainer.portrait.MeowFrame, MeowFrameMixin)
LoreKGUI.PortraitContainer.portrait.MeowFrame:SetAllPoints(LoreKGUI.PortraitContainer.portrait)


-- here, we just pass in the table containing our saved color config
local function ShowColorPicker(configTable)
	local r, g, b, a = configTable.r, configTable.g, configTable.b, configTable.a;

	local function OnColorChanged()
		local newR, newG, newB = ColorPickerFrame:GetColorRGB();
		local newA = ColorPickerFrame:GetColorAlpha();
		configTable.r, configTable.g, configTable.b, configTable.a = newR, newG, newB, newA;
		LoreKGUI.SetColors()
	end

	local function OnCancel()
		configTable.r, configTable.g, configTable.b, configTable.a = r, g, b, a;
		LoreKGUI.SetColors()
	end

	local options = {
		swatchFunc = OnColorChanged,
		opacityFunc = OnColorChanged,
		cancelFunc = OnCancel,
		hasOpacity = a ~= nil,
		opacity = a,
		r = r,
		g = g,
		b = b,
	};

	ColorPickerFrame:SetupColorPickerAndShow(options);
end

local HasLoginForTab = false
-- Function to handle tab clicks
local function Tab_OnClick(self)
	PanelTemplates_SetTab(self:GetParent(), self:GetID());
	for _, content in pairs(LoreKGUI.contents) do
		content:Hide();
	end
	self.content:Show();
	PlaySound(SOUNDKIT.IG_CHARACTER_INFO_TAB, "SFX");
	--LoreKMainframeTab2:SetEnabled(true) -- until the GUI implemented

	if HasLoginForTab then
		if not C_AddOns.IsAddOnLoaded("Lorekeeper_Mail") then
			LoreKMainframeTab2:SetEnabled(false);
			LoreKMainframeTab2.Text:SetTextColor(.5,.5,.5);
		else
			Lorekeeper_API.SetUpMailColorsAndTextures();
		end
	end
end

-- Function to set up tabs and their associated content frames
local function SetTabs(frame, numTabs, ...)
	frame.numTabs = numTabs;
	frame.contents = {};

	local frameName = frame:GetName();
	local contents = {};
	local previousTab = nil;
	local firstTab = nil;

	for i = 1, numTabs do
		local tab = CreateFrame("Button", frameName.."Tab"..i, frame, "PanelTabButtonTemplate");
		tab:SetID(i);
		tab:SetText(select(i, ...));
		tab:SetScript("OnClick", Tab_OnClick);

		tab.content = CreateFrame("Frame", nil, LoreKGUI);
		tab.content:SetPoint("TOPLEFT", LoreKGUI, "TOPLEFT", 0, 0);
		tab.content:SetPoint("BOTTOMRIGHT", LoreKGUI, "BOTTOMRIGHT", 0, 0);
		tab.content:Hide();
		--tab.content.bg = tab.content:CreateTexture(nil, "BACKGROUND"); -- just to visually identify the panels
		--tab.content.bg:SetAllPoints(true);
		--tab.content.bg:SetColorTexture(math.random(), math.random(), math.random(), 0.6);

		table.insert(contents, tab.content);
		table.insert(frame.contents, tab.content);

		-- Sort the tab spacing and placement. The first is set, then the rest SetPoint to the previous
		if i == 1 then
			tab:SetPoint("TOPLEFT", LoreKGUI, "BOTTOMLEFT", 11, 2);
			firstTab = tab -- Store the first tab reference

			LoreKGUI.LibraryPanel = CreateFrame("Frame", nil, tab.content);
			LoreKGUI.LibraryPanel:SetPoint("TOPLEFT", tab.content, "TOPLEFT", 0, 0);
			LoreKGUI.LibraryPanel:SetPoint("BOTTOMRIGHT", tab.content, "BOTTOMRIGHT", 0, 0);
		elseif i == 2 then
			LoreKGUI.MailPanel = CreateFrame("Frame", nil, tab.content);
			LoreKGUI.MailPanel:SetPoint("TOPLEFT", tab.content, "TOPLEFT", 0, 0);
			LoreKGUI.MailPanel:SetPoint("BOTTOMRIGHT", tab.content, "BOTTOMRIGHT", 0, 0);

			tab:SetPoint("TOPLEFT", previousTab, "TOPRIGHT", 3, 0);
		elseif i == 3 then

			LoreKGUI.SettingsPanel = CreateFrame("Frame", nil, tab.content);
			LoreKGUI.SettingsPanel:SetPoint("TOPLEFT", tab.content, "TOPLEFT", 0, 0);
			LoreKGUI.SettingsPanel:SetPoint("BOTTOMRIGHT", tab.content, "BOTTOMRIGHT", 0, 0);

			tab:SetPoint("TOPLEFT", previousTab, "TOPRIGHT", 3, 0);
		else
			tab:SetPoint("TOPLEFT", previousTab, "TOPRIGHT", 3, 0);
		end
		previousTab = tab -- Store the current tab to reference in the next iteration
	end

	if firstTab then
		Tab_OnClick(firstTab);
	end

	return unpack(contents);
end

-- Set up the tabs and content frames
local content1, content2, content3 = SetTabs(LoreKGUI, 3, LK["Library"], LK["Mail"], LK["Settings"]);


--LoreKMainframeTab2:SetEnabled(false)
--LoreKMainframeTab3:SetEnabled(false)

--LoreKMainframeTab2.Text:SetTextColor(.5,.5,.5)
--LoreKMainframeTab3.Text:SetTextColor(.5,.5,.5)

LoreKMainframeTab1:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(self, "ANCHOR_TOP");
	GameTooltip:AddLine(LK["Library"], 1, 1, 1);
	GameTooltip:Show();
end);
LoreKMainframeTab1:SetScript("OnLeave", function()
	GameTooltip:Hide();
end);

LoreKMainframeTab2:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(self, "ANCHOR_TOP");
	GameTooltip:AddLine(LK["Mail"], 1, 1, 1);
	--GameTooltip:AddLine(LK["NotYetAvailable"], 1, 0, 0) -- until GUI is implemented
	if not C_AddOns.IsAddOnLoaded("Lorekeeper_Mail") then
		GameTooltip:AddLine(LK["AddonDisabled"], 1, 0, 0)
	end
	GameTooltip:Show();
end);
LoreKMainframeTab2:SetScript("OnLeave", function()
	GameTooltip:Hide();
end);

LoreKMainframeTab3:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(self, "ANCHOR_TOP");
	GameTooltip:AddLine(LK["Settings"], 1, 1, 1);
	GameTooltip:Show();
end);
LoreKMainframeTab3:SetScript("OnLeave", function()
	GameTooltip:Hide();
end);


StaticPopupDialogs["LOREK_DELETE_ENTRIES"] = {
	text = LK["DeleteAllConfirm"],
	button1 = YES,
	button2 = NO,
	OnAccept = function()
		print("[PH] get wrecked, this function is not yet implemented");
	end,
	timeout = 0,
	whileDead = false,
	hideOnEscape = true,
};

--------------------------------------------------------------------------
--------------------------------------------------------------------------
 -- Library Panel
--------------------------------------------------------------------------
--------------------------------------------------------------------------

-- Left Side
LoreKGUI.ItemDisplayFrame = CreateFrame("Frame", "LoreKDisplayFrame", LoreKGUI.LibraryPanel, "InsetFrameTemplate3");
local ItemDisplayFrame = LoreKGUI.ItemDisplayFrame;
ItemDisplayFrame:SetWidth(210);
ItemDisplayFrame:SetPoint("TOPLEFT", LoreKGUI.LibraryPanel, "TOPLEFT", 0, -65);
ItemDisplayFrame:SetPoint("BOTTOMLEFT", LoreKGUI.LibraryPanel, "BOTTOMLEFT", 0, 30);

LoreKGUI.TextCount = CreateFrame("Frame", "LoreKDisplayFrame", LoreKGUI.LibraryPanel, "InsetFrameTemplate3");
local TextCount = LoreKGUI.TextCount;
TextCount:SetSize(130,20);
TextCount:SetPoint("TOPLEFT", LoreKGUI.LibraryPanel, "TOPLEFT", 70, -35);
TextCount.Label = TextCount:CreateFontString(nil, "OVERLAY");
TextCount.Label:SetFont(STANDARD_TEXT_FONT, 10);
TextCount.Label:SetPoint("LEFT", TextCount, "LEFT", 10, 0);
TextCount.Label:SetJustifyH("LEFT");
TextCount.Label:SetJustifyV("MIDDLE");
TextCount.Label:SetText("|cnNORMAL_FONT_COLOR:"..LK["TotalItemsLabel"].."|r")
TextCount.Count = TextCount:CreateFontString(nil, "OVERLAY");
TextCount.Count:SetFont(STANDARD_TEXT_FONT, 10);
TextCount.Count:SetPoint("RIGHT", TextCount, "RIGHT", -10, 0);
TextCount.Count:SetJustifyH("RIGHT");
TextCount.Count:SetJustifyV("MIDDLE");
function TextCount.UpdateCount(current, unread, unobtainables, newTexts)
	if not current then TextCount:Hide(); return; end
	TextCount.unobtainables = unobtainables or 0
	TextCount.Count:SetText(current);

	TextCount.totalText = current;
	TextCount.unread = unread;
	TextCount.newTexts = newTexts;
end

function TextCount.Reminder()
	if TextCount.remind then
		return;
	end
	Print(string.format(LK["PotentialReminder"], TextCount.newTexts));
	TextCount.remind = true; -- don't warn for the rest of the session
end

TextCount:SetScript("OnEnter", function(self)
	local totalText = TextCount.totalText;
	local uncollectedText = TextCount.unread;
	local unobtainables = TextCount.unobtainables;
	local newTexts = TextCount.newTexts;

	GameTooltip:SetOwner(self, "ANCHOR_TOP");
	if totalText and totalText > 0 then
		GameTooltip:AddLine("|cnNORMAL_FONT_COLOR:"..LK["TotalItemsLabel"] ..":|r ".. totalText, 1, 1, 1);
	end
	if uncollectedText and uncollectedText > 0 then
		GameTooltip:AddLine("|cnNORMAL_FONT_COLOR:"..LK["ItemsUncollected"] ..":|r ".. uncollectedText, 1, 1, 1);
	end
	--if unobtainables > 0 then
		--GameTooltip:AddLine("|cnNORMAL_FONT_COLOR:"..LK["Unobtainable"] ..":|r ".. unobtainables, 1, 1, 1);
	--end
	if newTexts and newTexts > 0 then
		TextCount.Reminder()
		GameTooltip:AddLine("|cnNORMAL_FONT_COLOR:"..LK["NewTexts"] ..":|r ".. newTexts, 1, 1, 1);
	end
	GameTooltip:Show();
end);
TextCount:SetScript("OnLeave", function()
	GameTooltip:Hide();
end);

--------------------------------------------------------------------------

-- Right Side
LoreKGUI.TextDisplayFrame = CreateFrame("Frame", "LoreKTextDisplayFrame", LoreKGUI.LibraryPanel, "InsetFrameTemplate4");
local TextDisplayFrame = LoreKGUI.TextDisplayFrame;
TextDisplayFrame:SetPoint("TOPLEFT", ItemDisplayFrame, "TOPRIGHT", 19, 0);
TextDisplayFrame:SetPoint("BOTTOMRIGHT", LoreKGUI.LibraryPanel, "BOTTOMRIGHT",-20,30);
TextDisplayFrame.bg = TextDisplayFrame:CreateTexture(nil, "BACKGROUND", nil, 0);
TextDisplayFrame.bg:SetPoint("TOPLEFT", TextDisplayFrame, "TOPLEFT", 3, -40);
TextDisplayFrame.bg:SetPoint("BOTTOMRIGHT", TextDisplayFrame, "BOTTOMRIGHT", -4, 5);
TextDisplayFrame.bg:SetAtlas("QuestBG-Parchment");
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

TextDisplayFrame.TitleBackdrop = CreateFrame("Frame", nil, TextDisplayFrame);
local TitleBackdrop = TextDisplayFrame.TitleBackdrop;
TitleBackdrop:SetPoint("BOTTOM", TextScrollFrame, "TOP", -11.5,3);
TitleBackdrop:SetWidth(TextScrollFrame:GetWidth()+20);
TitleBackdrop:SetHeight(48);
TitleBackdrop.tex = TitleBackdrop:CreateTexture(nil, "ARTWORK", nil, 1);
TitleBackdrop.tex:SetAllPoints(true);
TitleBackdrop.tex:SetAtlas("StoryHeader-BG");

TextDisplayFrame.DeleteEntry = CreateFrame("Button", nil, TextDisplayFrame);
local DeleteEntry = TextDisplayFrame.DeleteEntry;
DeleteEntry:SetPoint("BOTTOMRIGHT", TextDisplayFrame, "TOPRIGHT", -2, 3);
DeleteEntry:SetSize(25,25);
DeleteEntry:SetNormalAtlas("128-RedButton-Delete");
DeleteEntry:SetPushedAtlas("128-RedButton-Delete-Pressed");
DeleteEntry:SetDisabledAtlas("128-RedButton-Delete-Disabled");
DeleteEntry:SetHighlightAtlas("128-RedButton-Delete-Highlight");
DeleteEntry:SetEnabled(false);
DeleteEntry:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(self, "ANCHOR_TOP");
	GameTooltip:AddLine(LK["DeleteAll"], 1, 1, 1, true);
	GameTooltip:Show();
end);
DeleteEntry:SetScript("OnLeave", function()
	GameTooltip:Hide();
end);
DeleteEntry:SetScript("OnClick", function()
	StaticPopup_Show("LOREK_DELETE_ENTRIES");
end)
TextDisplayFrame.DeleteEntry:Hide() -- Not Yet Implemented, probably should have a multitude of options for delete all vs. delete copy

TextScrollChild.textTitle = TitleBackdrop:CreateFontString(nil, "OVERLAY");
TextScrollChild.textTitle:SetFontObject("GameFontHighlightLarge"); -- make into option later
TextScrollChild.textTitle:SetPoint("TOPLEFT", TitleBackdrop, "TOPLEFT", 7,-8);
TextScrollChild.textTitle:SetPoint("BOTTOMRIGHT", TitleBackdrop, "BOTTOMRIGHT", -7, 5);
TextScrollChild.textTitle:SetJustifyH("CENTER");
TextScrollChild.textTitle:SetJustifyV("MIDDLE");

-- The Text Body on the right
TextScrollChild.textHTML = CreateFrame("SimpleHTML", nil, TextDisplayFrame.TextScrollChild);
TextScrollChild.textHTML:SetPoint("TOP", TextScrollChild, "TOP", 0, 0);
TextScrollChild.textHTML:SetPoint("BOTTOM", TextScrollChild, "BOTTOM", 0, 0);
TextScrollChild.textHTML:SetWidth(TextScrollChild:GetWidth()-50);

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
-- Variant Text Dropdown Soon(tm)



--------------------------------------------------------------------------
-- Text to Speech Settings


LoreKGUI.LibraryPanel.TTSButton = CreateFrame("Button", nil, LoreKGUI.LibraryPanel);
local TTSButton = LoreKGUI.LibraryPanel.TTSButton;

LoreKGUI.LibraryPanel.backdropInfo = {
	bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
	edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
	tile = true,
	tileEdge = true,
	tileSize = 8,
	edgeSize = 8,
	insets = { left = 1, right = 1, top = 1, bottom = 1 },
};

LoreKGUI.LibraryPanel.TTSSettings = CreateFrame("Frame", nil, TTSButton, "BackdropTemplate");
local TTSSettings = LoreKGUI.LibraryPanel.TTSSettings;
TTSSettings:SetPoint("TOPRIGHT", TTSButton, "BOTTOMRIGHT", 0, 0);
TTSSettings:SetWidth(130*2);
TTSSettings:SetHeight((26*11));
TTSSettings:SetBackdrop(LoreKGUI.LibraryPanel.backdropInfo);
TTSSettings:SetFrameStrata("HIGH");
TTSSettings:Hide();
TTSSettings:SetBackdropColor(0,0,0,1);
TTSSettings.closebutton = CreateFrame("Button", nil, TTSSettings, "UIPanelCloseButton");
TTSSettings.closebutton:SetWidth(24);
TTSSettings.closebutton:SetHeight(24);
TTSSettings.closebutton:SetPoint("TOPRIGHT", TTSSettings, "TOPRIGHT", 1, 1);
TTSSettings.closebutton:SetScript("OnClick", function(self, button)
	TTSSettings:Hide();
end)

local TTSSettingsPlacer = 1

TTSSettings.TitleFrame = TTSSettings:CreateFontString(nil, "OVERLAY", "GameFontNormal");
TTSSettings.TitleFrame:SetFont(STANDARD_TEXT_FONT, 15);
TTSSettings.TitleFrame:ClearAllPoints();
TTSSettings.TitleFrame:SetPoint("TOPLEFT", TTSSettings, "TOPLEFT",10,TTSSettingsPlacer*-10);
TTSSettings.TitleFrame:SetText(LK["TTSConfigTT"]);
TTSSettingsPlacer = TTSSettingsPlacer+1

TTSSettings.TTSVoiceChoice = CreateFrame("DropdownButton", nil, TTSSettings, "WowStyle1DropdownTemplate");
TTSSettings.TTSVoiceChoice:SetDefaultText(LK["TTSVoiceOption"]);
TTSSettings.TTSVoiceChoice:SetPoint("TOPLEFT", TTSSettings, "TOPLEFT", 10, TTSSettingsPlacer*-25);
TTSSettings.TTSVoiceChoice:SetSize(190, 26);
TTSSettings.TTSVoiceChoice:SetupMenu(function(dropdown, rootDescription)

	local optionHeight = 20; -- 20 is default
	local maxElements = 8; -- amount of elements to show before scroll
	local maxScrollExtent = optionHeight * maxElements;

	for k, v in pairs(C_VoiceChat.GetTtsVoices()) do
		local elementDescription = rootDescription:CreateButton(v.name,  function()
			local voiceID = v.voiceID
			LoreK_DB["settings"]["TTSSettings"]["voiceID"] = voiceID;
		end);
	end
	rootDescription:SetScrollMode(maxScrollExtent);
end);
TTSSettings.TTSVoiceChoice:SetScript("OnEnter", function()
	if not LoreK_DB["settings"]["TTSSettings"]["voiceID"] then return end
	local voiceID = LoreK_DB["settings"]["TTSSettings"]["voiceID"];
	local narratorName;
	for k, v in pairs(C_VoiceChat.GetTtsVoices()) do
		if v.voiceID == voiceID then
			narratorName = v.name;
		end
	end
	if not narratorName then return end
	GameTooltip:SetOwner(TTSSettings.PhoneticReplace_Checkbox, "ANCHOR_TOPLEFT");
	GameTooltip:AddLine(narratorName, 1, 1, 1, true);
	GameTooltip:SetWidth(20);
	GameTooltip:Show();
end);
TTSSettings.TTSVoiceChoice:SetScript("OnLeave", function()
	GameTooltip:Hide();
end);

TTSSettingsPlacer = TTSSettingsPlacer+1

TTSSettings.QueuePages_Checkbox = CreateFrame("CheckButton", nil, TTSSettings, "UICheckButtonTemplate");
TTSSettings.QueuePages_Checkbox:SetPoint("TOPLEFT", TTSSettings, "TOPLEFT", 10, TTSSettingsPlacer*-25);
TTSSettings.QueuePages_Checkbox:SetScript("OnClick", function(self)
	if self:GetChecked() then
		LoreK_DB["settings"]["TTSSettings"]["queuePages"] = true;
	else
		LoreK_DB["settings"]["TTSSettings"]["queuePages"] = false;
	end
end);
TTSSettings.QueuePages_Checkbox.Text:SetText(LK["TTSQueuePages"])
TTSSettings.QueuePages_Checkbox:SetScript("OnEnter", function()
	GameTooltip:SetOwner(TTSSettings.QueuePages_Checkbox, "ANCHOR_TOPLEFT");
	GameTooltip:AddLine(LK["TTSQueuePagesTT"], 1, 1, 1, true);
	GameTooltip:SetWidth(20);
	GameTooltip:Show();
end);
TTSSettings.QueuePages_Checkbox:SetScript("OnLeave", function()
	GameTooltip:Hide();
end);
TTSSettings.QueuePages_Checkbox.Text:SetScript("OnEnter", function()
	GameTooltip:SetOwner(TTSSettings.QueuePages_Checkbox, "ANCHOR_TOPLEFT");
	GameTooltip:AddLine(LK["TTSQueuePagesTT"], 1, 1, 1, true);
	GameTooltip:SetWidth(20);
	GameTooltip:Show();
end);
TTSSettings.QueuePages_Checkbox.Text:SetScript("OnLeave", function()
	GameTooltip:Hide();
end);
TTSSettingsPlacer = TTSSettingsPlacer+1

TTSSettings.PhoneticReplace_Checkbox = CreateFrame("CheckButton", nil, TTSSettings, "UICheckButtonTemplate");
TTSSettings.PhoneticReplace_Checkbox:SetPoint("TOPLEFT", TTSSettings, "TOPLEFT", 10, TTSSettingsPlacer*-25);
TTSSettings.PhoneticReplace_Checkbox:SetScript("OnClick", function(self)
	if self:GetChecked() then
		LoreK_DB["settings"]["TTSSettings"]["phonetics"] = true;
	else
		LoreK_DB["settings"]["TTSSettings"]["phonetics"] = false;
	end
end);
TTSSettings.PhoneticReplace_Checkbox.Text:SetText(LK["Settings_Phonetics"])
TTSSettings.PhoneticReplace_Checkbox:SetScript("OnEnter", function()
	GameTooltip:SetOwner(TTSSettings.PhoneticReplace_Checkbox, "ANCHOR_TOPLEFT");
	GameTooltip:AddLine(LK["Settings_PhoneticsTT"], 1, 1, 1, true);
	GameTooltip:SetWidth(20);
	GameTooltip:Show();
end);
TTSSettings.PhoneticReplace_Checkbox:SetScript("OnLeave", function()
	GameTooltip:Hide();
end);
TTSSettings.PhoneticReplace_Checkbox.Text:SetScript("OnEnter", function()
	GameTooltip:SetOwner(TTSSettings.PhoneticReplace_Checkbox, "ANCHOR_TOPLEFT");
	GameTooltip:AddLine(LK["Settings_PhoneticsTT"], 1, 1, 1, true);
	GameTooltip:SetWidth(20);
	GameTooltip:Show();
end);
TTSSettings.PhoneticReplace_Checkbox.Text:SetScript("OnLeave", function()
	GameTooltip:Hide();
end);
TTSSettingsPlacer = TTSSettingsPlacer+1

do 
	TTSSettings.VolumeSlider = CreateFrame("Slider", nil, TTSSettings, "MinimalSliderWithSteppersTemplate");
	local VolumeSlider = TTSSettings.VolumeSlider
	VolumeSlider:SetPoint("TOPLEFT", TTSSettings, "TOPLEFT", 30, TTSSettingsPlacer*-27);
	VolumeSlider:SetWidth(190)

	local initialValue = 50
	local minValue = 0
	local maxValue = 100
	local steps = 100

	local formatters = {
		[MinimalSliderWithSteppersMixin.Label.Left] = function(value) return minValue end,
		[MinimalSliderWithSteppersMixin.Label.Right] = function(value) return maxValue end,
		[MinimalSliderWithSteppersMixin.Label.Top] = function(value) return LK["TTSVolume"] .. ": " .. VolumeSlider.Slider:GetValue() end,
		--[MinimalSliderWithSteppersMixin.Label.Min] = function(value) return "Minimum" end,
		--[MinimalSliderWithSteppersMixin.Label.Max] = function(value) return "Maximum" end,
	};

	-- Initialize the slider with the values and formatters
	VolumeSlider:Init(initialValue, minValue, maxValue, steps, formatters);

	local function SliderFuncTest()
		LoreK_DB["settings"]["TTSSettings"]["volume"] = VolumeSlider.Slider:GetValue()
	end
	-- Set up a listener for the value changed event
	VolumeSlider:RegisterCallback("OnValueChanged",SliderFuncTest)

	-- Optionally, enable or disable the slider
	VolumeSlider:SetEnabled(true)  -- true to enable, false to disable
end
TTSSettingsPlacer = TTSSettingsPlacer+2

do 
	TTSSettings.SpeedSlider = CreateFrame("Slider", nil, TTSSettings, "MinimalSliderWithSteppersTemplate");
	local SpeedSlider = TTSSettings.SpeedSlider
	SpeedSlider:SetPoint("TOPLEFT", TTSSettings, "TOPLEFT", 30, TTSSettingsPlacer*-25);
	SpeedSlider:SetWidth(190)

	local initialValue = 0
	local minValue = -10
	local maxValue = 10
	local steps = 20

	local formatters = {
		[MinimalSliderWithSteppersMixin.Label.Left] = function(value) return minValue end,
		[MinimalSliderWithSteppersMixin.Label.Right] = function(value) return maxValue end,
		[MinimalSliderWithSteppersMixin.Label.Top] = function(value) return LK["TTSSpeed"] .. ": " .. SpeedSlider.Slider:GetValue() end,
		--[MinimalSliderWithSteppersMixin.Label.Min] = function(value) return "Minimum" end,
		--[MinimalSliderWithSteppersMixin.Label.Max] = function(value) return "Maximum" end,
	};

	-- Initialize the slider with the values and formatters
	SpeedSlider:Init(initialValue, minValue, maxValue, steps, formatters);

	local function SliderFuncTest()
		LoreK_DB["settings"]["TTSSettings"]["speed"] = SpeedSlider.Slider:GetValue()
	end
	-- Set up a listener for the value changed event
	SpeedSlider:RegisterCallback("OnValueChanged",SliderFuncTest)

	-- Optionally, enable or disable the slider
	SpeedSlider:SetEnabled(true)  -- true to enable, false to disable
end
TTSSettingsPlacer = TTSSettingsPlacer+2

TTSSettings.PlaySample = CreateFrame("Button", nil, TTSSettings, "SharedButtonTemplate");
TTSSettings.PlaySample:SetPoint("TOPLEFT", TTSSettings, "TOPLEFT", 10, TTSSettingsPlacer*-25);
TTSSettings.PlaySample:SetSize(190, 26);
TTSSettings.PlaySample:SetText(TEXT_TO_SPEECH_PLAY_SAMPLE);
TTSSettings.PlaySample:SetScript("OnClick", function()
	local voiceID = LoreK_DB["settings"]["TTSSettings"]["voiceID"] or 0;
	local speed = LoreK_DB["settings"]["TTSSettings"]["speed"] or 0;
	local volume = LoreK_DB["settings"]["TTSSettings"]["volume"] or 50;
	C_VoiceChat.SpeakText(voiceID, TEXT_TO_SPEECH_SAMPLE_TEXT , 1, speed, volume);
end);
TTSSettingsPlacer = TTSSettingsPlacer+1

TTSSettings.Hyperlink = TTSSettings:CreateFontString(nil, "OVERLAY", "GameFontNormal");
TTSSettings.Hyperlink:SetTextColor(1,1,1,1);
TTSSettings.Hyperlink:SetPoint("TOPLEFT", TTSSettings, "TOPLEFT", -5, TTSSettingsPlacer*-25);
TTSSettings.Hyperlink:SetText("|Tinterface\\chatframe\\ui-chaticon-blizz:12:20|t" .. TEXT_TO_SPEECH_MORE_VOICES);
TTSSettings.Hyperlink:SetWidth(TTSSettings:GetWidth()-20)
TTSSettings:SetHyperlinksEnabled(true)
TTSSettings:SetScript("OnHyperlinkClick", function(self, link, text, button)
	SetItemRef(link, text, button, self)
end)
TTSSettingsPlacer = TTSSettingsPlacer+1


--------------------------------------------------------------------------
-- Text to Speech Functions & Button

local function CleanTextForTTS(text)
	-- Remove \n, \r, and other escape sequences
	local cleanedText = text:gsub("[\n\r\\]", ". "):gsub("|n", " ");
	return cleanedText;
end

function LoreKGUI.LibraryPanel.TTSExecute()
	local bingle = LoreKGUI.TextDisplayFrame.TextScrollChild.textHTML:GetTextData();
	local concText = "";
	for k, v in ipairs(bingle) do
		if bingle[k].text then
			concText = concText .. ". " ..  bingle[k].text;
			concText = CleanTextForTTS(concText);
		end
	end

	if TTSButton.textQueuePlaying then
		local voiceID = LoreK_DB["settings"]["TTSSettings"]["voiceID"] or 0;
		local speed = LoreK_DB["settings"]["TTSSettings"]["speed"] or 0;
		local volume = LoreK_DB["settings"]["TTSSettings"]["volume"] or 50;
		concText = replaceWithPhonetics(concText);
		C_VoiceChat.SpeakText(voiceID, concText , 1, speed, volume);
		TTSButton.textPlaying = true;
		return;
	end

	if TTSButton.textPlaying then
		C_VoiceChat.StopSpeakingText();
		TTSButton.textPlaying = false;
	else
		local voiceID = LoreK_DB["settings"]["TTSSettings"]["voiceID"] or 0;
		local speed = LoreK_DB["settings"]["TTSSettings"]["speed"] or 0;
		local volume = LoreK_DB["settings"]["TTSSettings"]["volume"] or 50;
		concText = replaceWithPhonetics(concText);
		C_VoiceChat.SpeakText(voiceID, concText , 1, speed, volume);
		TTSButton.textPlaying = true;
	end
end

TTSButton:SetPoint("TOPRIGHT", LoreKGUI.LibraryPanel, "TOPRIGHT", -50, -40);
TTSButton:SetWidth(24);
TTSButton:SetHeight(24);
TTSButton.tex = TTSButton:CreateTexture(nil, "ARTWORK", nil, 1);
TTSButton.tex:SetAllPoints(TTSButton);
TTSButton.tex:SetAtlas("chatframe-button-icon-TTS");
TTSButton.tex:SetTexCoord(-.08, 1.08, -.08, 1.08);
TTSButton:SetNormalAtlas("chatframe-button-up");
TTSButton:SetPushedAtlas("chatframe-button-down");
TTSButton:SetHighlightAtlas("chatframe-button-highlight");

TTSButton:RegisterEvent("VOICE_CHAT_TTS_PLAYBACK_STARTED");
TTSButton:RegisterEvent("VOICE_CHAT_TTS_PLAYBACK_FINISHED");

function TTSButton.OnEvent(self,event)

	if event == "VOICE_CHAT_TTS_PLAYBACK_STARTED" then
		TTSButton.textPlaying = true;
	end

	if event == "VOICE_CHAT_TTS_PLAYBACK_FINISHED" then
		local queuePages = LoreK_DB["settings"]["TTSSettings"]["queuePages"]
		if queuePages and TTSButton.textPlaying then
			if LoreKTextDisplayFrame.NextPageButton:IsEnabled() then
				LoreKTextDisplayFrame.NextPageButton:Click()
				LoreKGUI.LibraryPanel.TTSExecute();
			else
				TTSButton.textQueuePlaying = false;
			end
		end
		TTSButton.textPlaying = false;
	end
end
TTSButton:SetScript("OnEvent", TTSButton.OnEvent);

TTSButton:SetScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		local queuePages = LoreK_DB["settings"]["TTSSettings"]["queuePages"]
		if TTSButton.textQueuePlaying then	
			C_VoiceChat.StopSpeakingText();
			TTSButton.textQueuePlaying = false;
			TTSButton.textPlaying = false;
			return;
		end
		if queuePages then
			TTSButton.textQueuePlaying = true;
		end
		LoreKGUI.LibraryPanel.TTSExecute();
	end
	if button == "RightButton" and down == false then
		if TTSSettings:IsShown() then
			TTSSettings:Hide();
		else
			TTSSettings:Show();
		end
	end
end)
TTSButton:SetScript("OnMouseDown", function()
	TTSButton.tex:SetTexCoord(-.08, 1.16, -.16, 1.08);
end)
TTSButton:SetScript("OnMouseUp", function()
	TTSButton.tex:SetTexCoord(-.08, 1.08, -.08, 1.08);
end)
TTSButton:RegisterForClicks("AnyDown", "AnyUp")


TTSButton:SetScript("OnEnter", function()
	GameTooltip:SetOwner(TTSButton, "ANCHOR_TOPLEFT");
	GameTooltip:AddLine(LK["TTSLabelTT"]);
	GameTooltip:AddLine(LK["LeftClick"] ..": " .. LK["TTSReadorStopTT"], 1, 1, 1, true);
	GameTooltip:AddLine(LK["RightClick"] ..": " .. LK["TTSConfigTT"], 1, 1, 1, true);
	GameTooltip:SetWidth(20);
	GameTooltip:Show();
end)
TTSButton:SetScript("OnLeave", function()
	GameTooltip:Hide();
end)

LoreKGUI.LibraryPanel.CopyTextButton = CreateFrame("Button", nil, LoreKGUI.LibraryPanel);
local CopyTextButton = LoreKGUI.LibraryPanel.CopyTextButton;
CopyTextButton:SetPoint("TOPRIGHT", LoreKGUI.LibraryPanel, "TOPRIGHT", -25, -40);
CopyTextButton:SetWidth(24);
CopyTextButton:SetHeight(24);
CopyTextButton.tex = CopyTextButton:CreateTexture(nil, "ARTWORK", nil, 1);
CopyTextButton.tex:SetAllPoints(CopyTextButton);
CopyTextButton.tex:SetTexture("Interface\\AddOns\\Lorekeeper\\Assets\\Textures\\CopyTextIcon");
CopyTextButton.tex:SetTexCoord(.08, .92, .08, .92);
CopyTextButton:SetNormalAtlas("chatframe-button-up");
CopyTextButton:SetPushedAtlas("chatframe-button-down");
CopyTextButton:SetHighlightAtlas("chatframe-button-highlight");

CopyTextButton:SetScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		if LoreKGUI.LibraryPanel.CopyTextFrame:IsShown() then
			LoreKGUI.LibraryPanel.CopyTextFrame:Hide();
		else
			LoreKGUI.LibraryPanel.CopyTextFrame:Show();
		end
	end
	--if button == "RightButton" and down == false then
		-- nothing set here yet
	--end
end)
CopyTextButton:SetScript("OnMouseDown", function()
	CopyTextButton.tex:SetTexCoord(.08, 1, 0, .92);
end)
CopyTextButton:SetScript("OnMouseUp", function()
	CopyTextButton.tex:SetTexCoord(.08, .92, .08, .92);
end)
CopyTextButton:RegisterForClicks("AnyDown", "AnyUp")

CopyTextButton:SetScript("OnEnter", function()
	GameTooltip:SetOwner(CopyTextButton, "ANCHOR_TOPLEFT");
	GameTooltip:AddLine(LK["CopyTitle"]);
	GameTooltip:AddLine(LK["LeftClick"] ..": " .. LK["CopyDescriptTT"], 1, 1, 1, true);
	GameTooltip:SetWidth(20);
	GameTooltip:Show();
end)
CopyTextButton:SetScript("OnLeave", function()
	GameTooltip:Hide();
end)

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
	local isManuallyHidden = LoreK_DB["text"][itemID] and LoreK_DB["text"][itemID]["base"]["isHidden"];
	if ItemEntryID then
		icon_Q = select(5,C_Item.GetItemInfoInstant(ItemEntryID));
	else
		icon_Q = "Interface/ICONS/INV_Misc_Book_09" or "Interface/AddOns/Lorekeeper/Assets/Textures/TEMP";
	end
	local hasRead = LoreK_DB["text"] and LoreK_DB["text"][itemID] and LoreK_DB["text"][itemID]["base"] and LoreK_DB["text"][itemID]["base"]["hasRead"]
	local hasMapData = allData[itemID] and allData[itemID]["base"] and allData[itemID]["base"]["mapData"]
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
	if hasRead then
		button.icon.unreadIcon:Hide();
		button.icon.tex:SetDesaturated(false);
	else
		button.icon.unreadIcon:Show();
		button.icon.tex:SetDesaturated(true);
	end
	button.icon.favoritesIcon = button.icon.favoritesIcon or button.icon:CreateTexture(nil, "OVERLAY", nil, 2);
	button.icon.favoritesIcon:SetPoint("TOPLEFT", button.icon, "TOPLEFT", -6,2);
	button.icon.favoritesIcon:SetPoint("BOTTOMRIGHT", button.icon, "BOTTOMRIGHT", -21,17);
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
	if not LoreK_DB["text"][itemID] or not hasRead then
		button.textFont:SetTextColor(.5, .5, .5, 1);
	end
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
							LoreK_DB["text"][itemID]["base"]["isFavorite"] = false;
							LoreKMainframe.PopulateList();
							PlaySound(SOUNDKIT.UI_70_ARTIFACT_FORGE_APPEARANCE_LOCKED, "SFX");
						end)
					else
						if LoreK_DB["text"][itemID] and LoreK_DB["text"][itemID]["base"] then
							rootDescription:CreateButton(LK["SetFavorite"], function()
								LoreK_DB["text"][itemID]["base"]["isFavorite"] = true;
								LoreKMainframe.PopulateList();
								PlaySound(SOUNDKIT.UI_70_ARTIFACT_FORGE_APPEARANCE_APPEARANCE_CHANGE, "SFX");
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
					if GUIDType == "GameObject" and hasMapData then
						rootDescription:CreateButton(LK["SetItemTracked"], function()
							local mapData = CopyTable(allData[itemID]["base"]["mapData"]);
							for k, v in pairs(mapData) do
								WorldMapFrame:Show();
								WorldMapFrame:SetMapID(k);
								C_Map.SetUserWaypoint(UiMapPoint.CreateFromVector2D(k, CreateVector2D(v[1],v[2])));
								C_SuperTrack.SetSuperTrackedUserWaypoint(true);
								PlaySound(170270);
								return;
							end
						end);
					end
					if isManuallyHidden then
						rootDescription:CreateDivider();
						rootDescription:CreateButton(LK["Show"], function()
							LoreK_DB["text"][itemID]["base"]["isHidden"] = false;
							LoreKMainframe.PopulateList();
						end);
					else
						if LoreK_DB["text"][itemID] and LoreK_DB["text"][itemID]["base"] then
							rootDescription:CreateDivider();
							rootDescription:CreateButton(LK["Hide"], function()
								LoreK_DB["text"][itemID]["base"]["isHidden"] = true;
								LoreKMainframe.PopulateList();
							end);
						end
					end
					if LoreK_DB.settings.debugAdvanced and hasRead then
						rootDescription:CreateDivider();
						rootDescription:CreateButton(LK["DebugUnlearn"], function()
							LoreK_DB["text"][itemID]["base"]["hasRead"] = false;
							LoreKMainframe.PopulateList();
						end);
					else
						if LoreK_DB.settings.debugAdvanced and not hasRead then
							rootDescription:CreateDivider();
							rootDescription:CreateButton(LK["DebugLearn"], function()
								if LoreK_DB["text"][itemID] and LoreK_DB["text"][itemID]["base"] then
									if not not LoreK_DB["text"][itemID]["base"]["hasRead"] then
										LoreK_DB["text"][itemID]["base"]["hasRead"] = true;
									else
										LoreK_DB["text"][itemID]["base"] = {
											hasRead = true,
										};
									end
								else
									LoreK_DB["text"][itemID] = {
										base = {
											hasRead = true,
										},
									};
								end
								LoreKMainframe.PopulateList();
							end);
						end
					end
				end)
			end
		else
			LoreKGUI.SelectionBehavior:Select(self);

			C_VoiceChat.StopSpeakingText();
			TTSButton.textPlaying = false;

			PlaySound(SOUNDKIT.UI_JOURNEYS_OPEN_LORE_BOOK, "SFX", true);
			DeleteEntry:SetEnabled(true);
			--selectionBehavior:SelectElementData(self:GetData())

			local maxPages = 1;
			local pageNum = 1;
			local textTable = allData[itemID]["base"]["text"]--parseFunc('["text"][itemID]["base"]["text"]', itemID);
			local pageText = textTable[pageNum]
			local HTMLbody
			local textTitle = allData[itemID]["base"]["title"]; --parseFunc('["text"][itemID]["base"]["title"]', itemID);
			local isHTML = string.lower(ReverseNameAndClass(pageText)):find("<html>");
			local singlePage = allData[itemID]["base"]["singlePage"]; --parseFunc('["text"][itemID]["base"]["singlePage"]', itemID);
			local material = allData[itemID]["base"]["material"] or "default"; --parseFunc('["text"][itemID]["base"]["material"]', itemID) or "default";
			local isHidden = LoreK_DB["settings"]["hideUnread"];
			local hasRead = false;
			if LoreK_DB["text"][itemID] and LoreK_DB["text"][itemID]["base"] and LoreK_DB["text"][itemID]["base"]["hasRead"] then
				if LoreK_DB["text"][itemID]["base"]["hasRead"] then
					hasRead = true;
				end
			end

			if LoreK_DB["text"][itemID] and LoreK_DB["text"][itemID]["base"] and LK["LocalData"]["text"][itemID] then
				if LoreK_DB["text"][itemID]["base"]["mapData"] and LK["LocalData"]["text"][itemID]["base"]["mapData"] then
					for zingle, dingle in pairs(LoreK_DB["text"][itemID]["base"]["mapData"]) do -- find and delete duplicate mapData
						if LK["LocalData"]["text"][itemID]["base"]["mapData"][zingle] then
							LoreK_DB["text"][itemID]["base"]["mapData"][zingle] = nil;
						end
					end
					if next(LoreK_DB["text"][itemID]["base"]["mapData"]) == nil then
						LoreK_DB["text"][itemID]["base"]["mapData"] = nil
						if LoreK_DB.settings.debugAdvanced then
							Print("Cleaning up leftover duplicate mapData: "..textTitle)
						end
					end
				end
				if LK.tCompareDeez(LoreK_DB["text"][itemID]["base"], LK["LocalData"]["text"][itemID]["base"]) then -- entry exists, but it's a copy of the LocalData, local data probably got updated, so clean SV bloat but preserve hasRead/isFavorite/mapData
					LoreK_DB["text"][itemID]["base"]["text"] = nil;
					LoreK_DB["text"][itemID]["base"]["title"] = nil;
					LoreK_DB["text"][itemID]["base"]["singlePage"] = nil;
					LoreK_DB["text"][itemID]["base"]["pageCount"] = nil;
					LoreK_DB["text"][itemID]["base"]["material"] = nil;
					if LoreK_DB.settings.debugAdvanced then
						Print("Detected exact copy between SVs and LocalData, deleting extra SV data: "..textTitle)
					end
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

			TextDisplayFrame.PrevPageButton:Hide();
			TextDisplayFrame.NextPageButton:Hide();
			TextDisplayFrame.PrevPageButton:Disable();
			TextDisplayFrame.NextPageButton:Disable();
			TextDisplayFrame.PageNumber:SetText("");

			LoreKGUI.SetColors()

			if not singlePage then
				maxPages = #allData[itemID]["base"]["text"];
				local pageNumberText = string.format(PAGE_NUMBER_WITH_MAX, pageNum, maxPages);

				TextDisplayFrame.PrevPageButton:Show();
				TextDisplayFrame.NextPageButton:Show();
				TextDisplayFrame.PageNumber:SetText(pageNumberText);
				TextDisplayFrame.NextPageButton:Enable();
				TextDisplayFrame.PrevPageButton:SetScript("OnClick", function()
					if pageNum ~= 1 then
						pageNum = pageNum - 1;
					end
					if pageNum == 1 then
						TextDisplayFrame.PrevPageButton:Disable();
					end
					TextDisplayFrame.NextPageButton:Enable();
					PlaySound(SOUNDKIT.IG_ABILITY_PAGE_TURN, "SFX", false);

					local pageNumberText = string.format(PAGE_NUMBER_WITH_MAX, pageNum, maxPages);
					local textTable = allData[itemID]["base"]["text"];
					local pageText = textTable[pageNum]
					local textTitle = allData[itemID]["base"]["title"] or UNKNOWN;
					local isHTML = string.lower(ReverseNameAndClass(pageText)):find("<html>");
					local singlePage = allData[itemID]["base"]["singlePage"];
					if isHTML then
						HTMLbody = string.gsub(ReverseNameAndClass(pageText),"<BODY>","<BODY>".."<br />");
					end

					TextDisplayFrame.PageNumber:SetText(pageNumberText);
					TextScrollChild.textTitle:SetText(textTitle, 1, 1, 1, 1, true);
					if isHTML then
						TextScrollChild.textHTML:SetText(HTMLbody or ReverseNameAndClass(pageText), false);
					else
						TextScrollChild.textHTML:SetText("\n"..ReverseNameAndClass(pageText), false);
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
					PlaySound(SOUNDKIT.IG_ABILITY_PAGE_TURN, "SFX", false);

					local pageNumberText = string.format(PAGE_NUMBER_WITH_MAX, pageNum, maxPages);
					local textTable = allData[itemID]["base"]["text"];
					local pageText = textTable[pageNum]
					local textTitle = allData[itemID]["base"]["title"];
					local isHTML = string.lower(ReverseNameAndClass(pageText)):find("<html>");
					local singlePage = allData[itemID]["base"]["singlePage"];
					if isHTML then
						HTMLbody = string.gsub(ReverseNameAndClass(textTable[pageNum]),"<BODY>","<BODY>".."<br />");
					end

					TextDisplayFrame.PageNumber:SetText(pageNumberText);
					TextScrollChild.textTitle:SetText(textTitle, 1, 1, 1, 1, true);
					if isHTML then
						TextScrollChild.textHTML:SetText(HTMLbody or ReverseNameAndClass(textTable[pageNum]), false);
					else
						TextScrollChild.textHTML:SetText("\n"..ReverseNameAndClass(textTable[pageNum]), false);
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
			if LoreK_DB.settings.debugAdvanced then
				TextDisplayFrame.Type_ID:SetText(itemID, 1, 1, 1, 1, true);
			else
				TextDisplayFrame.Type_ID:SetText("", 1, 1, 1, 1, true);
			end
			if isHTML then
				HTMLbody = string.gsub(ReverseNameAndClass(textTable[pageNum]),"<BODY>","<BODY>".."<br />");
			end
			if isHTML then
				TextScrollChild.textHTML:SetText(HTMLbody or ReverseNameAndClass(textTable[pageNum]), false);
			else
				TextScrollChild.textHTML:SetText("\n"..ReverseNameAndClass(textTable[pageNum]), false);
			end

			-- Set the title once before the loop
			LoreKGUI.LibraryPanel.CopyTextEditBoxText = textTitle .. "\n\n";

			-- Loop over the table of text and append the page number and content
			for k, v in ipairs(textTable) do
				-- Append the page number and the page text to the existing text
				if k ~= #textTable then
					LoreKGUI.LibraryPanel.CopyTextEditBoxText = LoreKGUI.LibraryPanel.CopyTextEditBoxText .. string.format(PAGE_NUMBER_WITH_MAX, k, #textTable) .. "\n\n" .. v .. "\n\n";
				else
					LoreKGUI.LibraryPanel.CopyTextEditBoxText = LoreKGUI.LibraryPanel.CopyTextEditBoxText .. string.format(PAGE_NUMBER_WITH_MAX, k, #textTable) .. "\n\n" .. v;
				end
			end
			LoreKGUI.LibraryPanel.CopyTextEditBox:SetText(LoreKGUI.LibraryPanel.CopyTextEditBoxText);
		end
	end);
	button:RegisterForClicks("AnyUp", "AnyDown");
end
ItemScrollView:SetElementExtent(36);


function LoreKGUI:OnSelectionChanged(data, isSelected)
	local f = self.ItemScrollBox:FindFrame(data);
	if not f then
		return;
	end

	f.texSel:SetShown(isSelected);
end

function LoreKGUI:OnFrameInitialized(frame, data)
	local isSelected = self.SelectionBehavior:IsElementDataSelected(data);
	frame.texSel:SetShown(isSelected);
end

LoreKGUI.SelectionBehavior = ScrollUtil.AddSelectionBehavior(ItemScrollBox, SelectionBehaviorFlags.Intrusive);
LoreKGUI.SelectionBehavior:RegisterCallback("OnSelectionChanged", LoreKGUI.OnSelectionChanged, LoreKGUI);

ScrollUtil.AddInitializedFrameCallback(ItemScrollBox, LoreKGUI.OnFrameInitialized, LoreKGUI);


--------------------------------------------------------------------------

-- This function will clear the ScrollView and repopulate it with the given search results
local function PopulateNewDataProvider(newData)
	ItemDataProvider = CreateDataProvider(newData);
	ItemScrollView:SetDataProvider(ItemDataProvider);
end

--sort by favorite, then books that have been read, then alphabetize each category by title
function LoreKGUI.sortFunc(a, b)
	--print("a",a.base.title, a.base.isFavorite)
	if (not not a.base.isFavorite) ~= (not not b.base.isFavorite) then
		return a.base.isFavorite;
	elseif (not not a.base.hasRead)  ~=  (not not b.base.hasRead) then
		return a.base.hasRead;
	elseif a.base.title and b.base.title then
		return strcmputf8i(a.base.title, b.base.title) < 0;
	end
end

function LoreKGUI.PopulateList()
	local countMax = 0;
	local countCurrent = 0;
	local unobtainables = 0;
	local newTexts = 0;
	local unread = 0;
	if not LoreK_DB or not LoreK_DB["text"] then
		return;
	end

	allData = CopyTable(LK["LocalData"]["text"]);
	for id, data in pairs(LoreK_DB["text"]) do
		if allData[id] then
			Mixin(allData[id].base, data.base);
		else
			allData[id] = CopyTable(data);
		end
	end

	ItemScrollView:SetElementInitializer("Button", ItemInitializer);

	local proxy = {};
	for id, data in pairs(allData) do
		data.id = id;
		tinsert(proxy, data);
		if data.base.isObtainable then
			countMax = countMax + 1;
		end

		if data.base.isObtainable == false then
			unobtainables = unobtainables + 1;
		end
		if data.base.hasRead then
			countCurrent = countCurrent + 1;
		end
		if LK["LocalData"]["text"][id] and not data.base.hasRead then
			unread = unread + 1;
		end
		if data.base.hasRead and not LK["LocalData"]["text"][id] then
			newTexts = newTexts + 1;
		end
	end

	PopulateNewDataProvider(proxy);
	LoreKGUI.OnTextChanged(LoreKGUI.SearchBox);

	TextCount.UpdateCount(countCurrent, unread, unobtainables, newTexts);
end

-- Search box
LoreKGUI.SearchBox = CreateFrame("EditBox", "LoreKSearchBox", ItemDisplayFrame, "SearchBoxTemplate");
LoreKGUI.SearchBox:SetSize(105, 20);
LoreKGUI.SearchBox:SetPoint("TOPLEFT", ItemDisplayFrame, "TOPLEFT", 10, -5);
LoreKGUI.SearchBox:SetAutoFocus(false);

local function escapePattern(text)
	-- Escape all special characters in the user's input
	return text:gsub("([%(%)%.%%%+%-%*%?%[%]%^%$])", "%%%1")
end

function LoreKGUI.OnTextChanged(editBox)
	local SVSettings = LoreK_DB["settings"]["searchMenu"]
	local query = editBox:GetText();
	query = escapePattern(query)

	local matches = {};

	for _, element in pairs(allData) do
		local match = false;

		if element["base"]["title"] and string.find(element["base"]["title"]:lower(), query:lower()) then
			if SVSettings.showCollected and element["base"]["hasRead"] and not element["base"]["isHidden"] and not (element["base"]["isObtainable"] == false) and not element["base"]["isClassSpecific"] then
				match = true;
			elseif SVSettings.showUnread and (not element["base"]["hasRead"]) and not (element["base"]["isObtainable"] == false) and not element["base"]["isClassSpecific"] then
				match = true;
			elseif SVSettings.showHidden and element["base"]["isHidden"] then
				match = true;
			elseif SVSettings.showClassrestricted and element["base"]["isClassSpecific"] then
				match = true;
			elseif SVSettings.showUnobtainable and (element["base"]["isObtainable"] == false) then
				match = true;
			end
		end

		-- Add to matches only if exactly one filter condition is met
		if match then
			tinsert(matches, element);
		end
	end

	table.sort(matches, LoreKGUI.sortFunc);
	PopulateNewDataProvider(matches);
end


-- Generally safer to use HookScript on EditBoxes inheriting a template as they likely already have OnTextChanged callbacks defined
-- As a side note, it may be worth debouncing this callback if your search method is particularly performance intensive
LoreKGUI.SearchBox:HookScript("OnTextChanged", LoreKGUI.OnTextChanged);

LoreKGUI.FilterDropdown = CreateFrame("DropdownButton", nil, ItemDisplayFrame, "WowStyle1FilterDropdownTemplate");
LoreKGUI.FilterDropdown.Text:SetText(LK["filter"]);
LoreKGUI.FilterDropdown:SetPoint("LEFT", LoreKGUI.SearchBox, "RIGHT", 3, 0);
LoreKGUI.FilterDropdown:SetSize(80, 20);

local function FilterHandler(owner, rootDescription)
	local SVSettings = LoreK_DB["settings"]["searchMenu"]
	--rootDescription:CreateTitle("Filter Options");

	local checkbox1 = rootDescription:CreateCheckbox(LK["Collected"], function()
		return SVSettings.showCollected;
	end,
	function(selected)
		if SVSettings.showCollected then
			SVSettings.showCollected = false;
		else
			SVSettings.showCollected = true;
		end
		LoreKGUI.PopulateList();
	end);

	local checkbox1 = rootDescription:CreateCheckbox(LK["NotCollected"], function()
		return SVSettings.showUnread;
	end,
	function(selected)
		if SVSettings.showUnread then
			SVSettings.showUnread = false;
		else
			SVSettings.showUnread = true;
		end
		LoreKGUI.PopulateList();
	end);

	local checkbox2 = rootDescription:CreateCheckbox(LK["Hidden"], function()
		return SVSettings.showHidden;
	end,
	function(selected)
		if SVSettings.showHidden then
			SVSettings.showHidden = false;
		else
			SVSettings.showHidden = true;
		end
		LoreKGUI.PopulateList();
	end);
	local checkbox3 = rootDescription:CreateCheckbox(LK["ClassRestricted"], function()
		return SVSettings.showClassrestricted;
	end,
	function(selected)
		if SVSettings.showClassrestricted then
			SVSettings.showClassrestricted = false;
		else
			SVSettings.showClassrestricted = true;
		end;
		LoreKGUI.PopulateList();
	end);
	local checkbox4 = rootDescription:CreateCheckbox(LK["Unobtainable"], function()
		return SVSettings.showUnobtainable;
	end,
	function(selected)
		if SVSettings.showUnobtainable then
			SVSettings.showUnobtainable = false;
		else
			SVSettings.showUnobtainable = true;
		end;
		LoreKGUI.PopulateList();
	end);

	-- Optionally, set selection ignored so it doesn't affect dropdown selection text
	checkbox1:SetSelectionIgnored();
	checkbox2:SetSelectionIgnored();
	checkbox3:SetSelectionIgnored();
	checkbox4:SetSelectionIgnored();

end

--------------------------------------------------------------------------
--------------------------------------------------------------------------
-- copy frame

LoreKGUI.LibraryPanel.CopyTextFrame = CreateFrame("Frame", nil, LoreKGUI.LibraryPanel, "BackdropTemplate");
local CopyTextFrame = LoreKGUI.LibraryPanel.CopyTextFrame;
CopyTextFrame:SetPoint("TOPLEFT", LoreKGUI.LibraryPanel, "TOPRIGHT", 10, 0);
CopyTextFrame:SetPoint("BOTTOMLEFT", LoreKGUI.LibraryPanel, "BOTTOMRIGHT", 10, 0);
CopyTextFrame:SetWidth(400);
CopyTextFrame:SetBackdrop({
	bgFile = "Interface/Tooltips/UI-Tooltip-Background",
	edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
	tile = true, tileSize = 16, edgeSize = 16,
	insets = {left = 4, right = 4, top = 4, bottom = 4}
});
CopyTextFrame:SetBackdropColor(0, 0, 0, 1);
CopyTextFrame.closebutton = CreateFrame("Button", nil, CopyTextFrame, "UIPanelCloseButton");
CopyTextFrame.closebutton:SetWidth(24);
CopyTextFrame.closebutton:SetHeight(24);
CopyTextFrame.closebutton:SetPoint("TOPRIGHT", CopyTextFrame, "TOPRIGHT", 1, 1);
CopyTextFrame.closebutton:SetScript("OnClick", function(self, button)
	CopyTextFrame:Hide();
end)

LoreKGUI.LibraryPanel.copyTextScrollFrame = CreateFrame("ScrollFrame", nil, CopyTextFrame, "ScrollFrameTemplate");
local copyTextScrollFrame = LoreKGUI.LibraryPanel.copyTextScrollFrame;
copyTextScrollFrame:SetPoint("TOPLEFT", 10, -10);
copyTextScrollFrame:SetPoint("BOTTOMRIGHT", -7.5, 0);

LoreKGUI.LibraryPanel.CopyTextEditBox = CreateFrame("EditBox", nil, copyTextScrollFrame);
local CopyTextEditBox = LoreKGUI.LibraryPanel.CopyTextEditBox;
CopyTextEditBox:SetMultiLine(true);
CopyTextEditBox:SetSize(360, 280);
CopyTextEditBox:SetAutoFocus(false);
CopyTextEditBox:SetFontObject(GameFontNormal);
CopyTextEditBox:SetScript("OnEscapePressed", function(self) self:ClearFocus() end);
LoreKGUI.LibraryPanel.CopyTextEditBoxText = "";
local CopyTextEditBoxText = LoreKGUI.LibraryPanel.CopyTextEditBoxText;
CopyTextEditBox:HighlightText();

CopyTextEditBox:SetScript("OnTextChanged", function(self)
	self:SetText(LoreKGUI.LibraryPanel.CopyTextEditBoxText);
end)
copyTextScrollFrame:SetScrollChild(CopyTextEditBox);
copyTextScrollFrame.ScrollBar:ClearAllPoints();
copyTextScrollFrame.ScrollBar:SetPoint("TOPLEFT", copyTextScrollFrame, "TOPRIGHT", -12, -18);
copyTextScrollFrame.ScrollBar:SetPoint("BOTTOMLEFT", copyTextScrollFrame, "BOTTOMRIGHT", -12, 18);

CopyTextFrame:EnableMouse(true);
CopyTextEditBox:HookScript("OnChar", function(self)
	self:SetText(LoreKGUI.LibraryPanel.CopyTextEditBoxText);
end)
CopyTextFrame:Hide();



--------------------------------------------------------------------------
--------------------------------------------------------------------------
 -- Settings Panel
--------------------------------------------------------------------------
--------------------------------------------------------------------------


LoreKGUI.OptionsDisplayFrame = CreateFrame("Frame", nil, LoreKGUI.SettingsPanel, "InsetFrameTemplate3");
LoreKGUI.OptionsDisplayFrame:SetWidth(230);
LoreKGUI.OptionsDisplayFrame:SetPoint("TOPLEFT", LoreKGUI.SettingsPanel, "TOPLEFT", 0, -65);
LoreKGUI.OptionsDisplayFrame:SetPoint("BOTTOMLEFT", LoreKGUI.SettingsPanel, "BOTTOMLEFT", 0, 30);

LoreKGUI.SettingsDisplayFrame = CreateFrame("Frame", nil, LoreKGUI.SettingsPanel, "InsetFrameTemplate4");
local SettingsDisplayFrame = LoreKGUI.SettingsDisplayFrame;
SettingsDisplayFrame:SetPoint("TOPLEFT", LoreKGUI.SettingsPanel, "TOPLEFT", 0, -65);
SettingsDisplayFrame:SetPoint("BOTTOMRIGHT", LoreKGUI.SettingsPanel, "BOTTOMRIGHT",-20, 30);
SettingsDisplayFrame.tex = SettingsDisplayFrame:CreateTexture()
SettingsDisplayFrame.tex:SetPoint("TOPLEFT", SettingsDisplayFrame, "TOPLEFT", 2, -2);
SettingsDisplayFrame.tex:SetPoint("BOTTOMRIGHT", SettingsDisplayFrame, "BOTTOMRIGHT", -2, 2);
SettingsDisplayFrame.tex:SetColorTexture(0, 0, 0, 0.5)

LoreKGUI.SettingsScrollFrame = CreateFrame("ScrollFrame", nil, LoreKGUI.SettingsPanel, "ScrollFrameTemplate");
local SettingsScrollFrame = LoreKGUI.SettingsScrollFrame;
SettingsScrollFrame:SetPoint("TOPLEFT", SettingsDisplayFrame, "TOPLEFT", 2, -5);
SettingsScrollFrame:SetPoint("BOTTOMRIGHT", SettingsDisplayFrame, "BOTTOMRIGHT", -2, 3);
moveFrameXY(SettingsScrollFrame.ScrollBar, "TOPLEFT", "TOPRIGHT", 0, -5);
moveFrameXY(SettingsScrollFrame.ScrollBar, "BOTTOMLEFT", "BOTTOMRIGHT", 0, 3);

LoreKGUI.SettingsScrollChild = CreateFrame("Frame", nil, SettingsScrollFrame);
local SettingsScrollChild = LoreKGUI.SettingsScrollChild;
SettingsScrollChild:SetSize(SettingsScrollFrame:GetWidth()-8, 1); -- Height will adjust based on content
SettingsScrollFrame:SetScrollChild(SettingsScrollChild);
SettingsScrollChild:SetPoint("TOP", SettingsScrollFrame, "TOP", 0, 0);

local settingsPanelXPlacer = -27
local settingsPanelYPlacer = 20

SettingsDisplayFrame.hideUnread_Checkbox = CreateFrame("CheckButton", nil, SettingsScrollChild, "UICheckButtonTemplate");
SettingsDisplayFrame.hideUnread_Checkbox:SetPoint("TOPLEFT", SettingsScrollChild, "TOPLEFT", settingsPanelYPlacer, settingsPanelXPlacer*1);
SettingsDisplayFrame.hideUnread_Checkbox:SetScript("OnClick", function(self)
	if self:GetChecked() then
		LoreK_DB["settings"]["hideUnread"] = true;
		PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON, "SFX");
	else
		LoreK_DB["settings"]["hideUnread"] = false;
		PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_OFF, "SFX");
	end
end);
SettingsDisplayFrame.hideUnread_Checkbox.Text:SetText(LK["FogOfLore"])
SettingsDisplayFrame.hideUnread_Checkbox.Text:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(SettingsDisplayFrame.hideUnread_Checkbox, "ANCHOR_TOPLEFT");
	GameTooltip:AddLine(LK["FogOfLoreTT"], 1, 1, 1, true);
	GameTooltip:Show();
end);
SettingsDisplayFrame.hideUnread_Checkbox.Text:SetScript("OnLeave", function(self)
	GameTooltip:Hide();
end);
SettingsDisplayFrame.hideUnread_Checkbox:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(SettingsDisplayFrame.hideUnread_Checkbox, "ANCHOR_TOPLEFT");
	GameTooltip:AddLine(LK["FogOfLoreTT"], 1, 1, 1, true);
	GameTooltip:Show();
end);
SettingsDisplayFrame.hideUnread_Checkbox:SetScript("OnLeave", function(self)
	GameTooltip:Hide();
end);

SettingsDisplayFrame.slashRead_Checkbox = CreateFrame("CheckButton", nil, SettingsScrollChild, "UICheckButtonTemplate");
SettingsDisplayFrame.slashRead_Checkbox:SetPoint("TOPLEFT", SettingsScrollChild, "TOPLEFT", settingsPanelYPlacer, settingsPanelXPlacer*2);
SettingsDisplayFrame.slashRead_Checkbox:SetScript("OnClick", function(self)
	if self:GetChecked() then
		LoreK_DB["settings"]["slashRead"] = true;
		PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON, "SFX");
	else
		LoreK_DB["settings"]["slashRead"] = false;
		PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_OFF, "SFX");
	end
end);
SettingsDisplayFrame.slashRead_Checkbox.Text:SetText(LK["SlashRead"])
SettingsDisplayFrame.slashRead_Checkbox.Text:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(SettingsDisplayFrame.slashRead_Checkbox, "ANCHOR_TOPLEFT");
	GameTooltip:AddLine(LK["SlashReadTT"], 1, 1, 1, true);
	GameTooltip:Show();
end);
SettingsDisplayFrame.slashRead_Checkbox.Text:SetScript("OnLeave", function(self)
	GameTooltip:Hide();
end);
SettingsDisplayFrame.slashRead_Checkbox:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(SettingsDisplayFrame.slashRead_Checkbox, "ANCHOR_TOPLEFT");
	GameTooltip:AddLine(LK["SlashReadTT"], 1, 1, 1, true);
	GameTooltip:Show();
end);
SettingsDisplayFrame.slashRead_Checkbox:SetScript("OnLeave", function(self)
	GameTooltip:Hide();
end);

SettingsDisplayFrame.overrideMats_Checkbox = CreateFrame("CheckButton", nil, SettingsScrollChild, "UICheckButtonTemplate");
SettingsDisplayFrame.overrideMats_Checkbox:SetPoint("TOPLEFT", SettingsScrollChild, "TOPLEFT", settingsPanelYPlacer, settingsPanelXPlacer*3);
SettingsDisplayFrame.overrideMats_Checkbox:SetScript("OnClick", function(self)
	if self:GetChecked() then
		LoreK_DB["settings"]["overrideMaterials"] = true;
		PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON, "SFX");
	else
		LoreK_DB["settings"]["overrideMaterials"] = false;
		PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_OFF, "SFX");
	end
	LoreKGUI.SetParchmentTexture()
end);
SettingsDisplayFrame.overrideMats_Checkbox.Text:SetText(LK["ReplaceMats"])
SettingsDisplayFrame.overrideMats_Checkbox.Text:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(SettingsDisplayFrame.overrideMats_Checkbox, "ANCHOR_TOPLEFT");
	GameTooltip:AddLine(LK["ReplaceMatsTT"], 1, 1, 1, true);
	GameTooltip:Show();
end);
SettingsDisplayFrame.overrideMats_Checkbox.Text:SetScript("OnLeave", function(self)
	GameTooltip:Hide();
end);
SettingsDisplayFrame.overrideMats_Checkbox:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(SettingsDisplayFrame.overrideMats_Checkbox, "ANCHOR_TOPLEFT");
	GameTooltip:AddLine(LK["ReplaceMatsTT"], 1, 1, 1, true);
	GameTooltip:Show();
end);
SettingsDisplayFrame.overrideMats_Checkbox:SetScript("OnLeave", function(self)
	GameTooltip:Hide();
end);

SettingsDisplayFrame.ParchmentTypes = {
	["questBG"] = {
		"QuestBG-Parchment",
		"QuestBG-Parchment-Accessibility",
		"QuestBG-Parchment-Accessibility2",
		"QuestBG-Parchment-Accessibility3",
		"QuestBG-Parchment-Accessibility4",
	},
	["questZone"] = {
		"QuestBG-1027",
		"QuestBG-Azurespan",
		"QuestBG-Dracthyrawaken",
		"QuestBG-Dragonflight",
		"QuestBG-EmeraldDream",
		"QuestBG-Ohnplains",
		"QuestBG-Thaldraszus",
		"QuestBG-Walkingshore",
		"QuestBG-ZaralekCavern",
		"QuestBG-ExilesReach",
		"QuestBG-Alliance",
		"QuestBG-Horde",
		"QuestBG-Legionfall",
		"QuestBG-TheHandofFate",
		"QuestBG-Pandaria",
		"QuestBG-Shadowlands",
		"QuestBG-Ardenweald",
		"QuestBG-Bastion",
		"QuestBG-Kyrian",
		"QuestBG-Necrolord",
		"QuestBG-Fey",
		"QuestBG-Venthyr",
		"QuestBG-Maldraxxus",
		"QuestBG-Oribos",
		"QuestBG-Revendreth",
		"QuestBG-secretsofthefirstones",
		"QuestBG-Candle",
		"QuestBG-Flame",
		"QuestBG-Storm",
		"QuestBG-Web",
		"QuestBG-Trading-Post",
	},
	["professionBG"] = {
		"QuestBG-alchemy",
		"QuestBG-blacksmithing",
		"QuestBG-cooking",
		"QuestBG-enchanting",
		"QuestBG-engineering",
		"QuestBG-fishing",
		"QuestBG-herbalism",
		"QuestBG-inscription",
		"QuestBG-jewelcrafting",
		"QuestBG-leatherworking",
		"QuestBG-mining",
		"QuestBG-skinning",
		"QuestBG-tailoring",
	},
	["misc"] = {
		"spellbook-background-evergreen-right",
		"spellbook-background-evergreen-left",
		"newplayerchat-signup-background",
		"warboard-parchment",
		"ChromieTime-Parchment",
		"QuestLog-empty-quest-background",
		"QuestLog-main-background",
		"Campaign-QuestLog-LoreBackground",
		"GarrLanding-FollowerFrame",
		"UI-Frame-Alliance-CardParchmentWider",
		"UI-Frame-Horde-CardParchmentWider",
		"UI-Frame-Neutral-CardParchmentWider",
		"UI-Frame-Dragonflight-CardParchmentWider",
		"UI-Frame-Kyrian-CardParchmentWider",
		"UI-Frame-Necrolord-CardParchmentWider",
		"UI-Frame-NightFae-CardParchmentWider",
		"UI-Frame-Venthyr-CardParchmentWider",
		"UI-Frame-Marine-CardParchmentWider",
		"UI-Frame-Mechagon-CardParchmentWider",
		"ui-frame-thewarwithin-cardparchmentwider",
		"shop-card-full-15thAnniversary",
		"shop-card-bundle",
		"store-card-splash1-nobanner",
		"store-card-transmog",

	},

};

SettingsDisplayFrame.ParchmentPreview = CreateFrame("Frame", nil, SettingsScrollChild);
SettingsDisplayFrame.ParchmentPreview:SetPoint("TOPRIGHT", SettingsScrollChild, "TOPRIGHT", 5, -35);
SettingsDisplayFrame.ParchmentPreview:SetSize(TextDisplayFrame:GetWidth()-8,511-45);
SettingsDisplayFrame.ParchmentPreview.tex = SettingsDisplayFrame.ParchmentPreview:CreateTexture(nil, "OVERLAY", nil, 1);
SettingsDisplayFrame.ParchmentPreview.tex:SetAllPoints(true);

SettingsDisplayFrame.TitlePreview = CreateFrame("Frame", nil, SettingsDisplayFrame.ParchmentPreview);
SettingsDisplayFrame.TitlePreview:SetPoint("TOP", SettingsDisplayFrame.ParchmentPreview, "TOP", 0,36);
SettingsDisplayFrame.TitlePreview:SetWidth(SettingsDisplayFrame.ParchmentPreview:GetWidth());
SettingsDisplayFrame.TitlePreview:SetHeight(48);
SettingsDisplayFrame.TitlePreview.tex = SettingsDisplayFrame.TitlePreview:CreateTexture(nil, "OVERLAY", nil, 2)
SettingsDisplayFrame.TitlePreview.tex:SetAllPoints(true)
SettingsDisplayFrame.TitlePreview.tex:SetAtlas("StoryHeader-BG")

SettingsDisplayFrame.textTitlePreview = SettingsDisplayFrame.TitlePreview:CreateFontString(nil, "OVERLAY");
SettingsDisplayFrame.textTitlePreview:SetFontObject("GameFontHighlightLarge"); -- make into option later
SettingsDisplayFrame.textTitlePreview:SetPoint("TOPLEFT", SettingsDisplayFrame.TitlePreview, "TOPLEFT", 7,-8);
SettingsDisplayFrame.textTitlePreview:SetPoint("BOTTOMRIGHT", SettingsDisplayFrame.TitlePreview, "BOTTOMRIGHT", -7, 5);
SettingsDisplayFrame.textTitlePreview:SetJustifyH("CENTER");
SettingsDisplayFrame.textTitlePreview:SetJustifyV("MIDDLE");
SettingsDisplayFrame.textTitlePreview:SetText(LK["SampleTitle"])



SettingsDisplayFrame.ParchmentDropdown = CreateFrame("DropdownButton", nil, SettingsScrollChild, "WowStyle1DropdownTemplate");
SettingsDisplayFrame.ParchmentDropdown:SetDefaultText(LK["Textures"]);
SettingsDisplayFrame.ParchmentDropdown:SetPoint("TOPLEFT", SettingsScrollChild, "TOPLEFT", settingsPanelYPlacer, settingsPanelXPlacer*4);
SettingsDisplayFrame.ParchmentDropdown:SetSize(190, 26);
SettingsDisplayFrame.ParchmentDropdown:SetupMenu(function(dropdown, rootDescription)

	local optionHeight = 20; -- 20 is default
	local maxElements = 8; -- amount of elements to show before scroll
	local maxScrollExtent = optionHeight * maxElements;
	local elementDescription = rootDescription:CreateButton(LK["Quests"])
	for k, v in ipairs(SettingsDisplayFrame.ParchmentTypes["questBG"]) do
		local submenumenu = elementDescription:CreateButton(SettingsDisplayFrame.ParchmentTypes["questBG"][k], function()
			LoreK_DB["settings"]["material"] = SettingsDisplayFrame.ParchmentTypes["questBG"][k];
			LoreKGUI.SetParchmentTexture();
		end)
	end
	elementDescription:SetScrollMode(maxScrollExtent);
	local elementDescription = rootDescription:CreateButton(LK["Campaign"])
	for k, v in ipairs(SettingsDisplayFrame.ParchmentTypes["questZone"]) do
		local submenumenu = elementDescription:CreateButton(SettingsDisplayFrame.ParchmentTypes["questZone"][k], function()
			LoreK_DB["settings"]["material"] = SettingsDisplayFrame.ParchmentTypes["questZone"][k];
			LoreKGUI.SetParchmentTexture();
		end)
	end
	elementDescription:SetScrollMode(maxScrollExtent);
	local elementDescription = rootDescription:CreateButton(LK["Professions"])
	for k, v in ipairs(SettingsDisplayFrame.ParchmentTypes["professionBG"]) do
		local submenumenu = elementDescription:CreateButton(SettingsDisplayFrame.ParchmentTypes["professionBG"][k], function()
			LoreK_DB["settings"]["material"] = SettingsDisplayFrame.ParchmentTypes["professionBG"][k];
			LoreKGUI.SetParchmentTexture();
		end)
	end
	elementDescription:SetScrollMode(maxScrollExtent);
	local elementDescription = rootDescription:CreateButton(LK["Misc"])
	for k, v in ipairs(SettingsDisplayFrame.ParchmentTypes["misc"]) do
		local submenumenu = elementDescription:CreateButton(SettingsDisplayFrame.ParchmentTypes["misc"][k], function()
			LoreK_DB["settings"]["material"] = SettingsDisplayFrame.ParchmentTypes["misc"][k];
			LoreKGUI.SetParchmentTexture();
		end)
	end
	elementDescription:SetScrollMode(maxScrollExtent);
end)
SettingsDisplayFrame.ParchmentDropdown:SetEnabled(false);

SettingsDisplayFrame.textHTML = CreateFrame("SimpleHTML", nil, SettingsDisplayFrame.ParchmentPreview);
SettingsDisplayFrame.textHTML:SetPoint("TOP", SettingsDisplayFrame.ParchmentPreview, "TOP", 5, -10);
SettingsDisplayFrame.textHTML:SetPoint("BOTTOM", SettingsDisplayFrame.ParchmentPreview, "BOTTOM", -5, 0);
SettingsDisplayFrame.textHTML:SetWidth(SettingsDisplayFrame.ParchmentPreview:GetWidth()-33);

SettingsDisplayFrame.textHTML:SetFont("h1", ITEM_TEXT_FONTS["default"]["H1"]:GetFont());
SettingsDisplayFrame.textHTML:SetFont("h2", ITEM_TEXT_FONTS["default"]["H2"]:GetFont());
SettingsDisplayFrame.textHTML:SetFont("h3", ITEM_TEXT_FONTS["default"]["H3"]:GetFont());
SettingsDisplayFrame.textHTML:SetFont("p", ITEM_TEXT_FONTS["default"]["P"]:GetFont());
SettingsDisplayFrame.textHTML:SetJustifyH("p","LEFT");
SettingsDisplayFrame.textHTML:SetText(LK["SampleText"])

SettingsDisplayFrame.textHTMLLarge = CreateFrame("SimpleHTML", nil, SettingsDisplayFrame.ParchmentPreview);
SettingsDisplayFrame.textHTMLLarge:SetPoint("TOP", SettingsDisplayFrame.ParchmentPreview, "TOP", 5, -160);
SettingsDisplayFrame.textHTMLLarge:SetPoint("BOTTOM", SettingsDisplayFrame.ParchmentPreview, "BOTTOM", -5, 0);
SettingsDisplayFrame.textHTMLLarge:SetWidth(SettingsDisplayFrame.ParchmentPreview:GetWidth()-33);

SettingsDisplayFrame.textHTMLLarge:SetFont("h1", ITEM_TEXT_FONTS["ParchmentLarge"]["H1"]:GetFont());
SettingsDisplayFrame.textHTMLLarge:SetFont("h2", ITEM_TEXT_FONTS["ParchmentLarge"]["H2"]:GetFont());
SettingsDisplayFrame.textHTMLLarge:SetFont("h3", ITEM_TEXT_FONTS["ParchmentLarge"]["H3"]:GetFont());
SettingsDisplayFrame.textHTMLLarge:SetFont("p", ITEM_TEXT_FONTS["ParchmentLarge"]["P"]:GetFont());
SettingsDisplayFrame.textHTMLLarge:SetJustifyH("p","LEFT");
SettingsDisplayFrame.textHTMLLarge:SetText(LK["SampleText"])


SettingsDisplayFrame.materialColorPicker = CreateFrame("Button", nil, SettingsScrollChild, "SharedButtonTemplate");
SettingsDisplayFrame.materialColorPicker:SetPoint("TOPLEFT", SettingsScrollChild, "TOPLEFT", settingsPanelYPlacer, settingsPanelXPlacer*5);
SettingsDisplayFrame.materialColorPicker:SetSize(190, 26);
SettingsDisplayFrame.materialColorPicker:SetText(LK["ColorPicker"] .. ": "..LK["TextMaterial"]);
SettingsDisplayFrame.materialColorPicker:SetScript("OnClick", function()
	ShowColorPicker(LoreK_DB["settings"]["colors"]["parchment"]);
end);

SettingsDisplayFrame.titleColorPicker = CreateFrame("Button", nil, SettingsScrollChild, "SharedButtonTemplate");
SettingsDisplayFrame.titleColorPicker:SetPoint("TOPLEFT", SettingsScrollChild, "TOPLEFT", settingsPanelYPlacer, settingsPanelXPlacer*6);
SettingsDisplayFrame.titleColorPicker:SetSize(190, 26);
SettingsDisplayFrame.titleColorPicker:SetText(LK["ColorPicker"] .. ": "..LK["Title"]);
SettingsDisplayFrame.titleColorPicker:SetScript("OnClick", function()
	ShowColorPicker(LoreK_DB["settings"]["colors"]["title"]);
end);

SettingsDisplayFrame.titleTextColorPicker = CreateFrame("Button", nil, SettingsScrollChild, "SharedButtonTemplate");
SettingsDisplayFrame.titleTextColorPicker:SetPoint("TOPLEFT", SettingsScrollChild, "TOPLEFT", settingsPanelYPlacer, settingsPanelXPlacer*7);
SettingsDisplayFrame.titleTextColorPicker:SetSize(190, 26);
SettingsDisplayFrame.titleTextColorPicker:SetText(LK["ColorPicker"] .. ": "..LK["TitleText"]);
SettingsDisplayFrame.titleTextColorPicker:SetScript("OnClick", function()
	ShowColorPicker(LoreK_DB["settings"]["colors"]["titleText"]);
end);

SettingsDisplayFrame.Head1ColorPicker = CreateFrame("Button", nil, SettingsScrollChild, "SharedButtonTemplate");
SettingsDisplayFrame.Head1ColorPicker:SetPoint("TOPLEFT", SettingsScrollChild, "TOPLEFT", settingsPanelYPlacer, settingsPanelXPlacer*8);
SettingsDisplayFrame.Head1ColorPicker:SetSize(190, 26);
SettingsDisplayFrame.Head1ColorPicker:SetText(LK["ColorPicker"] .. ": "..LK["Header1"]);
SettingsDisplayFrame.Head1ColorPicker:SetScript("OnClick", function()
	ShowColorPicker(LoreK_DB["settings"]["colors"]["h1"]);
end);

SettingsDisplayFrame.Head2ColorPicker = CreateFrame("Button", nil, SettingsScrollChild, "SharedButtonTemplate");
SettingsDisplayFrame.Head2ColorPicker:SetPoint("TOPLEFT", SettingsScrollChild, "TOPLEFT", settingsPanelYPlacer, settingsPanelXPlacer*9);
SettingsDisplayFrame.Head2ColorPicker:SetSize(190, 26);
SettingsDisplayFrame.Head2ColorPicker:SetText(LK["ColorPicker"] .. ": "..LK["Header2"]);
SettingsDisplayFrame.Head2ColorPicker:SetScript("OnClick", function()
	ShowColorPicker(LoreK_DB["settings"]["colors"]["h2"]);
end);

SettingsDisplayFrame.Head3ColorPicker = CreateFrame("Button", nil, SettingsScrollChild, "SharedButtonTemplate");
SettingsDisplayFrame.Head3ColorPicker:SetPoint("TOPLEFT", SettingsScrollChild, "TOPLEFT", settingsPanelYPlacer, settingsPanelXPlacer*10);
SettingsDisplayFrame.Head3ColorPicker:SetSize(190, 26);
SettingsDisplayFrame.Head3ColorPicker:SetText(LK["ColorPicker"] .. ": "..LK["Header3"]);
SettingsDisplayFrame.Head3ColorPicker:SetScript("OnClick", function()
	ShowColorPicker(LoreK_DB["settings"]["colors"]["h3"]);
end);

SettingsDisplayFrame.ParaColorPicker = CreateFrame("Button", nil, SettingsScrollChild, "SharedButtonTemplate");
SettingsDisplayFrame.ParaColorPicker:SetPoint("TOPLEFT", SettingsScrollChild, "TOPLEFT", settingsPanelYPlacer, settingsPanelXPlacer*11);
SettingsDisplayFrame.ParaColorPicker:SetSize(190, 26);
SettingsDisplayFrame.ParaColorPicker:SetText(LK["ColorPicker"] .. ": "..LK["Paragraph"]);
SettingsDisplayFrame.ParaColorPicker:SetScript("OnClick", function()
	ShowColorPicker(LoreK_DB["settings"]["colors"]["p"]);
end);

SettingsDisplayFrame.TextSizeDropdown = CreateFrame("DropdownButton", nil, SettingsScrollChild, "WowStyle1DropdownTemplate");
SettingsDisplayFrame.TextSizeDropdown:SetDefaultText(LK["FontSize"]);
SettingsDisplayFrame.TextSizeDropdown:SetPoint("TOPLEFT", SettingsScrollChild, "TOPLEFT", settingsPanelYPlacer, settingsPanelXPlacer*12);
SettingsDisplayFrame.TextSizeDropdown:SetSize(190, 26);
SettingsDisplayFrame.TextSizeDropdown:SetupMenu(function(dropdown, rootDescription)


	local elementDescription = rootDescription:CreateButton(format(FONT_SIZE_TEMPLATE,"13"),  function()
		LoreK_DB["settings"]["fontSizeP"]["height"] = 13;
		LoreKGUI.SetFontSizeP();
	end);
	local elementDescription = rootDescription:CreateButton(format(FONT_SIZE_TEMPLATE,"16"),  function()
		LoreK_DB["settings"]["fontSizeP"]["height"] = 16;
		LoreKGUI.SetFontSizeP();
	end);
	local elementDescription = rootDescription:CreateButton(format(FONT_SIZE_TEMPLATE,"19"),  function()
		LoreK_DB["settings"]["fontSizeP"]["height"] = 19;
		LoreKGUI.SetFontSizeP();
	end);
	local elementDescription = rootDescription:CreateButton(format(FONT_SIZE_TEMPLATE,"22"),  function()
		LoreK_DB["settings"]["fontSizeP"]["height"] = 22
		LoreKGUI.SetFontSizeP();
	end);
end);

SettingsDisplayFrame.disableCollectSound_Checkbox = CreateFrame("CheckButton", nil, SettingsScrollChild, "UICheckButtonTemplate");
SettingsDisplayFrame.disableCollectSound_Checkbox:SetPoint("TOPLEFT", SettingsScrollChild, "TOPLEFT", settingsPanelYPlacer, settingsPanelXPlacer*13);
SettingsDisplayFrame.disableCollectSound_Checkbox:SetScript("OnClick", function(self)
	if self:GetChecked() then
		LoreK_DB["settings"]["collectSound"] = true;
		PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON, "SFX");
	else
		LoreK_DB["settings"]["collectSound"] = false;
		PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_OFF, "SFX");
	end
end);
SettingsDisplayFrame.disableCollectSound_Checkbox.Text:SetText(LK["ToggleSoundCollected"])
SettingsDisplayFrame.disableCollectSound_Checkbox.Text:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(SettingsDisplayFrame.disableCollectSound_Checkbox, "ANCHOR_TOPLEFT");
	GameTooltip:AddLine(LK["ToggleSoundCollectedTT"], 1, 1, 1, true);
	GameTooltip:Show();
end);
SettingsDisplayFrame.disableCollectSound_Checkbox.Text:SetScript("OnLeave", function(self)
	GameTooltip:Hide();
end);
SettingsDisplayFrame.disableCollectSound_Checkbox:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(SettingsDisplayFrame.disableCollectSound_Checkbox, "ANCHOR_TOPLEFT");
	GameTooltip:AddLine(LK["ToggleSoundCollectedTT"], 1, 1, 1, true);
	GameTooltip:Show();
end);
SettingsDisplayFrame.disableCollectSound_Checkbox:SetScript("OnLeave", function(self)
	GameTooltip:Hide();
end);

SettingsDisplayFrame.disableHolidays_Checkbox = CreateFrame("CheckButton", nil, SettingsScrollChild, "UICheckButtonTemplate");
SettingsDisplayFrame.disableHolidays_Checkbox:SetPoint("TOPLEFT", SettingsScrollChild, "TOPLEFT", settingsPanelYPlacer, settingsPanelXPlacer*14);
SettingsDisplayFrame.disableHolidays_Checkbox:SetScript("OnClick", function(self)
	if self:GetChecked() then
		LoreK_DB["settings"]["holidayThemes"] = true;
		PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON, "SFX");
	else
		LoreK_DB["settings"]["holidayThemes"] = false;
		PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_OFF, "SFX");
	end
	ToggleHolidays();
end);
SettingsDisplayFrame.disableHolidays_Checkbox.Text:SetText(LK["Settings_disableHolidays"])
SettingsDisplayFrame.disableHolidays_Checkbox.Text:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(SettingsDisplayFrame.disableHolidays_Checkbox, "ANCHOR_TOPLEFT");
	GameTooltip:AddLine(LK["Settings_disableHolidaysTT"], 1, 1, 1, true);
	GameTooltip:Show();
end);
SettingsDisplayFrame.disableHolidays_Checkbox.Text:SetScript("OnLeave", function(self)
	GameTooltip:Hide();
end);
SettingsDisplayFrame.disableHolidays_Checkbox:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(SettingsDisplayFrame.disableHolidays_Checkbox, "ANCHOR_TOPLEFT");
	GameTooltip:AddLine(LK["Settings_disableHolidaysTT"], 1, 1, 1, true);
	GameTooltip:Show();
end);
SettingsDisplayFrame.disableHolidays_Checkbox:SetScript("OnLeave", function(self)
	GameTooltip:Hide();
end);



--------------------------------------------------------------------------
--Somewhere way below
SettingsDisplayFrame.debug_Checkbox = CreateFrame("CheckButton", nil, SettingsScrollChild, "UICheckButtonTemplate");
SettingsDisplayFrame.debug_Checkbox:SetPoint("TOPLEFT", SettingsScrollChild, "TOPLEFT", settingsPanelYPlacer, settingsPanelXPlacer*16);
SettingsDisplayFrame.debug_Checkbox:SetScript("OnClick", function(self)
	if self:GetChecked() then
		LoreK_DB["settings"]["debugAdvanced"] = true;
		PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON, "SFX");
	else
		LoreK_DB["settings"]["debugAdvanced"] = false;
		PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_OFF, "SFX");
	end
end);
SettingsDisplayFrame.debug_Checkbox.Text:SetText(LK["Debug"])
SettingsDisplayFrame.debug_Checkbox.Text:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(SettingsDisplayFrame.debug_Checkbox, "ANCHOR_TOPLEFT");
	GameTooltip:AddLine(LK["DebugTT"], 1, 1, 1, true);
	GameTooltip:Show();
end);
SettingsDisplayFrame.debug_Checkbox.Text:SetScript("OnLeave", function(self)
	GameTooltip:Hide();
end);
SettingsDisplayFrame.debug_Checkbox:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(SettingsDisplayFrame.debug_Checkbox, "ANCHOR_TOPLEFT");
	GameTooltip:AddLine(LK["DebugTT"], 1, 1, 1, true);
	GameTooltip:Show();
end);
SettingsDisplayFrame.debug_Checkbox:SetScript("OnLeave", function(self)
	GameTooltip:Hide();
end);

--------------------------------------------------------------------------
--------------------------------------------------------------------------
 -- Addon Load
--------------------------------------------------------------------------
--------------------------------------------------------------------------

function LoreKGUI.SetParchmentTexture()
	if LoreK_DB["settings"]["overrideMaterials"] and LoreK_DB["settings"]["material"] then
		SettingsDisplayFrame.ParchmentDropdown:SetEnabled(true);
		SettingsDisplayFrame.ParchmentPreview.tex:SetAtlas(LoreK_DB["settings"]["material"]); -- dummy frame
		TextDisplayFrame.bg:SetAtlas(LoreK_DB["settings"]["material"]); -- actual frame
	else
		SettingsDisplayFrame.ParchmentDropdown:SetEnabled(false);
		SettingsDisplayFrame.ParchmentPreview.tex:SetAtlas("QuestBG-Parchment"); -- dummy frame
		TextDisplayFrame.bg:SetAtlas("QuestBG-Parchment"); -- actual frame
	end
	if LoreK_DB["settings"]["overrideMaterials"] then
		SettingsDisplayFrame.ParchmentDropdown:SetEnabled(true);
	end
end

function LoreKGUI.SetColors()
	if not LoreK_DB["settings"]["colors"] then
		LoreK_DB["settings"]["colors"] = {
			["parchment"] = {
				r = 1,
				g = 1,
				b = 1,
				a = 1,
			},
			["title"] = {
				r = 1,
				g = 1,
				b = 1,
				a = 1,
			},
			["titleText"] = {
				r = .85,
				g = .70,
				b = .45,
				a = 1,
			},
			["h1"] = {
				r = .18,
				g = .12,
				b = .05,
				a = 1,
			},
			["h2"] = {
				r = .18,
				g = .12,
				b = .05,
				a = 1,
			},
			["h3"] = {
				r = .18,
				g = .12,
				b = .05,
				a = 1,
			},
			["p"] = {
				r = .18,
				g = .12,
				b = .05,
				a = 1,
			},
		};
	end;

	SettingsDisplayFrame.TitlePreview.tex:SetVertexColor(ColorMixin.GetRGBA(LoreK_DB["settings"]["colors"]["title"])); -- dummy frame
	TitleBackdrop.tex:SetVertexColor(ColorMixin.GetRGBA(LoreK_DB["settings"]["colors"]["title"])); -- actual frame
	SettingsDisplayFrame.ParchmentPreview.tex:SetVertexColor(ColorMixin.GetRGBA(LoreK_DB["settings"]["colors"]["parchment"])); -- dummy frame
	TextDisplayFrame.bg:SetVertexColor(ColorMixin.GetRGBA(LoreK_DB["settings"]["colors"]["parchment"])); -- actual frame

	SettingsDisplayFrame.textTitlePreview:SetTextColor(ColorMixin.GetRGBA(LoreK_DB["settings"]["colors"]["titleText"]));  -- dummy text
	TextScrollChild.textTitle:SetTextColor(ColorMixin.GetRGBA(LoreK_DB["settings"]["colors"]["titleText"])); -- actual text
	SettingsDisplayFrame.textHTML:SetTextColor("h1", ColorMixin.GetRGBA(LoreK_DB["settings"]["colors"]["h1"])); -- dummy text
	SettingsDisplayFrame.textHTML:SetTextColor("h2", ColorMixin.GetRGBA(LoreK_DB["settings"]["colors"]["h2"]));
	SettingsDisplayFrame.textHTML:SetTextColor("h3", ColorMixin.GetRGBA(LoreK_DB["settings"]["colors"]["h3"]));
	SettingsDisplayFrame.textHTML:SetTextColor("p", ColorMixin.GetRGBA(LoreK_DB["settings"]["colors"]["p"]));

	SettingsDisplayFrame.textHTMLLarge:SetTextColor("h1", ColorMixin.GetRGBA(LoreK_DB["settings"]["colors"]["h1"])); -- dummy text
	SettingsDisplayFrame.textHTMLLarge:SetTextColor("h2", ColorMixin.GetRGBA(LoreK_DB["settings"]["colors"]["h2"]));
	SettingsDisplayFrame.textHTMLLarge:SetTextColor("h3", ColorMixin.GetRGBA(LoreK_DB["settings"]["colors"]["h3"]));
	SettingsDisplayFrame.textHTMLLarge:SetTextColor("p", ColorMixin.GetRGBA(LoreK_DB["settings"]["colors"]["p"]));

	TextScrollChild.textHTML:SetTextColor("h1", ColorMixin.GetRGBA(LoreK_DB["settings"]["colors"]["h1"])); --actual text colors
	TextScrollChild.textHTML:SetTextColor("h2", ColorMixin.GetRGBA(LoreK_DB["settings"]["colors"]["h2"]));
	TextScrollChild.textHTML:SetTextColor("h3", ColorMixin.GetRGBA(LoreK_DB["settings"]["colors"]["h3"]));
	TextScrollChild.textHTML:SetTextColor("p", ColorMixin.GetRGBA(LoreK_DB["settings"]["colors"]["p"]));

end;

function LoreKGUI.SetFontSizeP()
	local fontFile, height, flags = ITEM_TEXT_FONTS["ParchmentLarge"]["P"]:GetFont()
	if not LoreK_DB["settings"]["fontSizeP"] then
		LoreK_DB["settings"]["fontSizeP"] = {
			fontFile, height, flags,
		};
	end;

	SettingsDisplayFrame.textHTML:SetFont("p", fontFile, LoreK_DB["settings"]["fontSizeP"]["height"] or 13, flags);  -- dummy text
	SettingsDisplayFrame.textHTMLLarge:SetFont("p", fontFile, LoreK_DB["settings"]["fontSizeP"]["height"] or 13, flags); -- dummy text
	TextScrollChild.textHTML:SetFont("p", fontFile, LoreK_DB["settings"]["fontSizeP"]["height"] or 13, flags);
end;


LoreKGUI.Events = CreateFrame("Frame");
LoreKGUI.Events:RegisterEvent("ADDON_LOADED");
LoreKGUI.Events:RegisterEvent("PLAYER_ENTERING_WORLD");


function LoreKGUI.Initialize(self, event, arg1)
	if event == "ADDON_LOADED" and arg1 == "Lorekeeper" then
		if not LoreK_DB["settings"] then
			LoreK_DB["settings"] = {
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
			};
		end
		if not LoreK_DB["settings"]["searchMenu"] then
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
		if not LoreK_DB["settings"]["TTSSettings"] then
			LoreK_DB["settings"]["TTSSettings"] = CopyTable(defaultTTSSettings);
		end
		if LoreK_DB["settings"]["TTSSettings"]["phonetics"] == nil then
			LoreK_DB["settings"]["TTSSettings"]["phonetics"] = true;
		end
		if LoreK_DB["settings"]["holidayThemes"] == nil then
			LoreK_DB["settings"]["holidayThemes"] = true;
		end
		TTSSettings.QueuePages_Checkbox:SetChecked(LoreK_DB["settings"]["TTSSettings"]["queuePages"]);
		TTSSettings.PhoneticReplace_Checkbox:SetChecked(LoreK_DB["settings"]["TTSSettings"]["phonetics"]);
		TTSSettings.VolumeSlider.Slider:SetValue(LoreK_DB["settings"]["TTSSettings"]["volume"]);
		TTSSettings.SpeedSlider.Slider:SetValue(LoreK_DB["settings"]["TTSSettings"]["speed"]);

		LoreKGUI.FilterDropdown:SetupMenu(FilterHandler);

		LoreKGUI.PopulateList();
		SettingsDisplayFrame.overrideMats_Checkbox:SetChecked(LoreK_DB["settings"]["overrideMaterials"]);
		SettingsDisplayFrame.hideUnread_Checkbox:SetChecked(LoreK_DB["settings"]["hideUnread"]);
		SettingsDisplayFrame.slashRead_Checkbox:SetChecked(LoreK_DB["settings"]["slashRead"]);
		SettingsDisplayFrame.disableCollectSound_Checkbox:SetChecked(LoreK_DB["settings"]["collectSound"]);
		SettingsDisplayFrame.disableHolidays_Checkbox:SetChecked(LoreK_DB["settings"]["holidayThemes"]);
		SettingsDisplayFrame.debug_Checkbox:SetChecked(LoreK_DB["settings"]["debugAdvanced"]);
		
		LoreKGUI.SetParchmentTexture()
		LoreKGUI.SetColors()
		LoreKGUI.SetFontSizeP();

		HolidaysTheme.Corner_BL:SetPoint("BOTTOMLEFT", LoreKGUI.TextDisplayFrame, "BOTTOMLEFT", 0, 0);
		HolidaysTheme.Corner_BR:SetPoint("BOTTOMRIGHT", LoreKGUI.TextDisplayFrame, "BOTTOMRIGHT", 0, 0);
	end
	if event == "PLAYER_ENTERING_WORLD" then
		HasLoginForTab = true
		if not C_AddOns.IsAddOnLoaded("Lorekeeper_Mail") then
			LoreKMainframeTab2:SetEnabled(false);
			LoreKMainframeTab2.Text:SetTextColor(.5,.5,.5);
		end
	end
end

LoreKGUI.Events:SetScript("OnEvent", LoreKGUI.Initialize);

function LoreKGUI.Script_OnShow()
	PlaySound(SOUNDKIT.IG_SPELLBOOK_OPEN, "SFX");
	if LoreK_DB["settings"]["slashRead"] then
		DoEmote("READ", nil, true);
	end

	ToggleHolidays();
end
function LoreKGUI.Script_OnHide()
	PlaySound(SOUNDKIT.IG_SPELLBOOK_CLOSE, "SFX");
	if LoreK_DB["settings"]["slashRead"] then
		CancelEmote();
	end
end

LoreKGUI:SetScript("OnShow", LoreKGUI.Script_OnShow);
LoreKGUI:SetScript("OnHide", LoreKGUI.Script_OnHide);
LoreKGUI:HookScript("OnShow", SetupFade);
LoreKGUI:HookScript("OnHide", CleanupFade);