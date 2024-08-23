local _, LK = ...; -- Let's use the private table passed to every .lua

--Purposeful global variable so plugins and other addons can access
Lorekeeper_API = {}
Lorekeeper_API.LK = LK

local function defaultFunc(L, key)
 -- If this function was called, we have no localization for this key.
 -- We could complain loudly to allow localizers to see the error of their ways, 
 -- but, for now, just return the key as its own localization. This allows you to—avoid writing the default localization out explicitly.
 return key;
end
setmetatable(LK, {__index=defaultFunc});

local LOCALE = GetLocale()

if LOCALE == "enUS" then
	-- The EU English game client also
	-- uses the US English locale code.
	LK["Lorekeeper"] = "Lorekeeper"
	LK["LoreKIntro"] = "Type /lorekeeper to open the journal."
	LK["SlashLoreK1"] = "lorekeeper"
	LK["SlashLoreK2"] = "lorek"
	LK["ReplaceMats"] = "Replace Materials"
	LK["ReplaceMatsTT"] = "The background material will be replaced, providing different background options than the default parchment."
	LK["FogOfLore"] = "Fog of Lore"
	LK["FogOfLoreTT"] = "Reveal document text only after having read the item."
	LK["SlashRead"] = "Play '/Read' Emote"
	LK["SlashReadTT"] = "Upon opening Lorekeeper, have your character play the /read emote."
	LK["Debug"] = "Debug Mode"
	LK["DebugTT"] = "Include extra debug information (this may be spammy)."
	LK["Library"] = "Library"
	LK["Mail"] = MAIL_LABEL
	LK["Settings"] = SETTINGS
	LK["DeleteAll"] = "Delete All Copies"
	LK["DeleteAllConfirm"] = "Are you sure you want to delete all saved versions for this entry? This cannot be undone."
	LK["NotYetAvailable"] = FEATURE_NOT_YET_AVAILABLE
	LK["AddonDisabled"] = "Plugin AddOn is disabled."
	LK["ColorPicker"] = COLOR_PICKER
	LK["SampleText"] = [[
<html>
<body>
<br />
<h1 align="center">Header 1</h1>
<p>This is a paragraph under header 1.</p>
<h2 align="right">Header 2</h2>
<p>This is a paragraph under header 2.</p>
<h3>Header 3</h3>
<p>This is a paragraph under header 3.</p>
<p align="center">This paragraph is centered under header 3.</p>
</body>
</html>
]]
	LK["SampleTitle"] = "Placeholder Title"
	LK["TextMaterial"] = "Material"
	LK["Title"] = "Title"
	LK["TitleText"] = "Title Text"
	LK["Header1"] = "Header 1"
	LK["Header2"] = "Header 2"
	LK["Header3"] = "Header 3"
	LK["Paragraph"] = "Paragraph"
	LK["Textures"] = TEXTURES_SUBHEADER
	LK["FontSize"] = FONT_SIZE
	LK["Quests"] = QUESTS_LABEL
	LK["Campaign"] = QUEST_CLASSIFICATION_CAMPAIGN
	LK["Professions"] = TRADE_SKILLS
	LK["Misc"] = MISCELLANEOUS

return end

if LOCALE == "esES" or LOCALE == "esMX" then
	-- Spanish translations go here

return end

if LOCALE == "deDE" then
	-- German translations go here

return end

if LOCALE == "frFR" then
	-- French translations go here

return end

if LOCALE == "itIT" then
	-- French translations go here

return end

if LOCALE == "ptBR" then
	-- Brazilian Portuguese translations go here

-- Note that the EU Portuguese WoW client also
-- uses the Brazilian Portuguese locale code.
return end

if LOCALE == "ruRU" then
	-- Russian translations go here

return end

if LOCALE == "koKR" then
	-- Korean translations go here

return end

if LOCALE == "zhCN" then
	-- Simplified Chinese translations go here

return end

if LOCALE == "zhTW" then
	-- Traditional Chinese translations go here

return end
