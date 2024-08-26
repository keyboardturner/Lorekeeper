-- The purpose of this addon is so that the savedvariables of gathered mail items from the Lorekeeper addon are kept separate, and therefore private.
-- A user who wishes to upload their Lorekeeper data won't need to remove their mails from the upload.

--[[
LoreKMail_DB["mail"] = {
	[senderName] = {
		"text 1",
		"text 2",
		"text 3",
	}
};
]]


if not C_AddOns.IsAddOnLoaded("Lorekeeper") then
	return;
end

local function IsNameWithoutRealm(nameRealm)
	if string.find(nameRealm, "-") then
		return false -- The string contains a realm
	else
		return true -- The string is only a name
	end
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

function Lorekeeper_API.MailDetected(activeContext)
	if not activeContext then
		return;
	end
	local creator = activeContext.creator;
	local realmCurrent = GetNormalizedRealmName();
	local playerGUID = activeContext.playerGUID;
	local NameFromGUID
	local RealmFromGUID
	if playerGUID then
		NameFromGUID = select(6,GetPlayerInfoByGUID(playerGUID));
		RealmFromGUID = select(7,GetPlayerInfoByGUID(playerGUID));
	end

	if RealmFromGUID == "" or RealmFromGUID == nil or not RealmFromGUID then -- Realm GUID is gone, do not use.
		if IsNameWithoutRealm(creator) then
			creator = creator.."-"..realmCurrent;
		end
	else
		if IsNameWithoutRealm(creator) then
			creator = creator.."-"..RealmFromGUID; -- this *might* handle connected realms?
		end
	end
	local text = activeContext.text[1];
	local isDuplicateFound;
	if not LoreKMail_DB then
		LoreKMail_DB = {
			["mail"] = {};
			["custom"] = {};
		};
	end

	if LoreKMail_DB["mail"][creator] and LoreKMail_DB["mail"][creator]["text"] then
		for k, v in ipairs(LoreKMail_DB["mail"][creator]["text"]) do
			if v == text then
				isDuplicateFound = true;
				if LoreK_DB["settings"]["debugAdvanced"] then
					Print("Duplicate mail found, no action taken.");
				end
				return;
			end
		end
		if not isDuplicateFound then
			table.insert(LoreKMail_DB["mail"][creator]["text"], text);
			if LoreK_DB["settings"]["debugAdvanced"] then
				Print("No duplicate found, adding entry under creator name: " .. creator);
			end
		end
	else
		LoreKMail_DB["mail"][creator] = {
			["nameRealm"] = creator,
			["text"] = {text},
		};
		if LoreK_DB["settings"]["debugAdvanced"] then
			Print("Mail found! Saving entry under creator name: " .. creator);
		end
	end
end

--[[ -- the mailbox seemingly explodes pretty bad from this, likely something to do with throttling after querying 30+ mail
local function ProcessMailbox()
	local numItems, totalItems = GetInboxNumItems()
	for i = 1, numItems do
		if CanComplainInboxItem(i) then
			local sender = select(3,GetInboxHeaderInfo(i))
			local body = GetInboxText(i)
			local activeContext = {};
			activeContext.creator = sender;
			activeContext.text = {
				[1] = body;
			};
			Lorekeeper_API.MailDetected(activeContext, true);
		end
	end
end

local HandleMailbox = CreateFrame("Frame")
HandleMailbox:RegisterEvent("MAIL_INBOX_UPDATE")

MailFrame:SetScript("OnEvent", function(self, event, ...)
	if event == "MAIL_INBOX_UPDATE" then
		ProcessMailbox()
	end
end)

]]

--------------------------------------------------------------------------
--------------------------------------------------------------------------
 -- Mail Panel
--------------------------------------------------------------------------
--------------------------------------------------------------------------
