-- The purpose of this addon is so that the savedvariables of custom player-made items from the Lorekeeper addon are kept separate, and therefore private.
-- A user who wishes to upload their Lorekeeper data won't need to remove their custom items from the upload.

local function Print(...)
	local prefix = string.format("|cFFFFF569".."[PH] Lorekeeper" .. "|r:");
	DEFAULT_CHAT_FRAME:AddMessage(string.join(" ", prefix, ...));
end

function LoreKeeper_API_Custom()
	Print("Custom Item found! This function is not yet set up, so it will not be saving this item.")
end