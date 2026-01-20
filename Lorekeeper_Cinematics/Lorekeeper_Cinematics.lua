if not C_AddOns.IsAddOnLoaded("Lorekeeper") then
	return;
end

local _, LK = ...
local LK = Lorekeeper_API.LK
local LoreKGUI = Lorekeeper_API.LK.LoreKGUI
local PATH = "Interface\\AddOns\\Lorekeeper_Cinematics\\Assets\\Textures\\"

local MAX_EXPANSION_ID = LE_EXPANSION_LEVEL_CURRENT
local CinematicsFilters = {}

for i = 0, MAX_EXPANSION_ID do
	CinematicsFilters[i] = true
end

-- layout based on Interface/Glues/Common/CinematicButtonsLargeAtlas
local texCoordsLoc = {
	-- ID = {left, right, top, bottom}
	[1] = {0.0009765625,	0.2412109375,	0.0009765625,	0.1328125		},
	[2] = {0.0009765625,	0.2412109375,	0.134765625,	0.2666015625	},
	[3] = {0.0009765625,	0.2412109375,	0.2685546875,	0.400390625		},
	[4] = {0.0009765625,	0.2412109375,	0.40234375,		0.5341796875	},
	[5] = {0.0009765625,	0.2412109375,	0.5361328125,	0.66796875		},
	[6] = {0.0009765625,	0.2412109375,	0.669921875,	0.8017578125	},
	[7] = {0.0009765625,	0.2412109375,	0.8037109375,	0.935546875		},

	[8] = {0.2431640625,	0.4833984375,	0.0009765625,	0.1328125		},
	[9] = {0.2431640625,	0.4833984375,	0.134765625,	0.2666015625	},
	[10] = {0.2431640625,	0.4833984375,	0.2685546875,	0.400390625		},
	[11] = {0.2431640625,	0.4833984375,	0.40234375,		0.5341796875	},
	[12] = {0.2431640625,	0.4833984375,	0.5361328125,	0.66796875		},
	[13] = {0.2431640625,	0.4833984375,	0.669921875,	0.8017578125	},
	[14] = {0.2431640625,	0.4833984375,	0.8037109375,	0.935546875		},

	[15] = {0.4853515625,	0.7255859375,	0.0009765625,	0.1328125		},
	[16] = {0.4853515625,	0.7255859375,	0.134765625,	0.2666015625	},
	[17] = {0.4853515625,	0.7255859375,	0.2685546875,	0.400390625		},
	[18] = {0.4853515625,	0.7255859375,	0.40234375,		0.5341796875	},
	[19] = {0.4853515625,	0.7255859375,	0.5361328125,	0.66796875		},
	[20] = {0.4853515625,	0.7255859375,	0.669921875,	0.8017578125	},
	[21] = {0.4853515625,	0.7255859375,	0.8037109375,	0.935546875		},

	[22] = {0.7275390625,	0.9677734375,	0.0009765625,	0.1328125		},
	[23] = {0.7275390625,	0.9677734375,	0.134765625,	0.2666015625	},
	[24] = {0.7275390625,	0.9677734375,	0.2685546875,	0.400390625		},
	[25] = {0.7275390625,	0.9677734375,	0.40234375,		0.5341796875	},
	[26] = {0.7275390625,	0.9677734375,	0.5361328125,	0.66796875		},
	[27] = {0.7275390625,	0.9677734375,	0.669921875,	0.8017578125	},
	[28] = {0.7275390625,	0.9677734375,	0.8037109375,	0.935546875		},
};

local function Print(...)
	local prefix = string.format("|cFFFFF569".. Lorekeeper_API.LK["Lorekeeper"] .. "|r:");
	DEFAULT_CHAT_FRAME:AddMessage(string.join(" ", prefix, ...));
end

local function moveFrameXY(frame, point, relativePoint, newxOfs, newyOfs)
	local point_, relativeTo, relativePoint_, xOfs, yOfs = frame:GetPoint();
	point, relativeTo, relativePoint, xOfs, yOfs = point, relativeTo, relativePoint, xOfs+newxOfs, yOfs+newyOfs;
	frame:SetPoint(point, relativeTo, relativePoint, xOfs, yOfs);
end

function Lorekeeper_API.SetUpCinematicsColorsAndTextures()
	if not LoreKGUI.CinematicsTextDisplayFrame then return end
	
	local settings = LoreK_DB["settings"]
	local colors = settings["colors"]
	local frame = LoreKGUI.CinematicsTextDisplayFrame
	local textChild = frame.TextScrollChild

	if settings["overrideMaterials"] and settings["material"] then
		frame.bg:SetAtlas(settings["material"])
	else
		frame.bg:SetAtlas("QuestBG-Parchment")
	end

	frame.bg:SetVertexColor(ColorMixin.GetRGBA(colors["parchment"]))
	frame.TitleBackdrop.tex:SetVertexColor(ColorMixin.GetRGBA(colors["title"]))
	textChild.textTitle:SetTextColor(ColorMixin.GetRGBA(colors["titleText"]))

	textChild.textHTML:SetTextColor("h1", ColorMixin.GetRGBA(colors["h1"]))
	textChild.textHTML:SetTextColor("h2", ColorMixin.GetRGBA(colors["h2"]))
	textChild.textHTML:SetTextColor("h3", ColorMixin.GetRGBA(colors["h3"]))
	textChild.textHTML:SetTextColor("p", ColorMixin.GetRGBA(colors["p"]))

	local fontFile, height, flags = ITEM_TEXT_FONTS["ParchmentLarge"]["P"]:GetFont()
	local size = settings["fontSizeP"] and settings["fontSizeP"]["height"] or 13
	textChild.textHTML:SetFont("p", fontFile, size, flags)
end


if not LoreKGUI.CinematicsPanel then
	return 
end

LoreKGUI.CinematicsDisplayFrame = CreateFrame("Frame", "LoreKCinematicsDisplayFrame", LoreKGUI.CinematicsPanel, "InsetFrameTemplate3");
local CinematicsDisplayFrame = LoreKGUI.CinematicsDisplayFrame;
CinematicsDisplayFrame:SetWidth(210);
CinematicsDisplayFrame:SetPoint("TOPLEFT", LoreKGUI.CinematicsPanel, "TOPLEFT", 0, -65);
CinematicsDisplayFrame:SetPoint("BOTTOMLEFT", LoreKGUI.CinematicsPanel, "BOTTOMLEFT", 0, 30);

LoreKGUI.CinematicsTextDisplayFrame = CreateFrame("Frame", "LoreKCinematicsTextDisplayFrame", LoreKGUI.CinematicsPanel, "InsetFrameTemplate4");
local CineTextFrame = LoreKGUI.CinematicsTextDisplayFrame;
CineTextFrame:SetPoint("TOPLEFT", CinematicsDisplayFrame, "TOPRIGHT", 19, 0);
CineTextFrame:SetPoint("BOTTOMRIGHT", LoreKGUI.CinematicsPanel, "BOTTOMRIGHT", -20, 30);

CineTextFrame.bg = CineTextFrame:CreateTexture(nil, "BACKGROUND");
CineTextFrame.bg:SetPoint("TOPLEFT", CineTextFrame, "TOPLEFT", 3, -40);
CineTextFrame.bg:SetPoint("BOTTOMRIGHT", CineTextFrame, "BOTTOMRIGHT", -4, 5);
CineTextFrame.bg:SetAtlas("QuestBG-Parchment");

CineTextFrame.TextScrollFrame = CreateFrame("ScrollFrame", "LoreKCineTextScrollFrame", CineTextFrame, "ScrollFrameTemplate");
local TextScrollFrame = CineTextFrame.TextScrollFrame;
TextScrollFrame:SetPoint("TOPLEFT", CineTextFrame, "TOPLEFT", 25, -55);
TextScrollFrame:SetPoint("BOTTOMRIGHT", CineTextFrame, "BOTTOMRIGHT", -2, 40);
moveFrameXY(TextScrollFrame.ScrollBar, "TOPLEFT", "TOPRIGHT", 0, 45);
moveFrameXY(TextScrollFrame.ScrollBar, "BOTTOMLEFT", "BOTTOMRIGHT", 0, -47);

CineTextFrame.TextScrollChild = CreateFrame("Frame", "LoreKCineTextScrollChild", TextScrollFrame);
local TextScrollChild = CineTextFrame.TextScrollChild;
TextScrollChild:SetSize(TextScrollFrame:GetWidth()-10, 1);
TextScrollFrame:SetScrollChild(TextScrollChild);

CineTextFrame.TitleBackdrop = CreateFrame("Frame", nil, CineTextFrame);
local TitleBackdrop = CineTextFrame.TitleBackdrop;
TitleBackdrop:SetPoint("BOTTOM", TextScrollFrame, "TOP", -11.5, 3);
TitleBackdrop:SetWidth(TextScrollFrame:GetWidth()+20);
TitleBackdrop:SetHeight(48);
TitleBackdrop.tex = TitleBackdrop:CreateTexture()
TitleBackdrop.tex:SetAllPoints(true)
TitleBackdrop.tex:SetAtlas("StoryHeader-BG")

TextScrollChild.textTitle = TitleBackdrop:CreateFontString(nil, "OVERLAY");
TextScrollChild.textTitle:SetFontObject("GameFontHighlightLarge");
TextScrollChild.textTitle:SetPoint("TOPLEFT", TitleBackdrop, "TOPLEFT", 7, -8);
TextScrollChild.textTitle:SetPoint("BOTTOMRIGHT", TitleBackdrop, "BOTTOMRIGHT", -7, 5);
TextScrollChild.textTitle:SetJustifyH("CENTER");
TextScrollChild.textTitle:SetJustifyV("MIDDLE");

TextScrollChild.textHTML = CreateFrame("SimpleHTML", nil, TextScrollChild);
TextScrollChild.textHTML:SetPoint("TOP", TextScrollChild, "TOP", 0, 0);
TextScrollChild.textHTML:SetPoint("BOTTOM", TextScrollChild, "BOTTOM", 0, 0);
TextScrollChild.textHTML:SetWidth(TextScrollChild:GetWidth()-50);

TextScrollChild.textHTML:SetFont("h1", ITEM_TEXT_FONTS["default"]["H1"]:GetFont());
TextScrollChild.textHTML:SetFont("p", ITEM_TEXT_FONTS["default"]["P"]:GetFont());
TextScrollChild.textHTML:SetJustifyH("p", "LEFT");

local LK_CopyBoxMixin = {}

function LK_CopyBoxMixin:OnLoad()
	self:SetAutoFocus(false)
	self:SetFontObject("ChatFontNormal")
	self:SetTextInsets(5, 5, 0, 0)

	self.Label = self:CreateFontString(nil, "ARTWORK", "GameFontWhiteSmall")
	self.Label:SetJustifyH("LEFT")
	self.Label:SetText("")
	self.Label:SetWordWrap(false)
	self.Label:SetPoint("BOTTOMLEFT", self, "TOPLEFT", 0, 2)
	self.Label:SetPoint("BOTTOMRIGHT", self, "TOPRIGHT", 0, 2)

	self:SetScript("OnEnterPressed", self.OnEnterPressed)
	self:SetScript("OnKeyDown", self.OnKeyDown)
	self:SetScript("OnTextChanged", self.OnTextChanged)
	self:SetScript("OnEscapePressed", self.ClearFocus)
end

function LK_CopyBoxMixin:SetLabel(text)
	self.Label:SetText(text)
	self.Label:Show()
end

function LK_CopyBoxMixin:OnEnterPressed()
	self:ClearFocus()
end

function LK_CopyBoxMixin:OnKeyDown(key)
	if IsControlKeyDown() and (key == "C" or key == "X") then
		PlaySound(SOUNDKIT.TUTORIAL_POPUP)
		
		C_Timer.After(0.1, function() 
			self:ClearFocus() 
		end)
	end
end

function LK_CopyBoxMixin:OnTextChanged(userInput)
	if userInput then
		self:SetText(self.contentString or "")
		self:HighlightText()
	else
		self.contentString = self:GetText()
	end
end

local function CreateLKCopyBox(parent, width)
	local copyBox = CreateFrame("EditBox", nil, parent, "InputBoxTemplate")
	copyBox:SetSize(width or 200, 20)
	
	Mixin(copyBox, LK_CopyBoxMixin)
	copyBox:OnLoad()
	
	return copyBox
end

local LinkFrame = CreateFrame("Frame", "LoreKCinematics_LinkFrame", UIParent)
LinkFrame:SetSize(400, 120)
LinkFrame:SetPoint("CENTER")
LinkFrame:SetFrameStrata("DIALOG")
LinkFrame:Hide()

LinkFrame.Bg = LinkFrame:CreateTexture(nil, "BACKGROUND")
LinkFrame.Bg:SetAllPoints()
LinkFrame.Bg:SetColorTexture(0, 0, 0, 0.9)

LinkFrame.Border = CreateFrame("Frame", nil, LinkFrame, "DialogBorderTemplate")

LinkFrame.Title = LinkFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
LinkFrame.Title:SetPoint("TOP", 0, -15)
LinkFrame.Title:SetText(BROWSER_COPY_LINK)

LinkFrame.CopyBox = CreateLKCopyBox(LinkFrame, 350)
LinkFrame.CopyBox:SetPoint("CENTER", 0, 10)
LinkFrame.CopyBox:SetLabel(LK["CopyExternalLink"])

LinkFrame.CloseBtn = CreateFrame("Button", nil, LinkFrame, "UIPanelButtonTemplate")
LinkFrame.CloseBtn:SetSize(100, 25)
LinkFrame.CloseBtn:SetPoint("BOTTOM", 0, 15)
LinkFrame.CloseBtn:SetText(CLOSE)
LinkFrame.CloseBtn:SetScript("OnClick", function() LinkFrame:Hide() end)

local function ShowLinkWindow(link)
	LinkFrame:Show()
	LinkFrame.CopyBox:SetText(link)
	LinkFrame.CopyBox:SetFocus()
	LinkFrame.CopyBox:HighlightText()
end

CineTextFrame.PlayButton = CreateFrame("Button", nil, CineTextFrame, "SharedButtonTemplate");
local PlayButton = CineTextFrame.PlayButton;
PlayButton:SetPoint("BOTTOM", CineTextFrame, "BOTTOM", 0, 10);
PlayButton:SetSize(140, 25);
PlayButton:SetText(PLAY_MOVIE_PREPEND);
PlayButton:Disable();

CineTextFrame.Type_ID = CineTextFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
CineTextFrame.Type_ID:SetPoint("BOTTOMRIGHT", LoreKMainframe, "BOTTOMRIGHT", -15, 5)


local currentSelection = nil;

local function UpdateRightPane(data)
	if not data then return end
	currentSelection = data;

	Lorekeeper_API.SetUpCinematicsColorsAndTextures();

	TextScrollChild.textTitle:SetText(data.description or UNKNOWN);

	local desc = data.subtitles or "";
	TextScrollChild.textHTML:SetText(desc);
	
	if data.id then
		PlayButton:SetText(PLAY_MOVIE_PREPEND);
		PlayButton:Enable();
	elseif data.link then
		PlayButton:SetText(BROWSER_COPY_LINK);
		PlayButton:Enable();
	else
		PlayButton:SetText(PLAY_MOVIE_PREPEND);
		PlayButton:Disable();
	end

	if LoreK_DB.settings.debugAdvanced and data.name then
		if data.id then
			CineTextFrame.Type_ID:SetText("movieID-"..data.id.."_"..data.name)
		elseif data.link then
			CineTextFrame.Type_ID:SetText("Custom-"..data.name)
		end
	else
		CineTextFrame.Type_ID:SetText("")
	end
end

local function PlayOrLink()
	if not currentSelection then return end

	if currentSelection.id then
		MovieFrame_PlayMovie(MovieFrame, currentSelection.id);
	elseif currentSelection.link then
		ShowLinkWindow(currentSelection.link);
	else
		return;
	end
end

PlayButton:SetScript("OnClick", function()
	PlayOrLink();
end);


local function CinematicInitializer(button, data)
	local title = data.description;
	if not title then return end
	local faction = data.faction

	button.tex = button.tex or button:CreateTexture(nil, "OVERLAY", nil, 0);
	button.tex:SetPoint("TOPLEFT", button, "TOPLEFT", button:GetHeight()*2+2, 0);
	button.tex:SetPoint("BOTTOMRIGHT", button, "BOTTOMRIGHT", 0, 0);
	button.tex:SetAtlas("PetList-ButtonBackground");
	
	button.texHL = button.texHL or button:CreateTexture(nil, "OVERLAY", nil, 3);
	button.texHL:SetAllPoints(button.tex);
	button.texHL:SetAtlas("PetList-ButtonHighlight");
	button.texHL:Hide();
	
	button.texSel = button.texSel or button:CreateTexture(nil, "OVERLAY", nil, 3);
	button.texSel:SetAllPoints(button.tex);
	button.texSel:SetAtlas("PetList-ButtonSelect");

	button.factionTex = button.factionTex or button:CreateTexture(nil, "OVERLAY", nil, 2);
	button.factionTex:SetPoint("RIGHT", button, "RIGHT", -2, 0);
	button.factionTex:SetSize(button:GetHeight(), button:GetHeight());
	button.factionTex:Hide();

	if faction == "horde" then
		button.factionTex:SetAtlas("MountJournalIcons-Horde");
		button.factionTex:Show();
	elseif faction == "alliance" then
		button.factionTex:SetAtlas("MountJournalIcons-Alliance");
		button.factionTex:Show();
	end
	
	button.textFont = button.textFont or button:CreateFontString(nil, "OVERLAY");
	button.textFont:SetFontObject("GameTooltipTextSmall");
	button.textFont:SetPoint("TOPLEFT", button.tex, "TOPLEFT", 5, -3);
	button.textFont:SetPoint("BOTTOMRIGHT", button.tex, "BOTTOMRIGHT", -5, 2);
	button.textFont:SetJustifyH("LEFT");
	button.textFont:SetJustifyV("TOP");
	button.textFont:SetText(title);
	button.textFont:SetTextColor(1, 1, 1, 1);
	
	button.icon = button.icon or CreateFrame("Frame", nil, button);
	button.icon:SetPoint("TOPRIGHT", button.tex, "TOPLEFT", -1, 0);
	button.icon:SetPoint("BOTTOMRIGHT", button.tex, "BOTTOMLEFT", -1, 0);
	button.icon:SetWidth(button:GetHeight()*2);
	
	button.icon.tex = button.icon.tex or button.icon:CreateTexture(nil, "OVERLAY", nil, 0);
	
	local batchIdx = data.thumb and data.thumb.batch or 1;
	local coordIdx = data.thumb and data.thumb.coords or 1;
	local texturePath = PATH .. "Batch" .. batchIdx..".png";
	
	button.icon.tex:SetTexture(texturePath);
	
	if texCoordsLoc[coordIdx] then
		local c = texCoordsLoc[coordIdx];
		button.icon.tex:SetTexCoord(c[1], c[2], c[3], c[4]);
	else
		button.icon.tex:SetTexCoord(0, 1, 0, 1);
	end
	button.icon.tex:SetAllPoints(button.icon);

	button:SetScript("OnEnter", function() button.texHL:Show(); end);
	button:SetScript("OnLeave", function() button.texHL:Hide(); end);
	
	button:SetScript("OnClick", function(self, btn)
		LoreKGUI.CinematicsSelectionBehavior:Select(self);
		PlaySound(SOUNDKIT.UI_JOURNEYS_OPEN_LORE_BOOK, "SFX", true);
		UpdateRightPane(data);
	end);
end

LoreKGUI.CinematicsScrollBox = CreateFrame("Frame", nil, CinematicsDisplayFrame, "WowScrollBoxList");
local CineScrollBox = LoreKGUI.CinematicsScrollBox;
CineScrollBox:SetPoint("TOPLEFT", CinematicsDisplayFrame, "TOPLEFT", 2, -25);
CineScrollBox:SetPoint("BOTTOMRIGHT", CinematicsDisplayFrame, "BOTTOMRIGHT", -2, 3);

CineScrollBox.ScrollBar = CreateFrame("EventFrame", nil, CinematicsDisplayFrame, "MinimalScrollBar");
local CineScrollBar = CineScrollBox.ScrollBar;
CineScrollBar:SetPoint("TOPLEFT", CineScrollBox, "TOPRIGHT", 7, 20);
CineScrollBar:SetPoint("BOTTOMLEFT", CineScrollBox, "BOTTOMRIGHT", 7, 0);

local CineDataProvider = CreateDataProvider();
local CineScrollView = CreateScrollBoxListLinearView();

ScrollUtil.InitScrollBoxListWithScrollBar(CineScrollBox, CineScrollBar, CineScrollView);
CineScrollView:SetElementInitializer("Button", CinematicInitializer);
CineScrollView:SetElementExtent(45);
CineScrollView:SetDataProvider(CineDataProvider);

function LoreKGUI:OnCinematicsSelectionChanged(data, isSelected)
	local f = self.CinematicsScrollBox:FindFrame(data);
	if f and f.texSel then
		f.texSel:SetShown(isSelected);
	end
end

function LoreKGUI:OnCineFrameInitialized(frame, data)
	local isSelected = self.CinematicsSelectionBehavior:IsElementDataSelected(data);
	if frame and frame.texSel then
		frame.texSel:SetShown(isSelected);
	end
end

LoreKGUI.CinematicsSelectionBehavior = ScrollUtil.AddSelectionBehavior(CineScrollBox, SelectionBehaviorFlags.Intrusive);
LoreKGUI.CinematicsSelectionBehavior:RegisterCallback("OnSelectionChanged", LoreKGUI.OnCinematicsSelectionChanged, LoreKGUI);
ScrollUtil.AddInitializedFrameCallback(CineScrollBox, LoreKGUI.OnCineFrameInitialized, LoreKGUI);


LoreKGUI.CinematicsSearchBox = CreateFrame("EditBox", "LoreKCinematicsSearchBox", CinematicsDisplayFrame, "SearchBoxTemplate");
LoreKGUI.CinematicsSearchBox:SetSize(105, 20);
LoreKGUI.CinematicsSearchBox:SetPoint("TOPLEFT", CinematicsDisplayFrame, "TOPLEFT", 10, -5);
LoreKGUI.CinematicsSearchBox:SetAutoFocus(false);

local function escapePattern(text)
	return text:gsub("([%(%)%.%%%+%-%*%?%[%]%^%$])", "%%%1")
end

function LoreKGUI.OnCinematicsTextChanged(editBox)
	LoreKGUI.PopulateCinematicsList()
end

LoreKGUI.CinematicsSearchBox:HookScript("OnTextChanged", LoreKGUI.OnCinematicsTextChanged);

LoreKGUI.CinematicsFilterDropdown = CreateFrame("DropdownButton", nil, CinematicsDisplayFrame, "WowStyle1FilterDropdownTemplate");
LoreKGUI.CinematicsFilterDropdown.Text:SetText(LK["filter"] or "Filter");
LoreKGUI.CinematicsFilterDropdown:SetPoint("LEFT", LoreKGUI.CinematicsSearchBox, "RIGHT", 3, 0);
LoreKGUI.CinematicsFilterDropdown:SetSize(80, 20);

local function CinematicsFilterHandler(owner, rootDescription)
	rootDescription:CreateTitle(EXPANSION_FILTER_TEXT);

	for i = 0, MAX_EXPANSION_ID do
		
		local expName = _G["EXPANSION_NAME"..i] or (EXPANSION_FILTER_TEXT .. i)
		
		rootDescription:CreateCheckbox(expName, function()
			return CinematicsFilters[i];
		end,
		function(selected)
			CinematicsFilters[i] = not CinematicsFilters[i]
			LoreKGUI.PopulateCinematicsList();
		end);
	end
end

LoreKGUI.CinematicsFilterDropdown:SetupMenu(CinematicsFilterHandler);

function LoreKGUI.PopulateCinematicsList()
	local allData = {}
	local cineData = Lorekeeper_API.LK["LocalData"]["cinematics"]
	local savedData = LoreKCinematics_DB or {}
	
	if cineData then
		for index, data in pairs(cineData) do
			local item = CopyTable(data)
			item.sortIndex = index;
			tinsert(allData, item);
		end
	end
	
	if savedData then
		for i, data in ipairs(savedData) do
			local item = CopyTable(data)
			item.sortIndex = data.sortIndex or (10000 + i)
			tinsert(allData, item)
		end
	end
	
	local query = LoreKGUI.CinematicsSearchBox:GetText();
	query = escapePattern(query):lower();

	local proxy = {};
	for _, data in pairs(allData) do
		local matchSearch = (query == "") or (data.description and string.find(data.description:lower(), query))
		
		local matchExpansion = false
		local expansionID = data.expansion or 0
		if CinematicsFilters[expansionID] then
			matchExpansion = true
		end

		if matchSearch and matchExpansion then
			tinsert(proxy, data);
		end
	end

	--purposefully sort by the defined localdata order - not alphabetical
	table.sort(proxy, function(a, b) 
		return a.sortIndex < b.sortIndex;
	end);

	CineDataProvider = CreateDataProvider(proxy);
	CineScrollView:SetDataProvider(CineDataProvider);
end

local function CleanupSavedCinematics()
	if not LoreKCinematics_DB or not Lorekeeper_API.LK["LocalData"]["cinematics"] then return end
	
	local cineData = Lorekeeper_API.LK["LocalData"]["cinematics"]
	
	for i = #LoreKCinematics_DB, 1, -1 do
		local savedMovieID = LoreKCinematics_DB[i].id
		
		for _, officialData in pairs(cineData) do
			if officialData.id == savedMovieID then
				tremove(LoreKCinematics_DB, i)
				break
			end
		end
	end
end

local function OnEvent(self, event, arg1)
	if event == "ADDON_LOADED" and arg1 == "Lorekeeper_Cinematics" then
		if not LoreKCinematics_DB then LoreKCinematics_DB = {} end
		
		CleanupSavedCinematics()
		
		LoreKGUI.PopulateCinematicsList();
		Lorekeeper_API.SetUpCinematicsColorsAndTextures();
		
	elseif event == "PLAY_MOVIE" then
		local movieID = arg1
		local cineData = Lorekeeper_API.LK["LocalData"]["cinematics"]
		local isKnown = false

		if cineData then
			for _, data in pairs(cineData) do
				if data.id == movieID then isKnown = true break end
			end
		end

		if not isKnown then
			for _, data in pairs(LoreKCinematics_DB) do
				if data.id == movieID then isKnown = true break end
			end
		end

		if not isKnown then
			local newEntry = {
				id = movieID,
				description = "Discovered Movie (" .. movieID .. ")",
				name = "Discovered-" .. movieID,
				expansion = GetExpansionLevel(),
				thumb = { batch = 1000, coords = 1 } 
			}
			tinsert(LoreKCinematics_DB, newEntry)
			
			LoreKGUI.PopulateCinematicsList()
		end
	end
end

local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:RegisterEvent("PLAY_MOVIE")
f:SetScript("OnEvent", OnEvent)

MovieFrame:HookScript("OnHide", function(self)
	if SubtitlesFrame then
		SubtitlesFrame:Hide();
		if SubtitlesFrame.Subtitles then
			for k, v in pairs(SubtitlesFrame.Subtitles) do
				SubtitlesFrame.Subtitles[k]:SetText("")
			end
		end
	end
end)