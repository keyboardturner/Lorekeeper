local _, LK = ...

-- This is typicaly where exported SVs data will go, purged of extranneous other data
-- Adding options to switch locale would honestly just be more hassle than it's worth for this project.

local LK = Lorekeeper_API.LK

local PLACEHOLDER_VALUE

local LOCALE = GetLocale()


if LOCALE == "enUS" then

LK["LocalData"]["questItems"] = {
	
};

end

if LOCALE == "esMX" then
	-- Spanish (Mexico) text data goes here

LK["LocalData"]["questItems"] = {

};


return end

if LOCALE == "esES" then
	-- Spanish (Spain) text data goes here

LK["LocalData"]["questItems"] = {

};


return end

if LOCALE == "deDE" then
	-- German text data go here

LK["LocalData"]["questItems"] = {

};

return end

if LOCALE == "frFR" then
	-- French text data go here

LK["LocalData"]["questItems"] = {

};

return end

if LOCALE == "itIT" then
	-- French text data go here

LK["LocalData"]["questItems"] = {

};

return end

if LOCALE == "ptBR" then
	-- Brazilian Portuguese text data go here

LK["LocalData"]["questItems"] = {

};

-- Note that the EU Portuguese WoW client also
-- uses the Brazilian Portuguese locale code.
return end

if LOCALE == "ruRU" then
	-- Russian text data go here

LK["LocalData"]["questItems"] = {

};

return end

if LOCALE == "koKR" then
	-- Korean text data go here

LK["LocalData"]["questItems"] = {

};

return end

if LOCALE == "zhCN" then
	-- Simplified Chinese text data go here

LK["LocalData"]["questItems"] = {

};

return end

if LOCALE == "zhTW" then
	-- Traditional Chinese text data go here

LK["LocalData"]["questItems"] = {

};

return end

