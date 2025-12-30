local _, LK = ...


local LK = Lorekeeper_API.LK


local PLACEHOLDER_VALUE

local LOCALE = GetLocale()



local PATH = "Interface\\AddOns\\Lorekeeper_Cinematics\\Assets\\Textures\\" -- batch


LK["LocalData"]["cinematics"] = {
	[10] = {
		["name"] = "wow_intro",
		["id"] = 2,
		--["link"] = "",
		["description"] = "Seasons of War Cinematic Trailer",
		["expansion"] = 0,
		["patch"] = "1.0.0",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 2,
		},
	},
	--[[

	[20] = {
		["name"] = "logo",
		["id"] = 1,
		--["link"] = "",
		["description"] = "Ten Years of Warcraft Intro",
		["expansion"] = 0,
		["patch"] = "1.0.0",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 1,
		},
	},

	--]]
	[30] = {
		["name"] = "wow_intro_bc",
		["id"] = 27,
		--["link"] = "",
		["description"] = "The Burning Crusade Cinematic Trailer",
		["expansion"] = 1,
		["patch"] = "2.0.0",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 9,
		},
	},
	[31] = {
		["name"] = "wow_lis_tbl",
		["id"] = nil,
		["link"] = "https://youtu.be/k04sPfHcFDw",
		["description"] = "Lore in Short: The Burning Legion",
		["expansion"] = 1,
		["patch"] = "2.5.4",
		["thumb"] = {
			["batch"] = 100,
			["coords"] = 1,
		},
	},
	[32] = {
		["name"] = "wow_lis_tdp",
		["id"] = nil,
		["link"] = "https://youtu.be/qOLv0dsseQ8",
		["description"] = "Lore in Short: The Dark Portal",
		["expansion"] = 1,
		["patch"] = "2.5.4",
		["thumb"] = {
			["batch"] = 100,
			["coords"] = 2,
		},
	},
	[40] = {
		["name"] = "wow_intro_lk",
		["id"] = 18,
		--["link"] = "",
		["description"] = "Wrath of the Lich King Cinematic Trailer",
		["expansion"] = 2,
		["patch"] = "3.0.0",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 5,
		},
	},
	[41] = {
		["name"] = "wow_lis_art",
		["id"] = nil,
		["link"] = "https://youtu.be/WhREhLx4czo",
		["description"] = "Lore in Short: Arthas Menethil",
		["expansion"] = 2,
		["patch"] = "3.4.3",
		["thumb"] = {
			["batch"] = 100,
			["coords"] = 3,
		},
	},
	[50] = {
		["name"] = "wow_wrathgate",
		["id"] = 14,
		--["link"] = "",
		["description"] = "The Wrathgate",
		["expansion"] = 2,
		["patch"] = "3.0.2",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 3,
		},
	},
	[60] = {
		["name"] = "wow_fotlk",
		["id"] = 16,
		--["link"] = "",
		["description"] = "Fall of the Lich King",
		["expansion"] = 2,
		["patch"] = "3.3.5",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 4,
		},
	},
	[70] = {
		["name"] = "wow3x_intro",
		["id"] = 23,
		--["link"] = "",
		["description"] = "Cataclysm Cinematic Trailer",
		["expansion"] = 3,
		["patch"] = "4.0.3a",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 8,
		},
	},
	[80] = {
		["name"] = "worgen",
		["id"] = 21,
		--["link"] = "",
		["description"] = "Worgen Cinematic Intro",
		["expansion"] = 3,
		["patch"] = "4.0.3a",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 6,
		},
		["faction"] = "alliance",
	},
	[90] = {
		["name"] = "goblin",
		["id"] = 22,
		--["link"] = "",
		["description"] = "Goblin Cinematic Intro",
		["expansion"] = 3,
		["patch"] = "4.0.3a",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 7,
		},
		["faction"] = "horde",
	},
	[100] = {
		["name"] = "dsi_act1",
		["id"] = 73,
		--["link"] = "",
		["description"] = "Dragon Soul Act 1",
		["expansion"] = 3,
		["patch"] = "4.3.0",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 10,
		},
	},
	[110] = {
		["name"] = "dsi_act2",
		["id"] = 74,
		--["link"] = "",
		["description"] = "Dragon Soul Act 2",
		["expansion"] = 3,
		["patch"] = "4.3.0",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 11,
		},
	},
	[120] = {
		["name"] = "dsi_act3",
		["id"] = 75,
		--["link"] = "",
		["description"] = "Dragon Soul Act 3",
		["expansion"] = 3,
		["patch"] = "4.3.0",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 12,
		},
	},
	[130] = {
		["name"] = "dsi_act4",
		["id"] = 76,
		--["link"] = "",
		["description"] = "Dragon Soul Act 4",
		["expansion"] = 3,
		["patch"] = "4.3.0",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 13,
		},
	},
	[140] = {
		["name"] = "wow_intro_mop",
		["id"] = 115,
		--["link"] = "",
		["description"] = "Mists of Pandaria Cinematic Trailer",
		["expansion"] = 4,
		["patch"] = "5.0.4",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 14,
		},
	},

	[141] = {
		["name"] = "wow_cgi_bu",
		["id"] = nil,
		["link"] = "https://youtu.be/jon4GV1u3uM",
		["description"] = "Bottoms Up",
		["expansion"] = 5,
		["patch"] = "5.0.4",
		["thumb"] = {
			["batch"] = 100,
			["coords"] = 16,
		},
	},

	[150] = {
		["name"] = "mop_gse",
		["id"] = 117,
		--["link"] = "",
		["description"] = "Wandering Isle - Risking It All",
		["expansion"] = 4,
		["patch"] = "5.0.4",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 16,
		},
	},
	[160] = {
		["name"] = "mop_br",
		["id"] = 116,
		--["link"] = "",
		["description"] = "Wandering Isle - A New Fate",
		["expansion"] = 4,
		["patch"] = "5.0.4",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 15,
		},
	},
	[170] = {
		["name"] = "mop_wra",
		["id"] = 119,
		--["link"] = "",
		["description"] = "Pandaria Alliance Intro",
		["expansion"] = 4,
		["patch"] = "5.0.4",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 18,
		},
		["faction"] = "alliance",
	},
	[180] = {
		["name"] = "mop_wrh",
		["id"] = 120,
		--["link"] = "",
		["description"] = "Pandaria Horde Intro",
		["expansion"] = 4,
		["patch"] = "5.0.4",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 19,
		},
		["faction"] = "horde",
	},
	[190] = {
		["name"] = "mop_jade_crash",
		["id"] = 121,
		--["link"] = "",
		["description"] = "Hellscream's Fist Crashes in Honeydew Village",
		["expansion"] = 4,
		["patch"] = "5.0.4",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 20,
		},
		["faction"] = "horde",
	},
	[200] = {
		["name"] = "mop_jade",
		["id"] = 118,
		--["link"] = "",
		["description"] = "The Battle of Serpent's Heart",
		["expansion"] = 4,
		["patch"] = "5.0.4",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 17,
		},
	},
	[210] = {
		["name"] = "mop_asl",
		["id"] = 127,
		--["link"] = "",
		["description"] = "Arrival of the Alliance Fleet",
		["expansion"] = 4,
		["patch"] = "5.1.0",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 21,
		},
		["faction"] = "alliance",
	},
	[220] = {
		["name"] = "mop_hsl",
		["id"] = 128,
		--["link"] = "",
		["description"] = "Arrival of the Horde Fleet",
		["expansion"] = 4,
		["patch"] = "5.1.0",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 22,
		},
		["faction"] = "horde",
	},

	[221] = {
		["name"] = "wow_bos_ptv",
		["id"] = nil,
		["link"] = "https://youtu.be/-D--GWwca0g",
		["description"] = "The Burdens of Shaohao Prelude: The Vision",
		["expansion"] = 4,
		["patch"] = "5.3.0",
		["thumb"] = {
			["batch"] = 100,
			["coords"] = 4,
		},
	},
	[222] = {
		["name"] = "wow_bos_pod",
		["id"] = nil,
		["link"] = "https://youtu.be/afpRzcAAZVM",
		["description"] = "The Burdens of Shaohao: Doubt",
		["expansion"] = 4,
		["patch"] = "5.3.0",
		["thumb"] = {
			["batch"] = 100,
			["coords"] = 5,
		},
	},
	[223] = {
		["name"] = "wow_bos_ptd",
		["id"] = nil,
		["link"] = "https://youtu.be/gMEHZPZTAVc",
		["description"] = "The Burdens of Shaohao: Despair",
		["expansion"] = 4,
		["patch"] = "5.3.0",
		["thumb"] = {
			["batch"] = 100,
			["coords"] = 6,
		},
	},
	[224] = {
		["name"] = "wow_bos_ptf",
		["id"] = nil,
		["link"] = "https://youtu.be/lom_plwy9iA",
		["description"] = "The Burdens of Shaohao: Fear",
		["expansion"] = 4,
		["patch"] = "5.3.0",
		["thumb"] = {
			["batch"] = 100,
			["coords"] = 7,
		},
	},
	[225] = {
		["name"] = "wow_bos_pfa",
		["id"] = nil,
		["link"] = "https://youtu.be/BSWYMQEQhEo",
		["description"] = "The Burdens of Shaohao: Anger",
		["expansion"] = 4,
		["patch"] = "5.3.0",
		["thumb"] = {
			["batch"] = 100,
			["coords"] = 8,
		},
	},
	[226] = {
		["name"] = "wow_bos_pts",
		["id"] = nil,
		["link"] = "https://youtu.be/EREaWhXj4_Q",
		["description"] = "The Burdens of Shaohao: The Sundering",
		["expansion"] = 4,
		["patch"] = "5.3.0",
		["thumb"] = {
			["batch"] = 100,
			["coords"] = 9,
		},
	},

	[230] = {
		["name"] = "oro_horde",
		["id"] = 151,
		--["link"] = "",
		["description"] = "Horde Siege of Orgrimmar Finale",
		["expansion"] = 4,
		["patch"] = "5.4.0",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 23,
		},
		["faction"] = "horde",
	},
	[240] = {
		["name"] = "oro_alliance",
		["id"] = 152,
		--["link"] = "",
		["description"] = "Alliance Siege of Orgrimmar Finale",
		["expansion"] = 4,
		["patch"] = "5.4.0",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 24,
		},
		["faction"] = "alliance",
	},
	[250] = {
		["name"] = "wod_mainintro",
		["id"] = 195,
		--["link"] = "",
		["description"] = "Warlords of Draenor Cinematic Intro",
		["expansion"] = 5,
		["patch"] = "6.0.2",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 9,
		},
	},


	[251] = {
		["name"] = "wow_low_kar",
		["id"] = nil,
		["link"] = "https://youtu.be/LG3RVCEwCPg",
		["description"] = "Lords of War: Kargath",
		["expansion"] = 5,
		["patch"] = "6.0.2",
		["thumb"] = {
			["batch"] = 100,
			["coords"] = 10,
		},
	},
	[252] = {
		["name"] = "wow_low_gro",
		["id"] = nil,
		["link"] = "https://youtu.be/FRnabRRi1ik",
		["description"] = "Lords of War: Grommash",
		["expansion"] = 5,
		["patch"] = "6.0.2",
		["thumb"] = {
			["batch"] = 100,
			["coords"] = 11,
		},
	},
	[253] = {
		["name"] = "wow_low_dur",
		["id"] = nil,
		["link"] = "https://youtu.be/J7VT7NG7e38",
		["description"] = "Lords of War: Durotan",
		["expansion"] = 5,
		["patch"] = "6.0.2",
		["thumb"] = {
			["batch"] = 100,
			["coords"] = 12,
		},
	},
	[254] = {
		["name"] = "wow_low_kil",
		["id"] = nil,
		["link"] = "https://youtu.be/fRlokbOelfg",
		["description"] = "Lords of War: Kilrogg",
		["expansion"] = 5,
		["patch"] = "6.0.2",
		["thumb"] = {
			["batch"] = 100,
			["coords"] = 13,
		},
	},
	[255] = {
		["name"] = "wow_low_mar",
		["id"] = nil,
		["link"] = "https://youtu.be/t6LIty6Uea4",
		["description"] = "Lords of War: Maraad",
		["expansion"] = 5,
		["patch"] = "6.0.2",
		["thumb"] = {
			["batch"] = 100,
			["coords"] = 14,
		},
	},

	[260] = {
		["name"] = "wod_dpi",
		["id"] = 185,
		--["link"] = "",
		["description"] = "Dark Portal Intro",
		["expansion"] = 5,
		["patch"] = "6.0.3",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 28,
		},
	},
	[270] = {
		["name"] = "wod_dpo",
		["id"] = 187,
		--["link"] = "",
		["description"] = "Dark Portal Outro",
		["expansion"] = 5,
		["patch"] = "6.0.3",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 1,
		},
	},
	[280] = {
		["name"] = "wod_gar_horde_tier0-1",
		["id"] = 189,
		--["link"] = "",
		["description"] = "Horde Garrison construction #1",
		["expansion"] = 5,
		["patch"] = "6.0.3",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 3,
		},
		["faction"] = "horde",
	},
	[290] = {
		["name"] = "wod_gar_horde_tier1-2",
		["id"] = 190,
		--["link"] = "",
		["description"] = "Horde Garrison construction #2",
		["expansion"] = 5,
		["patch"] = "6.0.3",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 4,
		},
		["faction"] = "horde",
	},
	[300] = {
		["name"] = "wod_gar_horde_tier2-3",
		["id"] = 191,
		--["link"] = "",
		["description"] = "Horde Garrison construction #3",
		["expansion"] = 5,
		["patch"] = "6.0.3",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 5,
		},
		["faction"] = "horde",
	},
	[310] = {
		["name"] = "wod_gar_alliance_tier0-1",
		["id"] = 192,
		--["link"] = "",
		["description"] = "Alliance Garrison construction #1",
		["expansion"] = 5,
		["patch"] = "6.0.3",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 6,
		},
		["faction"] = "alliance",
	},
	[320] = {
		["name"] = "wod_gar_alliance_tier1-2",
		["id"] = 193,
		--["link"] = "",
		["description"] = "Alliance Garrison construction #2",
		["expansion"] = 5,
		["patch"] = "6.0.3",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 7,
		},
		["faction"] = "alliance",
	},
	[330] = {
		["name"] = "wod_gar_alliance_tier2-3",
		["id"] = 194,
		--["link"] = "",
		["description"] = "Alliance Garrison construction #3",
		["expansion"] = 5,
		["patch"] = "6.0.3",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 8,
		},
		["faction"] = "alliance",
	},

	[340] = {
		["name"] = "wod_vel",
		["id"] = 167,
		--["link"] = "",
		["description"] = "Shadowmoon Valley Finale",
		["expansion"] = 5,
		["patch"] = "6.0.3",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 25,
		},
	},
	[350] = {
		["name"] = "wod_fwv",
		["id"] = 168,
		--["link"] = "",
		["description"] = "Frostfire Ridge Finale",
		["expansion"] = 5,
		["patch"] = "6.0.3",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 26,
		},
	},
	[360] = {
		["name"] = "wod_sra",
		["id"] = 188,
		--["link"] = "",
		["description"] = "Talador Finale",
		["expansion"] = 5,
		["patch"] = "6.0.3",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 2,
		},
	},
	[370] = {
		["name"] = "wod_gvt",
		["id"] = 177,
		--["link"] = "",
		["description"] = "Nagrand Finale",
		["expansion"] = 5,
		["patch"] = "6.0.3",
		["thumb"] = {
			["batch"] = 1,
			["coords"] = 27,
		},
	},
	[380] = {
		["name"] = "wod_gto",
		["id"] = 270,
		--["link"] = "",
		["description"] = "The Legendary Quest Continues",
		["expansion"] = 5,
		["patch"] = "6.2.0",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 10,
		},
	},
	[390] = {
		["name"] = "wod_gar_shipyard_lj_h",
		["id"] = 292,
		--["link"] = "",
		["description"] = "Horde Garrison: Shipyard Construction",
		["expansion"] = 5,
		["patch"] = "6.2.0",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 11,
		},
		["faction"] = "horde",
	},
	[400] = {
		["name"] = "wod_gar_shipyard_lj_a",
		["id"] = 293,
		--["link"] = "",
		["description"] = "Alliance Garrison: Shipyard Construction",
		["expansion"] = 5,
		["patch"] = "6.2.0",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 12,
		},
		["faction"] = "alliance",
	},
	[410] = {
		["name"] = "wod_hfi",
		["id"] = 294,
		--["link"] = "",
		["description"] = "Gul'dan's Plan",
		["expansion"] = 5,
		["patch"] = "6.2.0",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 13,
		},
	},
	[420] = {
		["name"] = "wod_hfo",
		["id"] = 295,
		--["link"] = "",
		["description"] = "Victory on Draenor",
		["expansion"] = 5,
		["patch"] = "6.2.0",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 14,
		},
	},

	[421] = {
		["name"] = "wow_cgi_lct",
		["id"] = nil,
		["link"] = "https://youtu.be/hmHY6hERT3s",
		["description"] = "Legion Cinematic Teaser",
		["expansion"] = 6,
		["patch"] = "6.0.2",
		["thumb"] = {
			["batch"] = 100,
			["coords"] = 17,
		},
	},

	[430] = {
		["name"] = "legion_intro",
		["id"] = 470,
		--["link"] = "",
		["description"] = "Legion Cinematic Trailer",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 16,
		},
	},
	[440] = {
		["name"] = "legion_hrb_g",
		["id"] = 476,
		--["link"] = "",
		["description"] = "Harbingers: Gul'dan",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 22,
		},
	},
	[450] = {
		["name"] = "legion_hrb_k",
		["id"] = 477,
		--["link"] = "",
		["description"] = "Harbingers: Khadgar",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 23,
		},
	},
	[460] = {
		["name"] = "legion_hrb_i",
		["id"] = 478,
		--["link"] = "",
		["description"] = "Harbingers: Illidan",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 24,
		},
	},
	[470] = {
		["name"] = "legion_dh1",
		["id"] = 469,
		--["link"] = "",
		["description"] = "Demon Hunter Cinematic #1",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 15,
		},
	},
	[480] = {
		["name"] = "legion_dh2",
		["id"] = 471,
		--["link"] = "",
		["description"] = "Demon Hunter Cinematic #2",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 17,
		},
	},
	[490] = {
		["name"] = "legion_bs_i",
		["id"] = 486,
		--["link"] = "",
		["description"] = "The Broken Shore Intro",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 28,
		},
	},
	[500] = {
		["name"] = "legion_bs_a",
		["id"] = 487,
		--["link"] = "",
		["description"] = "Alliance Broken Shore Cinematic",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 1,
		},
		["faction"] = "alliance",
	},
	[510] = {
		["name"] = "legion_bs_h",
		["id"] = 488,
		--["link"] = "",
		["description"] = "Horde Broken Shore Cinematic",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 2,
		},
		["faction"] = "horde",
	},
	[520] = {
		["name"] = "legion_org_vs",
		["id"] = 474,
		--["link"] = "",
		["description"] = "The Fate of the Horde",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 20,
		},
		["faction"] = "horde",
	},
	[530] = {
		["name"] = "legion_val_yx",
		["id"] = 473,
		--["link"] = "",
		["description"] = "Val'sharah Intro",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 19,
		},
	},
	[540] = {
		["name"] = "legion_val_yd",
		["id"] = 472,
		--["link"] = "",
		["description"] = "Val'sharah Epilogue",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 18,
		},
	},
	[550] = {
		["name"] = "legion_g_a_sth",
		["id"] = 483,
		--["link"] = "",
		["description"] = "Stormheim Cinematic #1",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 25,
		},
	},
	[560] = {
		["name"] = "legion_g_h_sth",
		["id"] = 484,
		--["link"] = "",
		["description"] = "Stormheim Cinematic #2",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 26,
		},
	},
	[570] = {
		["name"] = "legion_sth",
		["id"] = 475,
		--["link"] = "",
		["description"] = "Stormheim Epilogue",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 21,
		},
	},
	[580] = {
		["name"] = "legion_su_i",
		["id"] = 485,
		--["link"] = "",
		["description"] = "Suramar Intro",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 2,
			["coords"] = 27,
		},
	},
	[590] = {
		["name"] = "legion_iq_lv",
		["id"] = 489,
		--["link"] = "",
		["description"] = "Lightbound Vessel Interstitial",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 3,
		},
	},
	[600] = {
		["name"] = "legion_iq_id",
		["id"] = 490,
		--["link"] = "",
		["description"] = "Illidan's Demise",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 4,
		},
	},
	[610] = {
		["name"] = "legion_su_r",
		["id"] = 549,
		--["link"] = "",
		["description"] = "Nighthold Finale",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 5,
		},
	},
	[620] = {
		["name"] = "legion_72_tst",
		["id"] = 635,
		--["link"] = "",
		["description"] = "The Tomb of Sargeras Trailer",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 6,
		},
	},
	[630] = {
		["name"] = "legion_72_ots",
		["id"] = 637,
		--["link"] = "",
		["description"] = "Opening the Tomb",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 8,
		},
	},
	[640] = {
		["name"] = "legion_72_ars",
		["id"] = 636,
		--["link"] = "",
		["description"] = "A Found Memento: Raising a King",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 7,
		},
		["faction"] = "alliance",
	},
	[650] = {
		["name"] = "legion_72_tsf",
		["id"] = 656,
		--["link"] = "",
		["description"] = "Tomb of Sargeras Finale",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 9,
		},
	},
	[660] = {
		["name"] = "legion_73_agi",
		["id"] = 677,
		--["link"] = "",
		["description"] = "The Battle for Argus Begins",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 10,
		},
	},
	[670] = {
		["name"] = "legion_73_rtg",
		["id"] = 679,
		--["link"] = "",
		["description"] = "Rejection of a Gift",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 11,
		},
	},
	[680] = {
		["name"] = "legion_73_avt",
		["id"] = 681,
		--["link"] = "",
		["description"] = "Reincarnation of Alleria Windrunner",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 12,
		},
	},
	[690] = {
		["name"] = "legion_73_pan",
		["id"] = 686,
		--["link"] = "",
		["description"] = "Argus the Unmaker Intro",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 13,
		},
	},
	[700] = {
		["name"] = "legion_73_afn",
		["id"] = 688,
		--["link"] = "",
		["description"] = "Antorus Raid Finale",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 14,
		},
	},
	[710] = {
		["name"] = "legion_735_epa",
		["id"] = 716,
		--["link"] = "",
		["description"] = "Defeat of the Burning Legion: Alliance Epilogue",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 15,
		},
		["faction"] = "alliance",
	},
	[720] = {
		["name"] = "legion_735_eph",
		["id"] = 717,
		--["link"] = "",
		["description"] = "Defeat of the Burning Legion: Horde Epilogue",
		["expansion"] = 6,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 16,
		},
		["faction"] = "horde",
	},
	[730] = {
		["name"] = "bfa_800_sv",
		["id"] = 853,
		--["link"] = "",
		["description"] = "Warbringers: Sylvanas",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 18,
		},
	},
	[740] = {
		["name"] = "bfa_800_ja",
		["id"] = 861,
		--["link"] = "",
		["description"] = "Warbringers: Jaina",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 26,
		},
	},

	[741] = {
		["name"] = "wow_cgi_os",
		["id"] = nil,
		["link"] = "https://youtu.be/aW_h0qf9vpA",
		["description"] = "Old Soldier",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 100,
			["coords"] = 18,
		},
	},

	[750] = {
		["name"] = "bfa_800_rb",
		["id"] = 852,
		--["link"] = "",
		["description"] = "Battle for Azeroth Cinematic Trailer",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 17,
		},
	},
	[760] = {
		["name"] = "bfa_800_ltt",
		["id"] = 856,
		--["link"] = "",
		["description"] = "Battle for Lordaeron: Turn the Tide",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 21,
		},
	},
	[770] = {
		["name"] = "bfa_800_ltc_h",
		["id"] = 855,
		--["link"] = "",
		["description"] = "Lordaeron Throne Room Confrontation - Horde",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 20,
		},
		["faction"] = "horde",
	},
	[780] = {
		["name"] = "bfa_800_ltc_a",
		["id"] = 854,
		--["link"] = "",
		["description"] = "Lordaeron Throne Room Confrontation - Alliance",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 19,
		},
		["faction"] = "alliance",
	},

	[781] = {
		["name"] = "wow_cgi_lh",
		["id"] = nil,
		["link"] = "https://youtu.be/LKZ7ygLTR0g",
		["description"] = "Lost Honor",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 100,
			["coords"] = 19,
		},
	},

	[790] = {
		["name"] = "bfa_800_stz",
		["id"] = 857,
		--["link"] = "",
		["description"] = "Arrival to Zandalar - Horde",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 22,
		},
		["faction"] = "horde",
	},
	[800] = {
		["name"] = "bfa_800_zia",
		["id"] = 858,
		--["link"] = "",
		["description"] = "Arrival to Zandalar - Alliance",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 23,
		},
		["faction"] = "alliance",
	},
	[810] = {
		["name"] = "bfa_800_jnm",
		["id"] = 860,
		--["link"] = "",
		["description"] = "Jaina's Nightmare",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 25,
		},
		["faction"] = "alliance",
	},
	[820] = {
		["name"] = "bfa_800_kta",
		["id"] = 859,
		--["link"] = "",
		["description"] = "Arrival to Kul Tiras",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 24,
		},
		["faction"] = "alliance",
	},
	[830] = {
		["name"] = "bfa_800_rot",
		["id"] = 865,
		--["link"] = "",
		["description"] = "Realm of Torment",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 4,
			["coords"] = 2,
		},
		["faction"] = "alliance",
	},
	[840] = {
		["name"] = "bfa_800_ktf",
		["id"] = 864,
		--["link"] = "",
		["description"] = "The Return of Hope: Kul Tiras",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 4,
			["coords"] = 1,
		},
		["faction"] = "alliance",
	},
	[850] = {
		["name"] = "bfa_800_bar",
		["id"] = 862,
		--["link"] = "",
		["description"] = "Rastakhan's Deal with Bwonsamdi",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 27,
		},
		["faction"] = "horde",
	},
	[860] = {
		["name"] = "bfa_800_zcf",
		["id"] = 863,
		--["link"] = "",
		["description"] = "The Threat Within: Zandalar",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 3,
			["coords"] = 28,
		},
		["faction"] = "horde",
	},
	[870] = {
		["name"] = "bfa_810_tod",
		["id"] = 874,
		--["link"] = "",
		["description"] = "Terror of Darkshore",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 4,
			["coords"] = 4,
		},
	},
	[880] = {
		["name"] = "bfa_810_akt",
		["id"] = 876,
		--["link"] = "",
		["description"] = "Intro to Battle of Dazar'alor",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 4,
			["coords"] = 6,
		},
	},
	[890] = {
		["name"] = "bfa_810_dor",
		["id"] = 875,
		--["link"] = "",
		["description"] = "The Death of Rastakhan",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 4,
			["coords"] = 5,
		},
		["faction"] = "horde",
	},
	[900] = {
		["name"] = "bfa_815_dpr",
		["id"] = 879,
		--["link"] = "",
		["description"] = "An Unexpected Reunion",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 4,
			["coords"] = 7,
		},
	},

	[742] = {
		["name"] = "wow_cgi_sh",
		["id"] = nil,
		["link"] = "https://youtu.be/umAgdVTBae0",
		["description"] = "Safe Haven",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 100,
			["coords"] = 20,
		},
	},

	[910] = {
		["name"] = "bfa_820_az",
		["id"] = 884,
		--["link"] = "",
		["description"] = "Warbringers: Azshara",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 4,
			["coords"] = 9,
		},
	},
	[920] = {
		["name"] = "bfa_820_enc_262_a",
		["id"] = 883,
		--["link"] = "",
		["description"] = "Rise of Azshara",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 4,
			["coords"] = 13,
		},
		["faction"] = "alliance",
	},
	[930] = {
		["name"] = "bfa_820_enc_262_h",
		["id"] = 894,
		--["link"] = "",
		["description"] = "Rise of Azshara",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 4,
			["coords"] = 14,
		},
		["faction"] = "horde",
	},
	[940] = {
		["name"] = "bfa_820_enc_261",
		["id"] = 886,
		--["link"] = "",
		["description"] = "Azshara's Eternal Palace - Raid Finale Cinematic",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 4,
			["coords"] = 11,
		},
	},
	[950] = {
		["name"] = "bfa_820_enc_260",
		["id"] = 885,
		--["link"] = "",
		["description"] = "The Crossroads",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 4,
			["coords"] = 10,
		},
	},
	[960] = {
		["name"] = "bfa_825_han",
		["id"] = 903,
		--["link"] = "",
		["description"] = "Negotiations",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 4,
			["coords"] = 15,
		},
	},
	[970] = {
		["name"] = "bfa_825_sd",
		["id"] = 904,
		--["link"] = "",
		["description"] = "Reckoning",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 4,
			["coords"] = 16,
		},
	},
	[980] = {
		["name"] = "bfa_830_von",
		["id"] = 928,
		--["link"] = "",
		["description"] = "Visions of N'Zoth Intro",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 4,
			["coords"] = 19,
		},
	},
	[990] = {
		["name"] = "bfa_830_nri",
		["id"] = 927,
		--["link"] = "",
		["description"] = "Ny'alotha: Wrathion's Scene",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 4,
			["coords"] = 18,
		},
	},
	[1000] = {
		["name"] = "bfa_830_nrf",
		["id"] = 926,
		--["link"] = "",
		["description"] = "Ny'alotha: Raid Finale",
		["expansion"] = 7,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 4,
			["coords"] = 17,
		},
	},
	[1001] = {
		["name"] = "shadowlands_901_npa",
		["id"] = 895,
		--["link"] = "",
		["description"] = "Exile's Reach Alliance Intro",
		["expansion"] = 8,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 4,
			["coords"] = 12,
		},
		["faction"] = "alliance",
	},
	[1002] = {
		["name"] = "shadowlands_901_nph",
		["id"] = 931,
		--["link"] = "",
		["description"] = "Exile's Reach Horde Intro",
		["expansion"] = 8,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 4,
			["coords"] = 20,
		},
		["faction"] = "horde",
	},
	[1010] = {
		["name"] = "shadowlands_901_si",
		["id"] = 936,
		--["link"] = "",
		["description"] = "Shadowlands Cinematic Trailer",
		["expansion"] = 8,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 4,
			["coords"] = 25,
		},
	},
	[1020] = {
		["name"] = "shadowlands_901_sda",
		["id"] = 937,
		--["link"] = "",
		["description"] = "Dark Abduction",
		["expansion"] = 8,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 4,
			["coords"] = 26,
		},
	},
	[1030] = {
		["name"] = "shadowlands_901_ntc",
		["id"] = 942,
		--["link"] = "",
		["description"] = "For Teldrassil",
		["expansion"] = 8,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 4,
			["coords"] = 28,
		},
	},
	[1040] = {
		["name"] = "shadowlands_901_bta",
		["id"] = 945,
		--["link"] = "",
		["description"] = "Breaking the Arbiter",
		["expansion"] = 8,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 3,
		},
	},
	[1050] = {
		["name"] = "shadowlands_901_ba",
		["id"] = 932,
		--["link"] = "",
		["description"] = "Afterlives: Bastion",
		["expansion"] = 8,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 4,
			["coords"] = 21,
		},
	},
	[1060] = {
		["name"] = "shadowlands_901_aw",
		["id"] = 935,
		--["link"] = "",
		["description"] = "Afterlives: Ardenweald",
		["expansion"] = 8,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 4,
			["coords"] = 24,
		},
	},
	[1070] = {
		["name"] = "shadowlands_901_mx",
		["id"] = 934,
		--["link"] = "",
		["description"] = "Afterlives: Maldraxxus",
		["expansion"] = 8,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 4,
			["coords"] = 23,
		},
	},
	[1080] = {
		["name"] = "shadowlands_901_rd",
		["id"] = 933,
		--["link"] = "",
		["description"] = "Afterlives: Revendreth",
		["expansion"] = 8,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 4,
			["coords"] = 22,
		},
	},
	[1090] = {
		["name"] = "shadowlands_901_lc",
		["id"] = 943,
		--["link"] = "",
		["description"] = "Beyond the Veil",
		["expansion"] = 8,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 1,
		},
	},
	[1100] = {
		["name"] = "shadowlands_901_etm",
		["id"] = 946,
		--["link"] = "",
		["description"] = "Enter the Maw",
		["expansion"] = 8,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 4,
		},
	},
	[1110] = {
		["name"] = "shadowlands_902_ysr",
		["id"] = 941,
		--["link"] = "",
		["description"] = "Ysera Reborn",
		["expansion"] = 8,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 4,
			["coords"] = 27,
		},
	},
	[1120] = {
		["name"] = "shadowlands_901_rme",
		["id"] = 944,
		--["link"] = "",
		["description"] = "Remember This Lesson",
		["expansion"] = 8,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 2,
		},
	},
	[1130] = {
		["name"] = "shadowlands_901_pim",
		["id"] = 947,
		--["link"] = "",
		["description"] = "No More Lies",
		["expansion"] = 8,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 5,
		},
	},
	[1140] = {
		["name"] = "shadowlands_902_asc",
		["id"] = 948,
		--["link"] = "",
		["description"] = "Sylvanas' Choice",
		["expansion"] = 8,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 6,
		},
	},
	[1150] = {
		["name"] = "shadowlands_910_aaa",
		["id"] = 949,
		--["link"] = "",
		["description"] = "Kingsmourne",
		["expansion"] = 8,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 7,
		},
	},
	[1160] = {
		["name"] = "shadowlands_910_adf",
		["id"] = 951,
		--["link"] = "",
		["description"] = "Battle for Ardenweald Finale",
		["expansion"] = 8,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 9,
		},
	},
	[1170] = {
		["name"] = "shadowlands_910_ewq",
		["id"] = 953,
		--["link"] = "",
		["description"] = "By Our Hand",
		["expansion"] = 8,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 10,
		},
	},
	[1180] = {
		["name"] = "shadowlands_910_jar",
		["id"] = 950,
		--["link"] = "",
		["description"] = "Sanctum of Domination Raid Finale",
		["expansion"] = 8,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 8,
		},
	},
	[1190] = {
		["name"] = "shadowlands_920_sus",
		["id"] = 955,
		--["link"] = "",
		["description"] = "Shattered Legacies",
		["expansion"] = 8,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 12,
		},
	},
	[1200] = {
		["name"] = "shadowlands_920_arf",
		["id"] = 956,
		--["link"] = "",
		["description"] = "Anduin Raid Finale",
		["expansion"] = 8,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 13,
		},
	},
	[1210] = {
		["name"] = "shadowlands_920_jri",
		["id"] = 957,
		--["link"] = "",
		["description"] = "The Jailer Intro",
		["expansion"] = 8,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 14,
		},
	},
	[1220] = {
		["name"] = "shadowlands_920_jrf",
		["id"] = 958,
		--["link"] = "",
		["description"] = "The Jailer's Fall",
		["expansion"] = 8,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 15,
		},
	},
	[1230] = {
		["name"] = "shadowlands_920_pam",
		["id"] = 954,
		--["link"] = "",
		["description"] = "Pelagos' Ascension",
		["expansion"] = 8,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 11,
		},
	},
	[1240] = {
		["name"] = "dragonflight_100_di",
		["id"] = 960,
		--["link"] = "",
		["description"] = "Dragonflight Cinematic Trailer",
		["expansion"] = 9,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 16,
		},
	},
	[1250] = {
		["name"] = "dragonflight_100_ps",
		["id"] = 969,
		--["link"] = "",
		["description"] = "Dracthyr Intro Dream Cinematic",
		["expansion"] = 9,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 25,
		},
	},
	[1260] = {
		["name"] = "dragonflight_100_dlf",
		["id"] = 961,
		--["link"] = "",
		["description"] = "Raszageth's Escape",
		["expansion"] = 9,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 17,
		},
	},
	[1270] = {
		["name"] = "dragonflight_100_prk",
		["id"] = 962,
		--["link"] = "",
		["description"] = "A Tempest Unleashed",
		["expansion"] = 9,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 18,
		},
	},
	[1280] = {
		["name"] = "dragonflight_100_gk",
		["id"] = 966,
		--["link"] = "",
		["description"] = "Dragonflight Legacies: Chapter One",
		["expansion"] = 9,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 22,
		},
	},
	[1290] = {
		["name"] = "dragonflight_100_dw",
		["id"] = 967,
		--["link"] = "",
		["description"] = "Dragonflight Legacies: Chapter Two",
		["expansion"] = 9,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 23,
		},
	},
	[1300] = {
		["name"] = "dragonflight_100_dt",
		["id"] = 968,
		--["link"] = "",
		["description"] = "Dragonflight Legacies: Chapter Three",
		["expansion"] = 9,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 24,
		},
	},
	[1310] = {
		["name"] = "dragonflight_100_dm",
		["id"] = 973,
		--["link"] = "",
		["description"] = "Take to the Skies",
		["expansion"] = 9,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 26,
		},
	},
	[1320] = {
		["name"] = "dragonflight_100_rva",
		["id"] = 965,
		--["link"] = "",
		["description"] = "The Storm-Eater’s Fury - Raszageth Confronts Alexstrasza",
		["expansion"] = 9,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 21,
		},
	},
	[1330] = {
		["name"] = "dragonflight_100_ptw",
		["id"] = 963,
		--["link"] = "",
		["description"] = "A Seed of Hope",
		["expansion"] = 9,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 19,
		},
	},
	[1340] = {
		["name"] = "dragonflight_100_ike",
		["id"] = 964,
		--["link"] = "",
		["description"] = "Raszageth's Demise",
		["expansion"] = 9,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 20,
		},
	},
	[1350] = {
		["name"] = "dragonflight_1007_coi",
		["id"] = 974,
		--["link"] = "",
		["description"] = "Secrets of the Reach",
		["expansion"] = 9,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 27,
		},
	},
	[1360] = {
		["name"] = "dragonflight_101_otw",
		["id"] = 979,
		--["link"] = "",
		["description"] = "Opening the Way",
		["expansion"] = 9,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 5,
			["coords"] = 28,
		},
	},
	[1370] = {
		["name"] = "dragonflight_101_mol",
		["id"] = 981,
		--["link"] = "",
		["description"] = "Loamm gets burned down",
		["expansion"] = 9,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 6,
			["coords"] = 2,
		},
	},
	[1380] = {
		["name"] = "dragonflight_101_wtr",
		["id"] = 980,
		--["link"] = "",
		["description"] = "A Symbol of Hope",
		["expansion"] = 9,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 6,
			["coords"] = 1,
		},
	},
	[1390] = {
		["name"] = "dragonflight_1015_nfi",
		["id"] = 993,
		--["link"] = "",
		["description"] = "A Matter of Time",
		["expansion"] = 9,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 6,
			["coords"] = 5,
		},
	},
	[1400] = {
		["name"] = "dragonflight_1015_mda",
		["id"] = 991,
		--["link"] = "",
		["description"] = "Dawn of the Infinite Interlude",
		["expansion"] = 9,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 6,
			["coords"] = 3,
		},
	},
	[1410] = {
		["name"] = "dragonflight_1015_mdb",
		["id"] = 992,
		--["link"] = "",
		["description"] = "Dawn of the Infinite Finale",
		["expansion"] = 9,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 6,
			["coords"] = 4,
		},
	},
	[1420] = {
		["name"] = "dragonflight_1017_fi",
		["id"] = 1001,
		--["link"] = "",
		["description"] = "Fury Incarnate",
		["expansion"] = 9,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 6,
			["coords"] = 6,
		},
	},
	[1430] = {
		["name"] = "dragonflight_102_cof",
		["id"] = 1002,
		--["link"] = "",
		["description"] = "Crown of Flame",
		["expansion"] = 9,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 6,
			["coords"] = 7,
		},
	},
	[1440] = {
		["name"] = "dragonflight_102_fra",
		["id"] = 1003,
		--["link"] = "",
		["description"] = "Blessing of Amirdrassil",
		["expansion"] = 9,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 6,
			["coords"] = 8,
		},
	},
	[1450] = {
		["name"] = "dragonflight_1025_vis",
		["id"] = 1009,
		--["link"] = "",
		["description"] = "Iridikron and Vyranoth Parlay",
		["expansion"] = 9,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 6,
			["coords"] = 9,
		},
	},
	[1460] = {
		["name"] = "tww_110_ta",
		["id"] = 1014,
		--["link"] = "https://youtu.be/o03STclgxSc",
		["description"] = "The War Within Cinematic Trailer",
		["expansion"] = 10,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 6,
			["coords"] = 13,
		},
	},
	[1461] = {
		["name"] = "tww_110_ssf",
		["id"] = 1024,
		--["link"] = "https://youtu.be/SUj34OWkjXU",
		["description"] = "The Story So Far",
		["expansion"] = 10,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 6,
			["coords"] = 18,
		},
	},


	[1462] = {
		["name"] = "wow_ani_als",
		["id"] = nil,
		["link"] = "https://youtu.be/IgY1YrAHYBI",
		["description"] = "Alleria: Light and Shadow",
		["expansion"] = 10,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 100,
			["coords"] = 15,
		},
	},



	[1470] = {
		["name"] = "tww_110_tod",
		["id"] = 1010,
		--["link"] = "https://youtu.be/1XmNNDU00Q0",
		["description"] = "Dalaran Arrives at Khazz Algar",
		["expansion"] = 10,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 6,
			["coords"] = 10,
		},
	},
	[1480] = {
		["name"] = "tww_110_dod",
		["id"] = 1012,
		--["link"] = "https://youtu.be/wzLWovRyp5Y",
		["description"] = "The Guardian and the Harbinger",
		["expansion"] = 10,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 6,
			["coords"] = 11,
		},
	},
	[1490] = {
		["name"] = "tww_110_ug",
		["id"] = 1023,
		--["link"] = "https://youtu.be/zYdFLUBjwCU",
		["description"] = "Shadows Beneath",
		["expansion"] = 10,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 6,
			["coords"] = 17,
		},
	},

	[1491] = {
		["name"] = "wow_cgi_eoa",
		["id"] = nil,
		["link"] = "https://youtu.be/tBBEt8gfXks",
		["description"] = "Echoes of Azeroth",
		["expansion"] = 10,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 100,
			["coords"] = 21,
		},
	},

	[1500] = {
		["name"] = "tww_110_mag",
		["id"] = 1013,
		--["link"] = "",
		["description"] = "Magni's Sacrifice",
		["expansion"] = 10,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 6,
			["coords"] = 12,
		},
	},
	[1510] = {
		["name"] = "tww_110_tcn",
		["id"] = 1020,
		--["link"] = "",
		["description"] = "A Kingdom Reborn",
		["expansion"] = 10,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 6,
			["coords"] = 15,
		},
	},
	[1520] = {
		["name"] = "tww_110_lc",
		["id"] = 1021,
		--["link"] = "https://youtu.be/brOSi_rpGj4",
		["description"] = "Threads of Destiny",
		["expansion"] = 10,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 6,
			["coords"] = 16,
		},
	},
	[1530] = {
		["name"] = "tww_110_xef",
		["id"] = 1019,
		--["link"] = "",
		["description"] = "Confronting Xal'atath",
		["expansion"] = 10,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 6,
			["coords"] = 14,
		},
	},
	[1540] = {
		["name"] = "tww_1107_owv",
		["id"] = 1030,
		--["link"] = "",
		["description"] = "Orwyna's Worldsoul Vision",
		["expansion"] = 10,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 6,
			["coords"] = 21,
		},
	},
	[1550] = {
		["name"] = "tww_111_bri",
		["id"] = 1028,
		--["link"] = "https://youtu.be/4AgvDK5IczU",
		["description"] = "Boardroom",
		["expansion"] = 10,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 6,
			["coords"] = 19,
		},
	},
	[1560] = {
		["name"] = "tww_111_bro",
		["id"] = 1029,
		--["link"] = "https://youtu.be/se17Aw_BXE4",
		["description"] = "A New Tomorrow",
		["expansion"] = 10,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 6,
			["coords"] = 20,
		},
	},
	[1570] = {
		["name"] = "tww_112_kid",
		["id"] = 1033,
		--["link"] = "",
		["description"] = "Dimensius Rising",
		["expansion"] = 10,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 6,
			["coords"] = 22,
		},
	},
	[1580] = {
		["name"] = "tww_112_lws",
		["id"] = 1034,
		--["link"] = "",
		["description"] = "Dimensius Contained",
		["expansion"] = 10,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 6,
			["coords"] = 23,
		},
	},
	--[[
	[PLACEHOLDER_VALUE] = {
		["name"] = "tww_1127_scd",
		["id"] = 1052,
		--["link"] = "",
		["description"] = "Story Recap 2",
		["expansion"] = 10,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 6,
			["coords"] = PLACEHOLDER_VALUE,
		},
	},
	--]]
	[1590] = {
		["name"] = "tww_1127_unk",
		["id"] = 1040,
		--["link"] = "",
		["description"] = "The Eleventh Hour",
		["expansion"] = 10,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 6,
			["coords"] = 24,
		},
	},


	[1591] = {
		["name"] = "wow_cgi_int",
		["id"] = nil,
		["link"] = "https://youtu.be/SiIjThwKLaE",
		["description"] = "Intercession",
		["expansion"] = 11,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 100,
			["coords"] = 22,
		},
	},

	--[[
	
	[PLACEHOLDER_VALUE] = {
		["name"] = "PLACEHOLDER_VALUE",
		["id"] = PLACEHOLDER_VALUE,
		--["link"] = "",
		["description"] = "PLACEHOLDER_VALUE",
		["expansion"] = 10,
		["patch"] = "PLACEHOLDER_VALUE",
		["thumb"] = {
			["batch"] = 6,
			["coords"] = PLACEHOLDER_VALUE,
		},
	},

	--]]

};

if LOCALE == "enUS" then
-- Localized English stuff

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

]],

	["tww_1127_unk"] = [[
1
00:00:02,000 --> 00:00:04,000
[somber orchestral music]

2
00:00:04,067 --> 00:00:06,067
[insects chirping]

3
00:00:18,233 --> 00:00:19,567
[thunder crashes]

4
00:00:22,900 --> 00:00:25,133
[thunder rumbles]

5
00:00:35,233 --> 00:00:36,067
[grunts]

6
00:00:37,733 --> 00:00:39,233
[grunts]

7
00:00:48,067 --> 00:00:49,667
[Ethereal X] Mistress,

8
00:00:49,733 --> 00:00:54,033
I have come to offer myself in service.

9
00:00:54,933 --> 00:00:56,033
Please.

10
00:00:57,600 --> 00:01:01,267
Oh, you will serve me.

11
00:01:01,333 --> 00:01:04,967
I went to a lot of trouble

12
00:01:05,033 --> 00:01:07,233
imbuing this bauble

13
00:01:07,300 --> 00:01:10,133
with untold power.

14
00:01:11,600 --> 00:01:14,100
Now yours shall be added.

15
00:01:14,167 --> 00:01:15,633
[Ethereal X gasps]

16
00:01:15,700 --> 00:01:17,300
[Ethereal X screams]

17
00:01:32,433 --> 00:01:33,967
[groans]

18
00:01:34,033 --> 00:01:36,033
[high-pitched whining]

19
00:01:48,767 --> 00:01:50,500
[groans]

20
00:01:51,867 --> 00:01:53,233
[panting]

21
00:01:59,767 --> 00:02:02,867
[Xal'atath] For a hundred thousand years,

22
00:02:02,933 --> 00:02:06,733
I have planned for this moment.

23
00:02:07,833 --> 00:02:10,633
Let the way be opened

24
00:02:11,200 --> 00:02:14,133
to my prize!

25
00:02:14,200 --> 00:02:15,967
[orchestral music crescendos]

]],

	["wow_lis_tbl"] = [[
Sargeras believed the only way to spare the universe from the void lords was to purge it of all life. The fallen titan and his armies set forth upon their first planet, extinguishing entire species without mercy. As news of the devastation spread, Sargeras was confronted by his former student, Aggramar. When Aggramar's words would not sway the Legion's leader, swords were drawn. Blow after blow, the duel raged between the powerful titans until their weapons shattered. Wounded, Aggramar returned to the Pantheon to report on Sargeras' betrayal, and the coming war. As the Pantheon prepared to fight back, the other titans pleaded with Sargeras to stand down. Sargeras refused, attacked Aggramar and charged his demons forward. The Burning Legion's might was unmatched, and it consumed the Pantheon in an apocalyptic felstorm. Furthering his ambition, the victorious Sargeras visited three leaders of the eredar, promising them power and knowledge in exchange for loyalty. Archimonde and Kil'jaeden joined the Legion. The third, Velen, saw the horrors ahead and fled with his people, who would become known as the draenei. Sargeras and the Burning Legion made chase, hunting down the exiles and setting their sights on Azeroth.
]],

	["wow_lis_tdp"] = [[
On Draenor, the Burning Legion found agents in the orcish Horde, manipulating them to conquer the planet. The Horde bled their prisoners' life essence in order to power a colossal portal. And through this passage, the invasion of Azeroth began. The First and Second War wrought devastation across the world. The Alliance eventually pushed the Horde back and attempted to destroy the gateway. In an enormous explosion, their plan backfired, ripping a tear in reality and further linking their worlds together. Two years after the Second War, the shaman Ner'zhul ordered the orcs on Draenor through this tear to gather artifacts, including the Skull of Gul'dan. Ner'zhul used their powers to open countless portals to other worlds. Overwhelmed by the magical strain, Draenor shattered, becoming Outland. Before Draenor was torn apart, the Alliance sent an expedition through the rift led by some of its greatest heroes. To spare Azeroth from destruction, they severed the portal between worlds, an act of sacrifice that trapped the heroes in the broken world now known as... Outland.
]],

	["wow_lis_art"] = [[
Arthas Menethil, son of King Terenas Menethil II, the ruler of Lordaeron. As a promising young paladin, Arthas was trained in combat by Muradin Bronzebeard and learned the ways of the Light under Uther the Lightbringer. Soon after his induction into the Knights of the Silver Hand, a plague gripped the northlands of Lordaeron. I joined Arthas to help investigate an insidious disease that caused the dead to rise again. After fighting the infected undead, we encountered the necromancer Kel'Thuzad and discovered his plans to infect outlying villages under the orders of the dreadlord Mal'Ganis. We set out to stop the demon before he could reach his next target: the city of Stratholme. But we arrived too late. The citizens had already consumed poisoned grain that would doom them to rise into undeath. To stop the plague from spreading further, Arthas ordered his knights to purge the entire city. Uther and I were horrified and refused to obey his cruel command. Those who remained loyal to Arthas joined him and began the Culling of Stratholme. Arthas sought vengeance upon Mal'Ganis, but the demon slipped away to the frozen land of Northrend.

While leading his forces in pursuit of Mal'Ganis, Arthas came upon his former mentor Muradin searching for a powerful blade called Frostmourne. When the sword was found, Muradin read its inscription and warned the prince that the weapon was cursed. But Arthas believed that the blade would give him the power to save his people. When the weapon broke free, a shard of ice struck Muradin down. Heeding the call of Frostmourne, Arthas claimed the sword and left Muradin for dead. With Frostmourne in hand, Arthas confronted Mal'Ganis, who told him the voice he was now hearing was that of the Lich King, Ner'zhul. Obeying his new master, Arthas slew the dreadlord and abandoned his troops as he pushed deeper into the frozen north.

When Arthas returned to Lordaeron, the kingdom rejoiced at the homecoming of its beloved prince. But that joy turned to ashes when Arthas entered the throne room and ran the accursed blade through his father's heart. Arthas scourged the land in the name of the Lich King Ner'zhul. To reach the throne of his master, Arthas had to face Illidan Stormrage. After a grueling battle, the victorious Arthas ascended to the Frozen Throne. He drove his blade through the ice, releasing the spirit of Ner'zhul from its icy prison. The two beings merged into one and became the true Lich King. Should he rise again from the frozen north, all of Azeroth will face his wrath.
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

]],

	["wow_intro_mop"] = [[
00:00:07:22 - 00:00:09:11
To ask why we fight…

00:00:10:09 - 00:00:12:18
… is to ask why the leaves fall.

00:00:15:03 - 00:00:16:13
It is in their nature.

00:00:18:17 - 00:00:22:07
Perhaps, there is a better question.

00:03:07:01 - 00:03:08:15
Why do we fight?

00:03:08:16 - 00:03:12:09
To protect Home, and Family…

00:03:12:10 - 00:03:17:06
To preserve Balance, and bring Harmony

00:03:21:23 - 00:03:26:01
For my kind, the true question is:

00:03:27:15 - 00:03:31:05
What is worth fighting for?

]],

	["wow_cgi_bu"] = [[

0:16
[Music]

0:25
So... It was a bear?

0:30
In a HAT!

0:48
[Music]

]],

	["mop_gse"] = [[
00:00:26:14 - 00:00:28:03
Aysa?

00:00:34:11 - 00:00:36:06
He's dying...

00:00:36:07 - 00:00:40:15
His wounds can be healed...

00:00:41:20 - 00:00:48:10
I hope you can forgive yourself for what you have done to him.
]],

	["mop_wra"] = [[
00:00:02:20 - 00:00:06:08
We've made a thorough inspection of the wreckage, Your Majesty.

00:00:06:10 - 00:00:10:00
There is no sign of Admiral Taylor or his ship.

00:00:10:01 - 00:00:12:00
Two hundred ships at my disposal,

00:00:12:01 - 00:00:16:03
yet the one carrying my SON goes missing!

00:00:16:03 - 00:00:19:27
What of their last message? Show me whatever you have!

00:00:19:28 - 00:00:25:00
...we have been drawn off course...Horde airfleet...many casualties...

00:00:25:01 - 00:00:30:15
shipwrecked...on an uncharted isle...but the White Pawn is accounted for.

00:00:30:16 - 00:00:33:15
Repeat: The White Pawn is safe.

00:00:33:16 - 00:00:35:00
Anduin...

00:00:35:01 - 00:00:39:12
...surprise attack! Requesting immediate--If anyone's receiving--

00:00:40:00 - 00:00:42:25
Sir, the Seventh Fleet has already been dispatched,

00:00:42:26 - 00:00:44:05
but it could take weeks before it--

00:00:44:06 - 00:00:45:25
There's no time to waste!

00:00:45:26 - 00:00:50:08
We'll send a small, elite force to secure this new land

00:00:50:09 - 00:00:53:12
and bring back my SON!

]],

	["mop_wrh"] = [[
00:00:03:00 - 00:00:06:07
I am pleased to report that the battle at sea goes well, Warchief.

00:00:07:10 - 00:00:12:10
Our forces report decisive victories off the coast of Tanaris and Tol Barad.

00:00:13:05 - 00:00:18:25
Alliance blood spills. This pleases me, General.

00:00:19:10 - 00:00:24:06
There is more... I've received word that our southern fleet engaged an Alliance envoy.

00:00:25:10 - 00:00:28:01
We chased the royal flagship until it ran aground...

00:00:28:05 - 00:00:30:15
Aground? Where?!

00:00:31:00 - 00:00:36:29
Apparently, they found a massive uncharted landmass, shrouded, by dense mists...

00:00:37:05 - 00:00:41:15
And you let the ALLIANCE get there first?!  Redirect the invasion fleet!

00:00:42:16 - 00:00:45:07
General, YOU and your best veterans will pave our way...

00:00:46:00 - 00:00:50:07
STORM the shore and PAINT THIS NEW CONTINENT RED!

]],

	["mop_jade"] = [[
00:00:36:23 - 00:00:46:10
A message must lie within... what fate did the emperor foresee?

]],


-- pulled from https://www.reddit.com/r/wow/comments/1khk1d/full_transcript_for_the_burdens_of_shaohao_series/
	["wow_bos_ptv"] = [[
Ten thousand years ago, all the continents of Azeroth were as one. It is said that all the rivers in the world flowed to one magical place: This was the ancient empire of Pandaria, nestled in the most fertile of river valleys at the far end of the world.

Behold, the last Emperor on the day of his coronation. His name was Shaohao.

Young Shaohao was born to be Emperor, and wanted for nothing. The wealth of the great Pandaren empire was his to command. All Pandaren Emperors begin their reign by consulting with the great Jinyu elders. It was said that the Jinyu could talk to the rivers, that they could hear whispers of the future in the rippling waves. The great Waterspeaker closed his eyes and listened to the rivers. He listened for the Emperor's long life and prosperous realm, but he heard something else entirely. The wise old Jinyu saw a faraway land, a kingdom of Elves grown bold in their arrogance. He saw a pit of fire, a great maw opening upon countless horrors. Numberless demons were about to pour forth onto Azeroth, rending the land, corrupting all they touched. Even if the demons were defeated, the world would be forever broken, the continents forever shattered.

Emperor Shaohao watched in disbelief as the Jinyu Waterspeaker reeled from the terror of his vision. "What did you see?", Shaohao asked. "Long life... prosperous realm?"

But the future held neither for the last Emperor of the Pandaren. No, young Shaohao could not rest on the riches of his Empire. If he was to save his land, and his people, he would be called to do something great. He would embark on an epic journey, he would sacrifice all that he was.

This is his story.
]],

	["wow_bos_pod"] = [[
The horrible vision of the Sundering weighed heavily on Emperor Shaohao. Cold and alone, he ascended Mount Neverest, seeking wisdom from the Jade Serpent.

"What troubles you, young Emperor?" The spirit of wisdom asked.

Shaohao replied "Countless demons will soon pour over Azeroth! What must I do to save my kingdom?"

The Jade Serpent answered: "Seek out the heart of Pandaria, for the answer lies within."

"But how can I find it?" the Emperor protested.

"Your emotions cloud you," said the Serpent. "Free yourself of these burdens, let the land be your teacher."

But the Emperor did not understand.

He sulked back to his home in the Jade Forest. As he travelled, he commiserated with his old friend, the Monkey King. "I was to have a long life! A prosperous realm!" the Emperor cried. "I cannot do this!"

"Relax," said the Monkey King. "We are in this together!" As he spoke, the four winds began to howl. A great gust blew the Monkey King away!

The Monkey King laughed, and called out above the roaring storm. "Sorry! You can't fight fate!"

The Emperor cried out for his friend. "No, wait! I cannot do this alone!"

And in that moment, all of Shaohao's uncertainty was manifest in a terrible dark energy: The Sha of Doubt. The more the Emperor struggled, the more he weakened - the Sha would surely overtake him!

Then, Shaohao remembered the wisdom of the Jade Serpent, and he looked to the land for answers. Nearby, the bamboo of the Jade Forest was also threatened: the reeds that stood rigid against the gale broke under its force. But the reeds that bent with the wind endured the storm, and prospered in the rain. Shaohao realised the lesson of the reed, and when he turned his back to the Sha, suddenly all his doubts vanished. He knew he could be more than just Emperor.

The Four Winds carried the laughing Monkey King over the valley, and through the Wilds. The Emperor's faith led him onward, to save his friend - and to stop the terrible Sundering the Waterspeaker had foreseen. 
]],

	["wow_bos_ptd"] = [[
Emperor Shaohao, free of doubt, pursued his friend the Monkey King. With the wind at his back, Shaohao ran, but in his haste, the Emperor stumbled into the dense and untamed swamps of the Krasarang Wilds.

"No!" The Emperor cried out. He fought to free himself, but only sank further. The more the Emperor worried, the deeper he sank. His worries had taken form: The Sha of Despair.

Shaohao cried out, "Help!"

Far above, the majestic Red Crane of Hope soared. "Why do you struggle so?" the Crane asked.

"I have lost my friend, my kingdom!" Shaohao cried. "It is hopeless!"

"Your friend is not lost," the Crane replied. "You are."

Again, Shaohao looked to Pandaria for the answer. He saw the great tree growing in the middle of the swamp. The branches reached for the heavens, but its roots stretched deep into the Earth. Shaohao's feet found purchase - with hope in his heart, the Emperor reached upward, and the grip of despair loosened.

"I must never forget who I am," he said. "I am the Emperor, and I will save this land."
]],

	["wow_bos_ptf"] = [[
Shaohao could hear the Monkey King's laughter on the wind, but it came from the West, beyond the Serpent's Spine wall. This was the land of the Mantid: Mortal enemy of all Pandaren.

"I cannot do this!" Shaohao decided. Trembling, the Emperor turned to leave.

"Where are you going?" asked a voice.

"I'm afraid to go on," said the Emperor. Looking into the Wastes, he saw a great, black Ox.

"Just follow your feet," the black Ox said. "They will know the way."

Shaohao descended the wall, and crept through the strange realm. To the Emperor, it was a waking nightmare, but his feet led the way. Soon, he heard, a dreadful sound. Three vile Mantid warriors argued how they would split up and devour their prize, the Monkey King!

Shaohao was paralysed with terror. The insidious Sha of Fear held him in place. The voice of the Ox came to Shaohao, saying "You must not let your fear control you, my Emperor, you must control your fear!"

Shaohao looked once again to the land for answers. The great Kypari trees of the Townlong Steppes were legendary for their sap. In one bead of amber, Shaohao found his answer.

"I will not be paralysed by fear!" the Emperor proclaimed. Shaohao hurled his weight against the nearest tree, and giant globs of sap reigned down from above! And now it was the Mantid who were held fast, as they struggled against the sap. The Emperor had saved his friend.

As they fled, the Monkey King was overwhelmed by doubt. "Emperor, we cannot do this alone!" he cried. "You should create an army to crush the Mantid once and for all!"

Free of his doubts, and master of his fears, the Emperor was more confident than ever. "No," said Shaohao. "The storm that burns the sky comes for the Mantid as well. We need an army to crush a Legion."
]],

	["wow_bos_pfa"] = [[
The Last Emperor of Pandaria faced a terrible fortune, a burning legion set to tear the world asunder. He had cast away his doubt, despair and fear. Now, confidence brimming, he would build an army.

High atop the peaks of Kun-Lai summit, the one hundred greatest warriors of Pandaria perfected their arts under the watchful eye of the White Tiger, the spirit of strength.

"I need an army!" Shaohao announced. "I have come for my warriors!"

But the White Tiger recognised a great darkness within the brash Emperor.

"Why do you fight?" the Tiger asked. Shaohao bristled.

"To destroy demon hordes! To crush those who oppose me!"

"No. That is no reason to fight," the Tiger said. "You are indeed fearless, but still, you are burdened." The Emperor scoffed, so the White Tiger issued a challenge.

"Take this staff, and if you can touch any one of my Warriors, they are yours to command."

Spurred on by the howls of the Monkey King, the Emperor spun about, thrusting and swinging the staff - but the warriors easily dodged his every blow. Furious, Shaohao roared. The sum of all his rage, the Sha of Anger, burst forth!

The Emperor fumed, and broke the staff over his knee. Violence and hatred erupted.

"You see now why you are not ready to lead?" the White Tiger proclaimed. "Your anger does not empower you: It makes you weak."

Defenceless, Shaohao faced the darkness he had created. As one, the Sha struck out...

But, as the smoke cleared, the Emperor stood unharmed. The shape of a mighty warrior lay broken at his feet. A warrior who had paid the ultimate price to save his Emperor.

Shaohao's heart swelled, as he knelt humbly before the White Tiger. "My rage exacted a heavy toll," the Emperor said. "A single sacrifice has shown me the power of fellowship, of love... of peace."

The White Tiger nodded. "Again, I ask: Why do you fight?"

"For home, and family." Shaohao replied. "For the people I protect. For them, I would give my final breath. Thank you, White Tiger."

Relieved at last of all his burdens, the Emperor rose. "Come, Monkey King! We must go to the heart of Pandaria, before all is lost!"

As the Emperor and his friend set out, the skies grew black - for the time of the Sundering had come.
]],

	["wow_bos_pts"] = [[
And so Shaohao came to the heart of the land, the sacred Vale within the centre of his empire. Purged of all his burdens, the Emperor radiated with enlightenment. Inside the Vale, his people huddled for shelter. They knew that the end of the world had come, and they cried out for the Emperor to save them.

"People of Pandaria!" Shaohao declared, "Stay calm. Focus your minds, and together we will make it through this."

But his people did not understand. As Shaohao gazed upon their faces, he saw the burdens that he had overcome. He recognised Doubt and Despair. He saw his people frozen in Fear, or trembling in Anger. And he knew that they had little time to learn what he had learned.

"Time... my people need Time!" The Emperor realised. And in that moment, the Emperor recalled the lesson of the Jade Serpent:

"Seek out the heart of Pandaria, for the Answer lies within."

As Shaohao reflected on his journey, he looked to the land, and saw a single blossom in the wind. "No matter the burdens I faced," he thought, "The land provided guidance. But the truest answers always came from within." And then, it became clear...

"I was to have a long life, and a prosperous realm. But I am more than just Emperor. I now know what I must do... for I am the Heart of Pandaria."

"People of Pandaria!" Shaohao proclaimed. "You are not yet ready to face the storm that comes for you, and I cannot stop it. But you will weather this storm, and many more - for I will give you the time to learn the lessons that I have learned."

And then, the last Emperor of Pandaria sacrificed all that he was, and all that he would be, and gave his final breath to become one with the land. A dense mist surrounded and protected his empire, and while the rest of the world broke apart in the fury of the Sundering, Pandaria set itself free. Hidden by the Emperor's breath, it drifted out to sea like a blossom on the wind.

The trees in the Vale have never stopped blossoming, and in time, we Pandaren learned to live as our Emperor lived. His lessons endured in the temples of his land. And from the snowy peaks of Kun-Lai Summit, he watches over us - and it is said, that if we listen very closely, he speaks to us still... through the Mists.

These are the Emperor's gifts to us. And this is Pandaria!
]],

	["oro_horde"] = [[
00:00:05:14 - 00:00:09:26
You disappoint me, Garrosh.

00:00:11:19 - 00:00:17:10
You are not worthy of your father’s legacy.

00:00:21:02 - 00:00:24:29
His punishment is not for you alone to decide.

00:00:25:13 - 00:00:28:22
I won’t let you take him.

00:00:28:29 - 00:00:33:06
We have all suffered from his atrocities.

00:00:33:18 - 00:00:37:16
My people, more than any other.

00:00:38:00 - 00:00:42:03
Let him stand trial in Pandaria.

00:00:42:11 - 00:00:46:26
There, we will mete out justice for all.

00:00:57:02 - 00:01:02:10
The Horde needs its true Warchief now, more than ever.

00:01:03:02 - 00:01:09:28
Yes, but It was you that held the Horde together during this madness.

00:01:10:09 - 00:01:14:20
It was you that protected our honor.

00:01:15:07 - 00:01:23:26
From this day forward, Vol’jin - If you lead, I will follow.

00:01:25:02 - 00:01:28:02
I am not worthy…

00:01:34:10 - 00:01:37:11
But I will give my all.

00:01:38:01 - 00:01:40:02
For the Horde.

00:01:42:15 - 00:01:45:19
I will speak to your Warchief!

00:01:51:11 - 00:01:54:10
I speak for the Horde.

00:01:59:16 - 00:02:01:03
Very well.

00:02:01:18 - 00:02:05:13
The Horde has committed heinous crimes, Vol’jin.

00:02:10:28 - 00:02:15:10
But some among you fought against Garrosh’s tyranny.

00:02:16:01 - 00:02:20:25
For that, I am willing to end this bloodshed.

00:02:21:15 - 00:02:23:15
But know this…

00:02:24:09 - 00:02:29:19
If your Horde fails to uphold honor, as Garrosh did…

00:02:32:05 - 00:02:34:25
We will end you.

]],

	["oro_alliance"] = [[
00:00:05:14 - 00:00:09:26
You disappoint me, Garrosh.

00:00:11:19 - 00:00:17:10
You are not worthy of your father’s legacy.

00:00:21:02 - 00:00:24:29
His punishment is not for you alone to decide.

00:00:25:13 - 00:00:28:22
I won’t let you take him.

00:00:28:29 - 00:00:33:06
We have all suffered from his atrocities.

00:00:33:18 - 00:00:37:16
My people, more than any other.

00:00:38:00 - 00:00:42:03
Let him stand trial in Pandaria.

00:00:42:11 - 00:00:46:26
There, we will mete out justice for all.

00:00:56:05 - 00:00:58:15
Ugh … Look at them.

00:00:59:03 - 00:01:04:25
Already they plot against us. Seize this moment, Varian.
 
00:01:05:11 - 00:01:07:25
Dismantle the Horde.

00:01:08:24 - 00:01:10:02
Guardsmen!

00:01:14:23 - 00:01:17:25
Father – what are you doing?

00:01:18:15 - 00:01:21:02
What a king must do.

00:01:21:25 - 00:01:24:29
I will speak to your Warchief!

00:01:30:21 - 00:01:33:20
I speak for the Horde.

00:01:38:28 - 00:01:40:14
Very well.

00:01:41:01 - 00:01:44:24
The Horde has committed heinous crimes, Vol’jin.

00:01:50:08 - 00:01:54:20
But some among you fought against Garrosh’s tyranny.

00:01:55:11 - 00:02:00:05
For that, I am willing to end this bloodshed.

00:02:00:26 - 00:02:02:25
But know this…

00:02:03:19 - 00:02:08:29
If your Horde fails to uphold honor, as Garrosh did…

00:02:09:10 - 00:02:13:20
We will end you.
]],

	["wod_mainintro"] = [[
00:00:37:10 - 00:00:40:05
Drink, Hellscream.

00:00:41:10 - 00:00:44:06
Claim your destiny.

00:00:44:27 - 00:00:49:07
You will all be conquerors.

00:00:51:13 - 00:00:57:30
And what, Gul'dan, must we give in return?

00:01:01:08 - 00:01:03:18
Everything.

00:01:14:17 - 00:01:20:06
You would reject this gift?

00:01:32:01 - 00:01:36:29
And did you bring these mongrels here

00:01:39:07 - 00:01:44:07
just to watch you DIE?

00:01:56:25 - 00:01:57:28
NOW!

00:03:10:22 - 00:03:15:19
This was not our destiny.

00:03:17:11 - 00:03:19:14
Times change.

00:03:37:29 - 00:03:41:18
We will never be slaves!

00:03:50:01 - 00:03:54:24
But we WILL be conquerors.
]],

	["wow_low_kar"] = [[
Maraad: King Varian. The hour grows late. You must sign the declaration of war.
Varian: I was just a child when my father rushed to confront this same evil. He didn't understand these... warlords at all. That mistake cost him his life, and brought this kingdom to ruin.
Maraad: You are not your father.
Varian: I know. But how can I succeed, where he failed?
Maraad: You can start by trusting my counsel. I have faced them before.
Varian: On Draenor... you were there, all those years ago.
Maraad: Yes. Believe me, they are not invincible.
Varian: Then tell me of them, Maraad. Tell me everything.
Maraad: Very well.
Maraad: Kargath had no clan. He was raised a slave. The ogres' cruelty was intolerable. So he sought a way out. The arena! One hundred orc lives was the prize for freedom. Fight. Kill. Salute! Kargath was unstoppable, and the day of his final fight had come. One last kill, and it was over. One hundred lives. Kargath had earned his reward, like every champion before him. Buried beneath the arena. The promise of freedom  —  nothing but a lie.
Maraad: But Kargath would be chained no longer.
Kargath: Take your vengeance.
Maraad: Bound by vengeance, their name would be spoken in fear!
Maraad: This was the birth of the Shattered Hand.
]],

	["wow_low_gro"] = [[
Maraad: I understand your hesitation, my king. This mission will take great resolve. There will be lives lost.
Varian: There are always lives lost. But marching our forces blindly into Draenor...
Maraad: ... poses unthinkable danger, yes. But you must have the fortitude to face whatever awaits us on the other side. I assure you, our enemy's will is unwavering.
Maraad: Let me tell you of their leader. A warlord whose defiance in the face of death became legend.
Ogre warlord: Grommash. Mighty warrior. Brought to heel at last. You are weak. Say it!
Ogre warlord: Is that all? To think you once struck fear into my people.
Maraad: Grommash had begun leading raids deeper and deeper into ogre lands. He and his clan, the Warsong, were insatiable and relentless. It was only a matter of time until the ogres retaliated. Among the victims of their retribution was Grommash's mate, Golka.
Golka: I am done. Give me the warrior's death I deserve.
Grommash: No. You will not be broken. A true Warsong spits in the face of death.
Golka: Don't you see? It's too late! End it!
Grommash: So many of my warriors bent like weeds, and now you. You are a wolf... with no teeth.
Grommash: All of you!
Ogre warlord: Look at you. The days have not been kind. Say the word, and I will kill you quickly. I admire your spirit, but I will break it.
Maraad: Grommash knew the ogres could not have gotten far. He called upon his forces to hunt them down, but for many of the Warsong, the cost had already been too high.
Grommash: Bury your weak. I will show you what it means to be Warsong.
Maraad: Once again, Grommash struck deep into ogre lands. This time, however, the ogre warlord and his armies were waiting.
Ogre warlord: Your warriors. They begged for death. Your lands are mine. Your body is broken. You have nothing left! Say the word, and I will end your suffering. .
Ogre warlord: Yes...?
Maraad: He was certain that Grommash had given up, was ready to die. The body, afterall, had so grown so weak, had become so thin.
Ogre warlord: Say it.
Grommash (barely audible): This... wolf...
Ogre warlord: Say the word, and it's over.
Grommash: This... wolf... still has teeth.
Maraad: From that day forward, the Warsong rallied to the banner of Grommash Hellscream   —   the warlord with the iron will.
]],

	["wow_low_dur"] = [[
Maraad: You cannot hesitate my king. The Iron Horde must be stopped.
Varian: You speak only of their savagery, but surely they are not all monsters.
Maraad: There was one... Durotan. His clan prided itself on suppressing rage, for they knew that those who succumb to the beast within become their own greatest enemy.
The clan was named for its kinship with the snow white frostwolves. Together they hunted the mighty clefthoof.
Every winter, the clefthoof would migrate and the clan would follow. But one year, when durotan was very young,
Durotan: Mother, they're leaving. You've got to wake up!
Maraad: His mother, Gaia, had been bitten by a drift lurker. Those who suffered its bite fell into a deep sleep and few had ever awakened.
Ga'nar: We could do no more for her if we don't go, the entire clan starves. Or worse the Garn will be hungry.
Durotan: You want them to feed on our mother? Father wouldn't leave her Ga'nar, and neither will I.
Ga'nar: Father would know we can't carry our dead with us.
Durotan: She's not dead!
Ga'nar: Calm yourself brother! you know what your anger can lead to. While the others are gone I speak for the clan. We leave, now!
Durotan: I'm. Not. Going!

Maraad: Days passed. Durotan remembered the lessons his mother had taught him. And with the aid of Gaia's old wolf Stormfang, they survived.
Durotan: Mother winter is setting in. You have to wake up. Wake up.

Maraad: Orc can beast alike feared the Garn. Great black wolves. Among the most vicious and cunning predators on draenor.
Maraad: Durotan and Stormfang killed the lone wolf, but durotan knew that the Garn hunted in packs and with the setting of the sun, they would attack. he prepared to make his final stand.
Durotan: Mother, they're coming for us. You have to wake up.

Maraad: Outnumbered and surrounded, Durotan fought. He fought not just the Garn, but the rising tide of rage within him. Durotan was driven to the brink, and In the heat of battle, bloodlust claimed him. Anything that moved, he killed.
Gaia: Durotan... Is it you? Durotan, Durotan?
Durotan: Mother... what? No... no...
Gaia: I can see that you shed blood to protect me.
but I would rather have died than know my son had become a
beast.

Maraad: Durotan wore Stormfang's fur until the end of his days - a constant reminder of the old wolf's courage and loyalty. But, a reminder also that even the most noble Of Orcs may fall prey to the savagery within.
]],

	["wow_low_kil"] = [[
Maraad: Taking the fight to our enemy may be the only option left to stop history from repeating. This very city was nearly burned to the ground by the same warlords we face.
Varian: Don't lecture me Maraad. I was there. I lived it. The only thing that got my people through those dark days was their faith in the Light.
M: Faith is a powerful weapon.
V: So I'm told. the Alliance has the Light from which to draw its strength. What steels this Iron Horde in its darkest hours?
M: One clan, the Bleeding Hollow, finds truth in the surety of their deaths. They are led by an orc
named Kilrogg.

M: Kilrogg's clan once ruled over the jungles. Until the Arakkoa came.
Maraad: to survive, the clan went into hiding. living each day consumed by fear. their Chieftain even forbade them to stray beyond the borders of their forest refuge.
Maraad: For years, disease had eaten away at the once-mighty warrior's flesh, and as he faded, so too did the clan's hope for the future.
Kilrogg: Father, one day the stream will dry up.
Father: Then we will find a way to carry on.
Kilrogg: Like this?
Look at us. We were never meant to live this way, jumping every time the wind blows.
Father: Every chieftain must make hard choices for the good of the clan.
Kilrogg: Is this the death you saw then?
KK: No. This is not the death I saw, but perhaps it is time you finally saw your own. Go, face your destiny.

Maraad: Kilrogg was bound by the legacy of his father, and ruled by ancient tradition. Those who would one day become chieftain perform the most sacred of rituals. They would sacrifice an eye for a vision of their own death.
Maraad: Sometimes the vision would show much more. Kilrogg saw his clan not as they were, but as they could be. Crushing their enemies in a tide of savage bloodlust, and Kilrogg was one of them - his determination unwavering. Even when death finally came for him, he did not fear what he saw... He welcomed it.

Father: So tell me of your vision my son.
Kilrogg: I saw our clan, strong and proud. Victorious against our enemies, a glorious vision of the future.
Father: Why then, do you seem so troubled?
Kilrogg: Because you were not a part of it.
Kilrogg: You were right every chieftain must make hard choices. For the good of the clan
Father: At last... this, this is the death I saw.

]],

	["wow_low_mar"] = [[
Maraad: You now know their leaders. You know what forged them into the monstrosities they have become. Put your seal on that order, and I will be the first to answer the call.
Varian: Why are you so eager for this fight,
Maraad? For a paladin, you seem as bloodthirsty as the enemy.
Maraad: It is not blood I seek. When you look at me, what do you see?
Varian: I see a paragon, a champion of the Light.
Maraad: What you cannot see is the burden I carry each day.

Maraad: I was there during the assault on Shattrath City, our beloved dwelling of Light under siege by a relentless army of demon-corrupted orcs.
Maraad: I witnessed countless acts of brutality, unspeakable horrors from atop the wall.
Exarch: Maraad. Maraad! Maraad! Take the last group of refugees to safety. Go now.

Maraad: Yes,Exarch.

Maraad: I did as I was commanded. I gathered the refugees, led them away from battle. And then, I saw... him.
It was my charge to see the refugees to safety. Yet the horrors I have witnessed, the suffering. Despite all my vows, vengeance burned in my heart.

Maraad: Take the path through the tunnel. I'll rejoin you when I can.
Draenei: We have no weapons!
Maraad: The path is safe. The light will be with you. Now go.

Maraad: I will avenge the countless draenei who have perished!

Maraad: I struck out to find the refugees.
Maraad: My heart fell. The path had not been safe... The Light that I promised would be with them had forsaken them instead. Just as I had.

Maraad: I know I may not return. But if there is even the barest chance of preventing the atrocities I witnessed from happening again, then I offer myself gladly.

Varian: We are all haunted by the past, Maraad. Few of us ever get the opportunity to change it.

Varian: Summon our champions. Make ready for war. Azeroth needs its heroes now more than ever.

]],












};

local Descriptions = {
	["wow_intro"]    = "Seasons of War Cinematic Trailer",
	["logo"]         = "Ten Years of Warcraft Intro",
	["wow_intro_bc"] = "The Burning Crusade Cinematic Trailer",
	["wow_intro_lk"] = "Wrath of the Lich King Cinematic Trailer",
	["wow_wrathgate"]= "The Wrathgate",
};

for index, data in pairs(LK["LocalData"]["cinematics"]) do
	local key = data.name
	
	if Descriptions[key] then
		data.description = Descriptions[key]
	end

	if Subtitles[key] then
		data.subtitles = Subtitles[key]
	end
end

return end



if LOCALE == "esMX" then
	-- Spanish (Mexico) text data goes here

LK["LocalData"]["cinematics"] = {

};


return end

if LOCALE == "esES" then
	-- Spanish (Spain) text data goes here

LK["LocalData"]["cinematics"] = {

};


return end

if LOCALE == "deDE" then
	-- German text data go here

LK["LocalData"]["cinematics"] = {

};

return end

if LOCALE == "frFR" then
	-- French text data go here

LK["LocalData"]["cinematics"] = {

};

return end

if LOCALE == "itIT" then
	-- French text data go here

LK["LocalData"]["cinematics"] = {

};

return end

if LOCALE == "ptBR" then
	-- Brazilian Portuguese text data go here

LK["LocalData"]["cinematics"] = {

};

-- Note that the EU Portuguese WoW client also
-- uses the Brazilian Portuguese locale code.
return end

if LOCALE == "ruRU" then
	-- Russian text data go here

LK["LocalData"]["cinematics"] = {

};

return end

if LOCALE == "koKR" then
	-- Korean text data go here

LK["LocalData"]["cinematics"] = {

};

return end

if LOCALE == "zhCN" then
	-- Simplified Chinese text data go here

LK["LocalData"]["cinematics"] = {

};

return end

if LOCALE == "zhTW" then
	-- Traditional Chinese text data go here

LK["LocalData"]["cinematics"] = {

};

return end

