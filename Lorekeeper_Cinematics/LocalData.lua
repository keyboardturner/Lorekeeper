local _, LK = ...


local LK = Lorekeeper_API.LK


local PLACEHOLDER_VALUE

local LOCALE = GetLocale()



local PATH = "Interface\\AddOns\\Lorekeeper_Cinematics\\Assets\\Textures\\" -- batch



LK["LocalData"] = {
	["cinematics"] = {
		[1] = {
			["name"] = "wow_intro",
			["id"] = 2,
			--["YouTube"] = "",
			["description"] = "Seasons of War Cinematic Trailer",
			["expansion"] = 0,
			["patch"] = "1.0.0",
			["thumb"] = {
				["batch"] = 1,
				["coords"] = 2,
			},
		},
		--[2] = {
		--	["name"] = "logo",
		--	["id"] = 1,
		--	--["YouTube"] = "",
		--	["description"] = "Ten Years of Warcraft Intro",
		--	["expansion"] = 0,
		--	["patch"] = "1.0.0",
		--	["thumb"] = {
		--		["batch"] = 1,
		--		["coords"] = 1,
		--	},
		--},
		[3] = {
			["name"] = "wow_intro_bc",
			["id"] = 27,
			--["YouTube"] = "",
			["description"] = "The Burning Crusade Cinematic Trailer",
			["expansion"] = 1,
			["patch"] = "2.0.0",
			["thumb"] = {
				["batch"] = 1,
				["coords"] = 9,
			},
		},
		[4] = {
			["name"] = "wow_intro_lk",
			["id"] = 18,
			--["YouTube"] = "",
			["description"] = "Wrath of the Lich King Cinematic Trailer",
			["expansion"] = 2,
			["patch"] = "3.0.0",
			["thumb"] = {
				["batch"] = 1,
				["coords"] = 5,
			},
		},
		[5] = {
			["name"] = "wow_wrathgate",
			["id"] = 14,
			--["YouTube"] = "",
			["description"] = "The Wrathgate",
			["expansion"] = 2,
			["patch"] = "3.0.2",
			["thumb"] = {
				["batch"] = 1,
				["coords"] = 3,
			},
		},
		[6] = {
			["name"] = "wow_fotlk",
			["id"] = 16,
			--["YouTube"] = "",
			["description"] = "Fall of the Lich King",
			["expansion"] = 2,
			["patch"] = "3.3.5",
			["thumb"] = {
				["batch"] = 1,
				["coords"] = 4,
			},
		},
		[7] = {
			["name"] = "wow3x_intro",
			["id"] = 23,
			--["YouTube"] = "",
			["description"] = "Cataclysm Cinematic Trailer",
			["expansion"] = 3,
			["patch"] = "4.0.3a",
			["thumb"] = {
				["batch"] = 1,
				["coords"] = 8,
			},
		},
		[8] = {
			["name"] = "worgen",
			["id"] = 21,
			--["YouTube"] = "",
			["description"] = "Worgen Cinematic Intro",
			["expansion"] = 3,
			["patch"] = "4.0.3a",
			["thumb"] = {
				["batch"] = 1,
				["coords"] = 6,
			},
		},
		[9] = {
			["name"] = "goblin",
			["id"] = 22,
			--["YouTube"] = "",
			["description"] = "Goblin Cinematic Intro",
			["expansion"] = 3,
			["patch"] = "4.0.3a",
			["thumb"] = {
				["batch"] = 1,
				["coords"] = 7,
			},
		},
		[10] = {
			["name"] = "dsi_act1",
			["id"] = 73,
			--["YouTube"] = "",
			["description"] = "Dragon Soul Act 1",
			["expansion"] = 3,
			["patch"] = "4.3.0",
			["thumb"] = {
				["batch"] = 1,
				["coords"] = 10,
			},
		},
		[11] = {
			["name"] = "dsi_act2",
			["id"] = 74,
			--["YouTube"] = "",
			["description"] = "Dragon Soul Act 2",
			["expansion"] = 3,
			["patch"] = "4.3.0",
			["thumb"] = {
				["batch"] = 1,
				["coords"] = 11,
			},
		},
		[12] = {
			["name"] = "dsi_act3",
			["id"] = 75,
			--["YouTube"] = "",
			["description"] = "Dragon Soul Act 3",
			["expansion"] = 3,
			["patch"] = "4.3.0",
			["thumb"] = {
				["batch"] = 1,
				["coords"] = 12,
			},
		},
		[13] = {
			["name"] = "dsi_act4",
			["id"] = 76,
			--["YouTube"] = "",
			["description"] = "Dragon Soul Act 4",
			["expansion"] = 3,
			["patch"] = "4.3.0",
			["thumb"] = {
				["batch"] = 1,
				["coords"] = 13,
			},
		},

	},
};

if LOCALE == "enUS" then

local Subtitles = {
	["wow_intro"] = [[
00:00:04:06 - 00:00:13:01
Four years have passed since the mortal races banded together and stood united against the might of the Burning Legion.

00:00:14:00 - 00:00:22:05
Though Azeroth was saved, the tenuous pact between the Horde and the Alliance has all but evaporated.

00:00:24:06 - 00:00:28:21
The drums of war thunder once again.
]],

	["wow_wrathgate"] = [[
00:00:14:12 - 00:00:17:08
Highlord Bolvar! Thank the Light!

00:00:17:09 - 00:00:18:07
For Lordaeron!

00:00:18:08 - 00:00:19:11
For the Alliance!

00:00:29:05 - 00:00:30:21
Back, you mindless wretches!

00:00:38:12 - 00:00:40:06
Fight on, brothers!

00:00:49:00 - 00:00:50:16
Rise up, sons of the Horde!

00:00:50:18 - 00:00:53:04
Blood and glory await us!

00:00:59:00 - 00:01:02:07
Lok'tar ogar! For the Horde!

00:01:02:08 - 00:01:03:12
FOR THE HORDE!

00:01:03:15 - 00:01:06:04
I was wondering if you'd show up!

00:01:06:05 - 00:01:09:15
I couldn't let the Alliance have ALL the fun today!

00:01:20:20 - 00:01:24:12
Arthas! The blood of your father,

00:01:24:13 - 00:01:26:10
of your people,

00:01:26:11 - 00:01:28:22
demands justice!

00:01:28:23 - 00:01:31:15
Come forth, coward,

00:01:31:16 - 00:01:34:21
and answer for your crimes!

00:01:48:12 - 00:01:50:04
You speak of justice?

00:01:51:00 - 00:01:52:03
Of cowardice?

00:01:53:00 - 00:01:56:09
I will show you the justice of the grave

00:01:56:10 - 00:02:01:09
and the true meaning of fear.

00:02:01:10 - 00:02:05:05
Enough talk! Let it be finished!

00:02:18:00 - 00:02:23:05
You will pay for all the lives you've stolen, traitor.

00:02:23:06 - 00:02:27:15,
Boldly stated, but there is nothing you can--

00:02:30:00 - 00:02:31:10
What?

00:02:33:20 - 00:02:37:22
Did you think we had forgotten?

00:02:38:13 - 00:02:42:05
Did you think we had forgiven?

00:02:43:00 - 00:02:48:14
Behold, now, the terrible vengeance of the Forsaken!

00:02:48:15 - 00:02:49:14
Sylvanas...

00:02:52:00 - 00:02:56:09
Death to the Scourge! And death to the living!

00:02:59:00 - 00:03:00:19
Fall back!

00:03:16:00 - 00:03:20:11
This isn't over.

00:03:25:12 - 00:03:29:12
Now, all can see

00:03:29:13 - 00:03:34:04
this is the hour of the Forsaken.

00:03:38:00 - 00:03:39:03
We're finished.

00:03:40:00 - 00:03:41:02
No escape...

00:03:42:00 - 00:03:43:02
for any of us.
]],

	["wow_intro_lk"] = [[
00:00:14:00 - 00:00:16:00
My son,

00:00:17:00 - 00:00:22:50
the day you were born, the very forests of Lordaeron whispered the name

00:00:26:00 - 00:00:27:50
Arthas.

00:01:12:00 - 00:01:14:00
My child,

00:01:15:00 - 00:01:19:50
I watched with pride as you grew into a weapon

00:01:21:00 - 00:01:23:00
of righteousness.

00:01:30:00 - 00:01:37:50
Remember, our line has always ruled with wisdom and strength.

00:01:39:50 - 00:01:46:00
And I know you will show restraint when exercising your great power.

00:02:38:00 - 00:02:39:50
But the truest victory, my son,

00:02:40:50 - 00:02:44:25
is stirring the hearts of your people.

00:02:52:00 - 00:02:53:50
I tell you this,

00:02:54:50 - 00:02:58:50
for when my days have come to an end,

00:03:00:00 - 00:03:02:50
you shall be king.
]],

	["goblin"] = [[
00:00:05:01 - 00:00:10:19
Get down in the hull you worthless SLAAAAAAAAVES!

00:00:20:09 - 00:00:25:12
This is all your fault!  We were supposed to have these stupid slaves to Kalimdor days ago!

00:00:25:13 - 00:00:28:02
I'm not taking the fall for this one, you're the one who got us lost!

00:00:28:02 - 00:00:31:07
What does it matter?  Gallywix is gonna have both our heads!

00:00:31:08 - 00:00:33:11
Shh … did you hear that?

00:00:38:18 - 00:00:41:11
Ahhhhhhhhh!

00:00:43:13 - 00:00:46:01
Captain, Who are they?

00:00:46:02 - 00:00:51:18
It doesn't matter.  Our orders are to capture the horde target at all costs.

00:00:52:18 - 00:00:53:21
No witnesses.

00:01:04:23 - 00:01:10:12
AHHHHHHH!!! Abandon ship!  Make for the escape pods!

00:01:10:13 - 00:01:15:09
Let us out!  Don't leave us down here! … please … 

00:01:23:03 - 00:01:26:19
Don't leave us! C-c-come back!  NoOOOoOOoo!

]],

	["wow3x_intro"] = [[
00:00:09:13 - 00:00:12:14
Pain. . .

00:00:13:08 - 00:00:15:17
Agony. . .

00:00:17:00 - 00:00:23:00
My hatred burns through the cavernous deeps.

00:01:04:26 - 00:01:09:00
The world heaves with my torment.

00:01:10:24 - 00:01:16:14
Its wretched kingdoms quake beneath my rage. . .

00:01:41:13 - 00:01:47:22
But at last. . .  The whole of Azeroth will break. . .

00:01:51:12 - 00:01:58:10
. . .  And all will burn beneath the shadow of my wings. . .

]],

	["wow_intro_bc"] = [[
00:00:14:50 - 00:00:21:00
Imprisoned for 10,000 years.

00:00:25:50 - 00:00:29:50
Banished from my own homeland.

00:00:38:00 - 00:00:44:00
And now you dare enter MY realm.

00:00:48:00 - 00:00:50:00
You are not prepared.

00:02:30:00 - 00:02:33:00
YOU ARE NOT PREPARED!

]],

	["wow_fotlk"] = [[
00:00:23.19 - 00:00:24.39 
Father?

00:00:24.49 - 00:00:26.95 
Is it... over?

00:00:27.48 - 00:00:29.97 
At long last.

00:00:30.42 - 00:00:35.48 
No king rules forever, my son.
 
00:00:35.71 - 00:00:43.65 
I see... only darkness... before me...
 
00:01:00.42 - 00:01:01.84 
Without its master's command,

00:01:01.98 - 00:01:05.89 
the restless Scourge will become an even greater threat to this world.
 
00:01:09.18 - 00:01:12.18 
Control must be maintained...

00:01:12.64 - 00:01:15.61 
There must always be...

00:01:15.65 - 00:01:19.32 
a Lich King...

00:01:43.61 - 00:01:47.52 
The weight of such a burden...

00:01:47.56 - 00:01:49.38 
... It must be mine,

00:01:50.11 - 00:01:50.65 
for there is no other to--

00:01:50.85 - 00:01:51.84 
Tirion...

00:01:52.93 - 00:01:55.85 
You hold a grim destiny in your hands, brother
 
00:01:56.39 - 00:02:00.45 
... but it is not your own.

00:02:01.10 - 00:02:01.75 
Bolvar...

00:02:02.16 - 00:02:04.40 
By all that's holy...

00:02:05.40 - 00:02:11.21 
The dragons' flame... sealed my fate...

00:02:12.08 - 00:02:16.11 
The world of the living can no longer comfort me.

00:02:21.08 - 00:02:23.29 
Place the crown upon my head, Tirion.

00:02:23.79 - 00:02:28.40 
Forevermore - I will be the jailor of the damned.

00:02:28.44 - 00:02:30.64 
NO, old friend... I cannot...

00:02:30.68 - 00:02:32.34 
DO IT, TIRION!

00:02:32.59 - 00:02:37.42 
You and these brave heroes have your own destinies to fulfill.

00:02:38.38 - 00:02:42.75 
This last act of service... is mine.

00:02:51.72 - 00:02:54.49 
You will not be forgotten... brother.

00:02:57.02 - 00:02:59.26 
I MUST be forgotten, Tirion!

00:02:59.30 - 00:03:05.51 
If the world is to live free from the tyranny of fear - they must never know what was done here today.

00:03:24.79 - 00:03:27.97 
Tell them only that the Lich King is dead...

00:03:28.31 - 00:03:32.92 
and that Bolvar Fordragon died with him...

00:03:38.20 - 00:03:39.21 
NOW GO.

00:03:40.29 - 00:03:45.45 
LEAVE THIS PLACE - AND NEVER RETURN.
]],

	["worgen"] = [[
00:00:32:18 - 00:00:35:02
Look at what you've become.

00:00:36:06 - 00:00:39:05
Those cursed beasts …

00:00:39:06 - 00:00:44:17
… they've left you nothing more than just another wretched mongrel.

00:00:48:17 - 00:00:52:03
Do you even remember what you did to your friends?

00:00:54:16 - 00:00:59:02
Your kind … haunting the wilds unchecked …

00:01:00:01 - 00:01:02:22
… until we found you.

00:01:06:06 - 00:01:12:13
They've kept you alive, because they still believe you can be saved.

00:01:13:11 - 00:01:16:03
To which … I must ask

00:01:16:18 - 00:01:22:10
Is there even a shred … of humanity left within you?

00:01:27:00 - 00:01:28:09
Perhaps.

00:01:29:14 - 00:01:33:22
We will find out … soon enough.


]],

	["dsi_act4"] = [[
00:00:11:26 - 00:00:15:05
I can feel the elements awakening;

00:00:16:08 - 00:00:17:15
rejoicing...

00:00:18:16 - 00:00:22:10
the Cataclysm is over.

00:00:23:07 - 00:00:30:08
The champions who fought at our side assured the survival of our world...

00:00:30:15 - 00:00:35:19
but now we must see it, with mortal eyes

00:00:37:01 - 00:00:42:04
We dragon aspects have fulfilled our great purpose

00:00:42:26 - 00:00:44:23
and our ancient power...

00:00:45:14 - 00:00:46:25
is expended.

00:00:47:16 - 00:00:53:18
But though our day draws to an end, life endures...

00:00:54:14 - 00:00:58:16
and new generations will be born. 

00:00:59:14 - 00:01:04:26
Today's victory belongs to all who stood against the shadow.

00:01:05:26 - 00:01:09:12
You are Azeroth's true Guardians...

00:01:10:02 - 00:01:14:14
And the future of this world is in your hands...

00:01:16:02 - 00:01:21:01
For the dawning of the age of mortals has begun. 

]]

}

local Descriptions = {
	["wow_intro"]    = "Seasons of War Cinematic Trailer",
	["logo"]         = "Ten Years of Warcraft Intro",
	["wow_intro_bc"] = "The Burning Crusade Cinematic Trailer",
	["wow_intro_lk"] = "Wrath of the Lich King Cinematic Trailer",
	["wow_wrathgate"]= "The Wrathgate",
}

for index, data in pairs(LK["LocalData"]["cinematics"]) do
	local key = data.name
	
	if Descriptions[key] then
		data.description = Descriptions[key]
	end

	if Subtitles[key] then
		data.subtitles = Subtitles[key]
	end
end

end