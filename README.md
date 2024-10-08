# Lorekeeper

This addon collects ingame text from book items and objects, and allows them to be read anywhere. To open the frame, a button on the Minimap and AddOn Compartment Frame are both provided, as well, as the slash command `/lorekeeper` or `/lorek`.

Items are collected upon closing a text item or text object. Items can't be retroactively collected from past books (otherwise it would be very easy to make this addon and data contributions wouldn't be necessary). *Usually* a copy of an item is stored in the collected data if the text content has changed due to a quest progression (ie artifact books). If the player-saved data is different from locally stored data, it will instead usually display the player-saved data. [Some game objects](https://www.wowhead.com/object=169294/tablet-of-the-seven) are not real text items but in fact are NPCs in disguise using gossip text (which this addon does not collect). Mail items (when available) are collected and stored in the mail module upon closing the "Plain Letter" item itself, rather than necessarily scanning the mail. Plain Letters with no sender name (ie letters transferred cross-server or from NPCs) can't be stored as the GUID data is unavailable for some reason.

Eventually the plan is to implement a collection-based system and track progress on various achievements, not too unlike mount, pet, or transmog collection, but with a focus on ingame lore items. It will be a continuous work-in-progress, as collecting a baseline of known texts will take some time.

### Lorekeeper now also supports Text to Speech

For additional voice chat options you can visit the [Blizzard Support Page](https://support.blizzard.com/article/000288679). More "Natural Voice" options can additionally be found and set up with [NaturalVoiceSAPIAdapter](https://github.com/gexgd0419/NaturalVoiceSAPIAdapter).

To help contribute your own data, you can submit your data on the [github issue template](https://github.com/keyboardturner/Lorekeeper/issues/new/choose) or place it in the `#addon-dev` channel in [my discord](https://discord.gg/vUMTdzPxqg). You'll need to find a file located here: `_retail_\WTF\Account\<YourAccountName or ID>\SavedVariables\Lorekeeper.lua` If you would like to be credited for your submission, please provide a username or some sort of online handle by which you want to be addressed as (this is public info in an addon). Do not include Lorekeeper_Mail.lua as it is *not* a necessary upload and contains your personal mail items and custom items. It will not be contributed to the addon.

Happy hunting!
