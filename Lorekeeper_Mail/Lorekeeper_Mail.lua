-- The purpose of this addon is so that the savedvariables of gathered mail items from the Lorekeeper addon are kept separate, and therefore private.
-- A user who wishes to upload their Lorekeeper data won't need to remove their mails from the upload.

local function Print(...)
	local prefix = string.format("|cFFFFF569".."[PH] Lorekeeper" .. "|r:");
	DEFAULT_CHAT_FRAME:AddMessage(string.join(" ", prefix, ...));
end

function LoreKeeper_API_Mail()
	Print("Mail found! This function is not yet set up, so it will not be saving this item.")
end