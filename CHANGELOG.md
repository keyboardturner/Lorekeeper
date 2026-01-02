# 0.3.7

Fixed cinematic expansion flag for "Bottoms Up"

# 0.3.6

 - Localdata Update 12 - Added 49 personal Library entries.
 - Added Cinematics & Items tabs
   - Cinematics will display all cinematics in the game in chronological order, as well as links to out-of-game cinematics on official youtube pages. Cinematics are assigned by expansion and faction.
   - Quest & certain flavor items are automatically collected and stored. Items filters include Quest, Crafting Reagent, Quality, and Expansion. Quest item data collection is no longer handled by the core addon and instead by the new Lorekeeper_Items plugin.
 - Filters in main Library tab have been improved to include specific class filters, expansion, and Map Location.
 - Added integration with LoreItemTooltips addon
   - Entries provided by LoreItemTooltips will display their text in the text panel of the Items tab.
   - While enabled, entries without flavor text provided by the game or by the addon will allow an editbox input to allow custom entries for LoreItemTooltips. This should make it easier to add items in long term (and no longer rely on a google form).
 - A new "Variants" dropdown has been added to include the the Base and Variant versions of an entry.


# 0.3.5

11.2.7 toc update

# 0.3.4

More nil check and fixes to mail for real this time

# 0.3.3

Added nil check for mail to prevent throwing errors if no player mail has been saved previously

# 0.3.2

Rearranged some code for the addon to work in 11.2.5

11.2.5 toc update

# 0.3.1

Localdata Update 11 - (43 personal entries + 10 Anonymous User 16 entries + 1 Anonymous User 17 entry + 5 Anonymous User 18 entries + 51 Anonymous User 19 entries (German) )

# 0.3.0

11.2.0 toc update

# 0.2.9

11.1.7 toc update

# 0.2.8

11.1.5 toc update & addon category

# 0.2.7

Localdata Update 10 - (17 personal entries + 9 Anonymous User 14 entries, 1 edit + 18 Anonymous User 15 entries, 21 edits)

# 0.2.6

11.1.0 toc update

# 0.2.5

Added option to toggle minimap button

Nil check GUID before saving + check map IDs before setting map pins

Added numbered map pins for variant locations

Unused Code Cleanup

# 0.2.4

LocalData Update 9 - (29 personal entries + 2 Anonymous User 11 entries + 31 Anonymous User 12 entries + 28 Anonymous User 13 entries)

Fix to player map not being found & nil check if guid/title can't be found.

# 0.2.3

quick fix to winter veil enable ooprs

# 0.2.2

11.0.7 toc update

Items from PTR added (13 Anonymous User 10 entries)

# 0.2.1

LocalData Update 8 - (18 personal entries + 9 Anonymous User 8 entries + 17 Anonymous User 9 entries + 13 Anonymous User 10 entries)

Added Winter Veil holiday assets

Contributors can now be found when mousing over the Lorekeeper icon button.

Fixed 1 entry

# 0.2.0

LocalData Update 7 - (48 personal entries + 45 spookibaby entries) - reminder for self later, add credits option soon

Added data cleanup functionality upon login (not just when reading a specific item from journal)

Positional map data is nil checked because some zones (airlocks) really like to mess with coords when saving data

# 0.1.9

Weekly LocalData Update 6 - 22/10/24 (39 personal entries + 32 Anonymous User 6 entries + 35 Anonymous User 7 entries)

11.0.5 toc update

Added button to convert a Lorekeeper entry into a TRP3: Extended Item.

# 0.1.8

Quick fix to a localdata entry

# 0.1.7

Weekly LocalData Update 5 - 08/10/24 (54 personal entries + 11 Anonymous User 3 entries + 9 Anonymous User 4 entries + 41 Anonymous User 5 entries)

Plain Letter items which are read and have no creator are now kept under "Miscellaneous". It is literally impossible to get the sender name on these items if they're cross realm or from NPCs, but I guess it's better than nothing.

Added button to allow copying book text data

# 0.1.6

Correctly display the uncollected counter (for real this time).

Added a one-time-per-session reminder upon hovering over the tooltip to contribute undiscovered texts if the user has some.

Added "New" counter, for entries that are not in local data but have been collected by the player.

# 0.1.5

Spooky Holiday :)

Custom Text to Speech Phonetics Helper (WIP)

# 0.1.4

Weekly LocalData Update 4 - 01/10/24 (208 personal entries)

Mail has been delivered to the mail tab, which is now also active and clickable if you have the mail plugin enabled. Multiple mails sent by the same sender will organize as if they were pages in a book. Mail can only (currently) be collected by actually making a copy of a letter from the mailbox and reading the plain letter item.

A Text to Speech button has been added to the Library, with a Left Click functionality to play the displayed page text and a Right Click functionality to display and configure the settings

Added text count label above list

Added ability to force learn / unlearn items when debug mode is enabled in the right click menu on the library

Added an option to map pin track certain game objects with map data available to them in the right click menu in the list

# 0.1.3

Weekly LocalData Update 4 - 24/09/24 (255 personal entries + 64 Anonymous User 1 submitted entries + 33 Anonymous User 2 submitted entries)

Removed PLAYER_CLASS variable auto-replacing the player class in objects

# 0.1.2

Lag upon reading / closing books has been eliminated

Added option to disable sound upon learning an entry

Fixed "Obtainable" state of many recent classic items

# 0.1.1

Weekly LocalData Update 3 - 17/09/24 (110 new entries)

Implemented Duplicate MapData Cleaning (Currently only works upon selecting a journal entry, may add button to iterate over entire library in the future)

Adjustment to name / class detection in text

Treat "Valentine's Day Card" item as a mail item (22059)

# 0.1.0

Weekly LocalData Update 2 - 10/09/24 (17 new entries)

# 0.0.9

Avoid map-related taint issue with frame fader (where it said something about "protected function SetPassThroughButtons" etc.)

# 0.0.8

Fixed error that happens when looting anima powers, because apparently I guess we're looting spells now

adjustment to "Class Restricted" filter

Weekly LocalData Update 1 - 03/09/24

# 0.0.7

Quick fix to "Unobtainable" filter

# 0.0.6

Selection Texture (will tend to disappear when learning new items / choosing filters), Filter Dropdown functionality, Sort unreads to bottom, fix up french having extra data, adjust frame level feature to be "always on top" when clicked, manually hide entries right click menu option

# 0.0.5

TOC lib load order fix

# 0.0.4

yeet bad mails with no crafter name

# 0.0.3

Remove Name/Class from text, remove "debug" being on by default for some reason

# 0.0.2

Migrate from parseFunc to allData, prefer SVs over Local Data.

Packager testing.

# 0.0.1

Release version