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
		["expansion"] = 4,
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
		["name"] = "shadowlands_901_ysr",
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
		["name"] = "shadowlands_901_asc",
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
		["name"] = "dragonflight_102_fdi",
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
		["name"] = "dragonflight_1025_ivp",
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

Maraad: Yes, Exarch.

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

	["wod_dpi"] = [[
00:00:07:01 - 00:00:08:24
This is our chance.

00:00:08:24 - 00:00:11:08
Storm the portal!
]],


	["wod_dpo"] = [[
00:00:24:29 - 00:00:28:16
Are you so eager to meet death?

00:00:28:16 - 00:00:33:22
Look there upon the countless faces of your demise.

00:00:33:22 - 00:00:41:14
Raise up, Iron Horde! bring your warchief their heads.
]],

	["wod_gar_horde_tier0-1"] = [[
00:00:02:29 - 00:00:06:20
Your heroic deeds have earned you this Frostwolf land.

00:00:07:18 - 00:00:11:17
It is from here that you will lead the Horde to victory,

00:00:12:06 - 00:00:14:09
Commander.
]],

	["wod_gar_horde_tier1-2"] = [[
00:00:02:26 - 00:00:09:16
I have seen you and your armies win many hard fought battles across Draenor.

00:00:09:24 - 00:00:14:29
We now face our greatest challenge, as we attempt to unite

00:00:15:06 - 00:00:18:21
against the Iron Horde.
]],
	["wod_gar_horde_tier2-3"] = [[
00:00:02:22 - 00:00:08:03
Hero, our trust in you was not misplaced.

00:00:08:05 - 00:00:15:05
You and the armies you command are now our greatest weapon against the Iron Horde.

00:00:16:09 - 00:00:21:10
Lead us to victory, General.
]],
	["wod_gar_alliance_tier0-1"] = [[
00:00:03:10 - 00:00:08:21
Through your selfless actions you have earned the respect of my people.

00:00:08:21 - 00:00:15:21
May have granted you this foothold confident that you will lead the Alliance to victory,

00:00:15:25 - 00:00:18:06
Commander.
]],
	["wod_gar_alliance_tier1-2"] = [[
00:00:02:08 - 00:00:05:04
You have inspired me, Commander.

00:00:05:26 - 00:00:11:26
I've seen you and your armies win many hard fought battles across Draenor.

00:00:12:09 - 00:00:15:12
We now face our greatest challenge

00:00:15:12 - 00:00:18:07
as we attempt to unite, 

00:00:18:10 - 00:00:21:18
against the Iron Horde.
]],
	["wod_gar_alliance_tier2-3"] = [[
00:00:02:29 - 00:00:07:03
Hero, our trust in you was not misplaced.

00:00:08:06 - 00:00:12:08
You and the armies you command are now our greatest weapon

00:00:12:09 - 00:00:14:10
against the Iron Horde.

00:00:15:06 - 00:00:19:08
Lead us to victory, General.
]],
	["wod_vel"] = [[
00:00:02:02 - 00:00:04:15
Behold...

00:00:04:15 - 00:00:08:27
The dark star falls now upon you.

00:00:09:05 - 00:00:12:30
The Iron Horde will prevail.

00:00:12:30 - 00:00:19:08
And all that stand against us will die.
]],
	["wod_fwv"] = [[
00:00:13:24 - 00:00:16:09
We are out of time.

00:00:17:21 - 00:00:20:05
FALL BACK!

00:00:21:20 - 00:00:22:26
Drek'Thar!

00:00:23:09 - 00:00:27:15
I just need another moment.

00:00:29:21 - 00:00:35:05
We will give Drek'Thar the time he needs

00:00:35:21 - 00:00:38:01
as brothers.

00:00:38:01 - 00:00:43:01
Your place is with our people.

00:00:43:06 - 00:00:47:28
Protect our family, chieftain.

00:01:18:25 - 00:01:23:02
LOK'TAR!
]],
	["wod_sra"] = [[
00:00:06:10 - 00:00:07:17
It's over.

00:00:07:17 - 00:00:09:23
No one could've survived that.

00:00:09:23 - 00:00:12:04
This vessel is set to blow we should get to safety.

00:00:12:04 - 00:00:16:08
Bring the cannon around we'll send both of these ships

00:00:16:14 - 00:00:18:27
to the bottom of the sea.

00:00:25:04 - 00:00:26:16
Maraad.

00:00:27:00 - 00:00:28:05
How?

00:00:28:05 - 00:00:35:09
In the light we are one.

00:00:45:06 - 00:00:52:17
I see now you never belonged with us, Durotan.

00:00:52:17 - 00:00:56:11
Our bond is iron

00:00:58:03 - 00:01:05:21
But you are so easily...broken.

00:01:11:01 - 00:01:14:11
What do you want, little girl?

00:01:15:12 - 00:01:17:13
Your head.

00:01:19:07 - 00:01:21:07
The cannon is in position.

00:01:21:07 - 00:01:23:06
On you command.

00:01:23:06 - 00:01:25:10
Prepare to fire.

00:01:25:10 - 00:01:29:26
Such arrogance, to believe

00:01:29:26 - 00:01:35:05
that you alone could defeat me.

00:01:42:10 - 00:01:44:09
Together...

00:01:52:02 - 00:01:53:24
Wait! They're alive!

00:01:53:24 - 00:01:55:09
I've got them.

00:01:58:13 - 00:02:01:20
You will all die!

00:02:01:27 - 00:02:02:17
Just you.
]],
	["wod_gvt"] = [[
00:00:21:08 - 00:00:25:25
You must answer for your crimes, Garrosh.

00:00:43:19 - 00:00:45:30
All I did

00:00:48:00 - 00:00:50:24
I did... for the Horde!

00:00:53:04 - 00:00:55:18
You failed the Horde.

00:01:04:08 - 00:01:07:23
You made me Warchief!

00:01:08:11 - 00:01:10:07
You left me

00:01:10:07 - 00:01:13:28
to pick up your pieces!

00:01:13:28 - 00:01:19:10
YOU... FAILED... ME!

00:01:25:15 - 00:01:31:21
You never had the strength of a true warrior.

00:01:31:25 - 00:01:36:16
I do not rely on strength alone, Garrosh.

00:01:36:19 - 00:01:40:28
My power is all around you.

00:01:50:29 - 00:01:54:07
THRALL!

00:01:54:12 - 00:01:58:16
You made me what I am.

00:01:59:09 - 00:02:04:13
No, you chose your own destiny.
]],
	["wod_gto"] = [[
00:00:09:18 - 00:00:13:09
How dare you show your face here, Warlock.

00:00:14:06 - 00:00:17:16
You promised conquest, Grommash...

00:00:17:25 - 00:00:21:15
yet brought these clans to ruin.

00:00:22:01 - 00:00:26:03
Your men have died for nothing!

00:00:26:06 - 00:00:28:10
My soldiers died with honor!

00:00:30:18 - 00:00:32:00
Did they?

00:00:32:15 - 00:00:34:24
And what about...

00:00:35:15 - 00:00:38:04
your son?

00:00:40:01 - 00:00:41:10
Garrosh...

00:00:42:12 - 00:00:45:07
my... son...

00:00:45:19 - 00:00:49:12
You have lost everything.

00:00:49:27 - 00:00:52:21
There is only one choice.

00:00:53:18 - 00:00:59:09
Drink, and fulfill your destiny.

00:01:01:09 - 00:01:04:04
Your poison...

00:01:04:07 - 00:01:06:15
would damn us all!

00:01:11:03 - 00:01:15:09
Your iron will is legend.

00:01:16:03 - 00:01:19:16
I will enjoy breaking you.

00:01:20:16 - 00:01:24:21
Who will be the first to accept this gift?

00:01:25:04 - 00:01:30:06
Power such as mine for any willing to serve.

00:01:30:24 - 00:01:32:00
Kilrogg...

00:01:33:13 - 00:01:35:19
You have seen your fate.

00:01:36:02 - 00:01:39:03
You know what must be done.

00:01:41:21 - 00:01:43:03
Kilrogg!

00:01:51:04 - 00:01:52:13
Yes...

00:01:53:15 - 00:01:56:12
I will build a new Horde.

00:01:57:06 - 00:02:01:25
I will forge you into an unstoppable weapon.

00:02:04:10 - 00:02:09:02
You will be the scourge of a hundred worlds.

00:02:09:28 - 00:02:14:21
The might of a Legion.

]],
	["wod_gar_shipyard_lj_h"] = [[
00:00:03:04 - 00:00:04:07
Commander.

00:00:04:25 - 00:00:09:13
The savage seas of Draenor are now yours to conquer.

00:00:11:09 - 00:00:16:08
The way lies open for our invasion of Tanaan.


]],
	["wod_gar_shipyard_lj_a"] = [[
00:00:03:11 - 00:00:04:25
Commander

00:00:04:29 - 00:00:10:14
You have brought the might of the Alliance to the seas of Draenor.

00:00:12:06 - 00:00:17:10
The way lies open for our invasion of Tanaan.


]],
	["wod_hfo"] = [[
00:00:05:19 - 00:00:07:29
Gul'dan!

00:00:13:18 - 00:00:16:14
You made a pact.

00:00:45:18 - 00:00:47:07
It's...done.

00:00:48:05 - 00:00:51:13
Gul'dan... failed.

00:00:52:13 - 00:00:56:15
Draenor is free!

00:01:14:08 - 00:01:17:15
You don't think it's over.

00:01:18:08 - 00:01:22:16
Gul'dan and the devils that command him,

00:01:22:28 - 00:01:26:09
are not so easily banished.

00:01:26:24 - 00:01:29:18
I fear this is only beginning.

00:01:30:21 - 00:01:33:04
If you ever need us

00:01:33:18 - 00:01:35:13
we will be here.

00:01:36:27 - 00:01:39:20
Until we meet again.

00:01:44:17 - 00:01:47:01
A great man once told me:

00:01:47:19 - 00:01:50:22
In the light, we are one.

00:01:51:01 - 00:01:52:26
The future is ours.

00:01:53:04 - 00:01:56:06
And we will see Draenor rebuilt

00:01:56:15 - 00:01:57:15
together.


]],
	["legion_intro"] = [[
00:00:05:23 - 00:00:07:08
My son...

00:00:07:27 - 00:00:12:05
a terrible darkness has returned to our world.

00:00:17:01 - 00:00:20:03
As before, it seeks to annihilate

00:00:20:03 - 00:00:22:19
everything that we hold dear.

00:00:23:14 - 00:00:29:08
I go to face it, knowing I may not return.

00:00:33:20 - 00:00:34:25
-They are coming!

00:00:34:26 - 00:00:36:19
-They are coming back!

00:00:47:00 - 00:00:50:01
All my life I have lived by the sword.

00:00:52:00 - 00:00:54:00
I have seen kingdoms burn

00:00:54:18 - 00:00:58:03
and watched brave heroes die in vain.

00:01:04:11 - 00:01:07:25
It has been difficult for me to trust

00:01:07:25 - 00:01:10:30
after losing so much.

00:01:17:23 - 00:01:20:07
But from you, I have learned

00:01:20:07 - 00:01:21:13
patience...

00:01:21:13 - 00:01:23:07
tolerance...

00:01:24:06 - 00:01:26:06
and faith.

00:01:45:18 - 00:01:47:14
Open fire!

00:02:59:14 - 00:03:00:30
Anduin...

00:03:01:17 - 00:03:04:12
I now believe as you do

00:03:06:08 - 00:03:10:03
that peace is the noblest aspiration

00:03:12:27 - 00:03:14:25
but to preserve it

00:03:14:25 - 00:03:18:15
you must be willing to fight!

00:03:31:13 - 00:03:34:05
For Azeroth!


]],
	["legion_hrb_g"] = [[
00:00:10:17 - 00:00:15:12
No one living has heard of the village of my birth

00:00:30:22 - 00:00:33:30
Gul’dan, you pathetic wretch!

00:00:34:18 - 00:00:37:23
Long have you refused your place in this clan

00:00:38:17 - 00:00:43:06
Now we rid ourselves of your filth once and for all.

00:00:43:08 - 00:00:44:18
Get it over with.

00:00:45:13 - 00:00:47:27
Even now you test me!

00:00:49:24 - 00:00:50:19
Enough!

00:00:53:23 - 00:00:58:06
I have tried to help him find his place among us

00:00:59:23 - 00:01:00:23
I failed.

00:01:02:05 - 00:01:03:05
Gul'dan

00:01:04:09 - 00:01:06:25
There is nothing more I can do for you

00:01:07:20 - 00:01:13:16
but know I have always believed there is greatness within you.

00:01:14:01 - 00:01:16:15
Seek out the Throne of the Elements.

00:01:16:29 - 00:01:21:20
Perhaps there you will find your destiny.

00:01:22:12 - 00:01:23:12
Bah!

00:01:24:22 - 00:01:25:24
Begone, cripple!

00:01:26:27 - 00:01:28:24
You are cast out!

00:01:29:09 - 00:01:35:06
In the wastes you will understand what it means to have no people!

00:01:52:05 - 00:01:55:11
From childhood, my deformity

00:01:55:13 - 00:01:59:02
made me a target for mockery and dismissal.

00:02:00:05 - 00:02:05:08
I knew I was meant for more than the clan would ever allow of me

00:02:05:24 - 00:02:08:24
and I hated them for it.

00:02:09:27 - 00:02:14:21
But after months, alone and starving

00:02:14:23 - 00:02:18:21
I began to consider that the safety and shelter of a clan

00:02:18:22 - 00:02:22:06
might be better than endless suffering.

00:02:36:02 - 00:02:40:05
The bitterness that had sustained me all my life

00:02:40:18 - 00:02:41:18
ate at me

00:02:42:03 - 00:02:44:17
until nothing was left.

00:02:52:01 - 00:02:57:28
In my weakness the words of the old shaman pierced the cold

00:02:58:03 - 00:03:02:04
Seek out the Throne of the Elements

00:03:07:14 - 00:03:08:14
There

00:03:09:09 - 00:03:11:02
humbled and broken

00:03:11:26 - 00:03:18:14
I offered myself in the service of whatever would end my anguish.

00:04:08:08 - 00:04:11:03
The Elements abandoned me

00:04:14:25 - 00:04:20:01
But in their absence, other voices whispered

00:04:20:02 - 00:04:22:05
Gul'dan

00:04:31:12 - 00:04:35:08
They had come to me to offer a gift

00:04:35:24 - 00:04:41:05
In return I would become the harbinger of their fury.

00:04:41:28 - 00:04:42:28
Gul’dan?

00:04:43:24 - 00:04:46:04
How dare you return here!

00:04:46:16 - 00:04:52:17
You may never rejoin your people!

00:04:53:17 - 00:04:55:18
My people?

00:04:56:23 - 00:05:00:27
I have no people!

00:05:08:14 - 00:05:14:05
I would never again grovel for a place in this world.

00:05:14:11 - 00:05:15:11
Instead

00:05:15:18 - 00:05:21:09
I would forge a world that would grovel before me!

00:05:24:00 - 00:05:25:04
Thank you.

00:05:27:09 - 00:05:30:25
I found my destiny.

00:05:41:25 - 00:05:46:19
No one living has heard of the village of my birth

00:05:48:18 - 00:05:52:02
and no one ever will.


]],
	["legion_hrb_k"] = [[
00:00:04:00 - 00:00:05:01
Once again

00:00:06:17 - 00:00:09:14
the Burning Legion has returned.

00:00:12:03 - 00:00:13:03
Stronger

00:00:13:08 - 00:00:15:18
more determined than ever before.

00:00:16:04 - 00:00:20:18
I venture to Karazhan on a mission of desperation.

00:00:43:15 - 00:00:44:15
Show yourself!

00:00:46:28 - 00:00:48:29
My apprentice returns.

00:00:49:19 - 00:00:52:03
It is good to see you again, Khadgar.

00:00:53:15 - 00:00:54:15
Medivh?

00:00:55:06 - 00:00:56:06
How?

00:00:56:27 - 00:01:00:07
My spirit is bound to this tower.

00:01:01:02 - 00:01:02:02
Yes of course.

00:01:02:21 - 00:01:03:21
Medivh

00:01:04:00 - 00:01:05:01
There is so much I ...

00:01:05:15 - 00:01:07:15
You look terrible, old friend.

00:01:07:15 - 00:01:08:26
Why have you come here?

00:01:09:24 - 00:01:12:18
The Burning Legion invades again.

00:01:13:07 - 00:01:16:07
I come seeking the knowledge that you kept here

00:01:16:17 - 00:01:19:18
anything that can help me stand against them.

00:01:20:20 - 00:01:22:19
Defeating the Legion this time

00:01:22:20 - 00:01:26:15
will take more than some spell, I’m afraid.

00:01:28:25 - 00:01:30:22
You came seeking knowledge.

00:01:31:03 - 00:01:33:11
What you need is a weapon.

00:01:34:05 - 00:01:35:12
I don’t understand.

00:01:35:12 - 00:01:38:28
You defeated me when I was consumed by fel madness

00:01:39:08 - 00:01:42:04
but you never took the next step toward your destiny.

00:01:42:27 - 00:01:46:09
It is time Azeroth had a Guardian once again.

00:01:46:21 - 00:01:47:21
A Guardian?

00:01:48:18 - 00:01:50:28
After your failings it was decided

00:01:50:29 - 00:01:54:15
that none could resist the temptation of such power!

00:01:54:29 - 00:01:57:21
We don’t need a Guardian, Medivh.

00:01:58:15 - 00:02:00:21
Then I ask again.

00:02:01:02 - 00:02:02:13
Why are you here?

00:02:02:25 - 00:02:04:03
If not a Guardian

00:02:04:07 - 00:02:05:06
if not you

00:02:06:03 - 00:02:08:25
then who can stop the approaching storm?

00:02:09:27 - 00:02:11:29
If you cannot embrace your fate

00:02:14:03 - 00:02:16:00
then all you have accomplished

00:02:16:27 - 00:02:18:12
all you have sacrificed

00:02:20:03 - 00:02:21:18
will have been for nothing.

00:02:27:19 - 00:02:29:15
Even if I said yes

00:02:30:03 - 00:02:34:12
None now remain to bestow the powers of a Guardian upon me.

00:02:35:01 - 00:02:36:01
I remain

00:02:39:26 - 00:02:41:25
I knew this day would come.

00:02:42:20 - 00:02:43:28
Before my death

00:02:44:09 - 00:02:47:29
I imbued this tome with an echo of my essence.

00:02:48:26 - 00:02:49:20
Open it.

00:02:50:06 - 00:02:52:23
Absorb its energies as your own.

00:02:55:03 - 00:02:56:07
No I can not.

00:02:57:22 - 00:02:58:18
I should not

00:02:58:19 - 00:03:02:21
The fate of Azeroth rests in your hands, Khadgar!

00:03:03:25 - 00:03:05:14
Accept your desires!

00:03:06:22 - 00:03:10:01
Show the Legion the true might of a Guardian!

00:03:11:25 - 00:03:12:25
Be honest

00:03:13:08 - 00:03:14:08
with yourself

00:03:14:12 - 00:03:15:12
if not with me.

00:03:23:08 - 00:03:26:09
You know you are destined for this.

00:03:30:06 - 00:03:32:00
Oh it is true.

00:03:32:29 - 00:03:37:14
I have thought about becoming the Guardian every day.

00:03:37:21 - 00:03:40:10
Even now I desire it.

00:03:41:29 - 00:03:43:27
I’ve yearned for the Legion

00:03:43:27 - 00:03:48:17
to cringe before the fury I would unleash.

00:03:49:12 - 00:03:52:27
and that is why I can never accept your offer.

00:04:05:18 - 00:04:07:24
Your will is strong.

00:04:08:01 - 00:04:10:21
My brethren were right.

00:04:11:03 - 00:04:14:01
You would have served the Legion well.

00:04:14:09 - 00:04:17:07
I will never be the Legion's pawn!

00:04:17:21 - 00:04:21:06
And this tower will not be its den!

00:04:32:03 - 00:04:34:24
I came to Karazhan seeking knowledge.

00:04:35:27 - 00:04:38:01
What I found was a reminder

00:04:39:15 - 00:04:40:29
that no single person

00:04:41:08 - 00:04:42:21
not even a Guardian

00:04:43:07 - 00:04:46:04
can stand against the Legion alone.

00:04:47:28 - 00:04:48:29
As before

00:04:49:16 - 00:04:51:13
we must band together

00:04:52:04 - 00:04:52:28
united

00:04:53:24 - 00:04:54:24
for Azeroth!
]],
	["legion_hrb_i"] = [[
00:00:06:20 - 00:00:09:29
You were not prepared.

00:00:14:10 - 00:00:17:05
The enemy came into our world

00:00:17:25 - 00:00:22:07
their only desire to extinguish all life.

00:00:22:28 - 00:00:25:23
They slaughtered our loved ones.

00:00:27:21 - 00:00:29:27
They razed our homes

00:00:30:08 - 00:00:31:04
our cities

00:00:31:04 - 00:00:33:17
and our sacred places.

00:00:34:14 - 00:00:36:14
You tried to stop them

00:00:37:02 - 00:00:38:23
and you failed.

00:00:40:19 - 00:00:43:09
And so you came to me

00:00:43:26 - 00:00:48:03
nothing remaining of you but rage and determination.

00:00:49:07 - 00:00:52:25
And you learned that the things that once tormented you

00:00:53:08 - 00:00:54:23
 could give you power.

00:00:55:18 - 00:00:57:08
Now you see

00:00:57:27 - 00:01:01:02
that there is no sacrifice too great

00:01:01:02 - 00:01:05:02
if it brings an end to the Burning Legion.

00:01:08:07 - 00:01:09:07
But

00:01:10:27 - 00:01:11:23
Lord Illidan

00:01:13:25 - 00:01:16:07
demonic energies course through our veins.

00:01:16:23 - 00:01:18:25
They gnaw at our every thought.

00:01:19:24 - 00:01:23:07
What makes us any different from the monsters we fight?

00:01:23:27 - 00:01:25:18
You question the master?

00:01:37:29 - 00:01:41:19
We will not sit idly like those on Azeroth

00:01:41:19 - 00:01:45:05
waiting to become the demons' prey.

00:01:45:16 - 00:01:50:06
We will take this war to the Legion's worlds

00:01:50:15 - 00:01:53:19
and prey upon them!

00:02:09:22 - 00:02:11:06
Ah

00:02:11:11 - 00:02:13:27
Demon Hunters.

00:02:13:29 - 00:02:20:05
You dare attack the Doom Lord Azgoth, in his own domain?

00:02:36:29 - 00:02:39:17
Your mission has failed.

00:02:39:21 - 00:02:42:26
Your cause dies with him!

00:02:52:13 - 00:02:56:19
You smell more of demon than hunter.

00:02:58:14 - 00:03:01:18
You would serve us well.

00:03:02:15 - 00:03:03:15
Never!

00:03:19:24 - 00:03:20:15
You

00:03:21:14 - 00:03:25:04
wish to know the difference between the demons and us?

00:03:26:02 - 00:03:30:27
They will stop at nothing to destroy our world.

00:03:31:04 - 00:03:35:16
And we will sacrifice everything to save it.

00:03:44:14 - 00:03:47:09
The Legion will know of this victory

00:03:47:23 - 00:03:49:25
and they will fear you

00:03:50:07 - 00:03:52:01
my Illidari.

00:03:53:12 - 00:03:54:12
Now

00:03:55:08 - 00:03:58:21
you are prepared!


]],
	["legion_dh1"] = [[
00:00:02:12 - 00:00:07:09
[FORCE SHOW]
Outland: Years Ago

00:00:07:13 - 00:00:09:01
Illidari

00:00:12:17 - 00:00:15:28
My Demon Hunters

00:00:17:14 - 00:00:21:08
With countless worlds burning in the Legion’s wake

00:00:21:19 - 00:00:24:18
you answered the call

00:00:25:14 - 00:00:27:06
Yet these mortals in their

00:00:27:20 - 00:00:28:26
ignorance

00:00:29:08 - 00:00:32:30
have come to destroy their own salvation.

00:00:34:05 - 00:00:35:25
Our time is short.

00:00:36:22 - 00:00:40:12
I will deal with these intruders.

00:00:40:21 - 00:00:42:28
You must venture to Mardum

00:00:43:07 - 00:00:45:27
and retrieve the Sargerite keystone.

00:00:47:11 - 00:00:48:24
Now go.

00:00:49:06 - 00:00:50:08
But remember

00:00:50:24 - 00:00:52:14
should you fail

00:00:53:04 - 00:00:56:25
all worlds will burn.
]],
	["legion_dh2"] = [[
00:00:04:07 - 00:00:04:21
No!

00:00:05:19 - 00:00:07:15
Lord Illidan has fallen!

00:00:07:23 - 00:00:10:08
Illidari! Avenge the master!

00:00:16:06 - 00:00:19:04
You bear the mark of his corruption.

00:00:21:17 - 00:00:24:18
And so the demon’s blood within you

00:00:25:07 - 00:00:27:23
will be your prison.

00:00:34:20 - 00:00:36:06
Take them to the vault.

00:00:37:05 - 00:00:40:08
There they shall be with the betrayer

00:00:41:11 - 00:00:42:11
forever.

00:00:43:20 - 00:00:45:30
(Elvish)

00:00:48:09 - 00:00:53:28
[FORCE SHOW] 
Years Later ...

00:00:55:14 - 00:00:58:19
[FORCE SHOW] 
The Broken Isles

00:00:59:25 - 00:01:03:12
The time has come, Cordana

00:01:03:16 - 00:01:06:28
Prove your loyalty

00:01:12:03 - 00:01:14:13
(Elvish)

00:01:20:20 - 00:01:22:09
The Legion has broken the seal!

00:01:22:13 - 00:01:23:15
Quickly sisters!

00:01:23:20 - 00:01:24:24
Defend the Vault!

00:01:25:19 - 00:01:27:18
Lady Maiev! We need you!

00:01:28:05 - 00:01:31:11
There is something I must do first.

00:01:33:01 - 00:01:34:07
Illidari.

00:01:35:12 - 00:01:39:15
I’ve spent my entire life as
keeper of the wicked.

00:01:40:03 - 00:01:43:07
Thousands of years, my only solace

00:01:43:18 - 00:01:47:18
knowing the world is kept safe
from your kind.

00:01:48:01 - 00:01:52:09
But I would do anything to save Azeroth

00:01:55:01 - 00:01:58:21
Even if it means releasing you.

00:02:02:24 - 00:02:04:13
Will you help us

00:02:04:23 - 00:02:06:04
Demon Hunter?
]],
	["legion_bs_a"] = [[
00:00:08:26 - 00:00:09:28
Victory is ours!

00:00:10:08 - 00:00:11:08
Hold fast!

00:00:11:14 - 00:00:15:06
Mekkatorque! We finish this now. Call in the gunship!

00:00:15:21 - 00:00:16:26
Way ahead of you sir

00:00:16:28 - 00:00:19:05
transangulating our position right now.

00:00:21:15 - 00:00:22:09
Genn!

00:00:22:09 - 00:00:23:09
GENN!

00:00:23:25 - 00:00:24:25
My lord!

00:00:25:04 - 00:00:26:04
Push forward!

00:00:31:13 - 00:00:34:07
And get Windrunner’s archers to clear the skies!

00:00:43:22 - 00:00:44:26
No

00:00:45:02 - 00:00:46:02
She wouldn’t

00:00:47:01 - 00:00:47:29
I knew it!

00:00:48:04 - 00:00:50:02
I knew we couldn’t trust her!

00:01:00:17 - 00:01:03:09
Without the Horde we’ll be overrun!

00:01:03:20 - 00:01:04:26
We must retreat!

00:01:07:21 - 00:01:09:07
Get everyone to the gunship.

00:01:09:12 - 00:01:10:12
Everyone!

00:01:10:17 - 00:01:12:02
FALL BACK!

00:01:29:01 - 00:01:30:04
INCOMING!

00:01:30:18 - 00:01:32:01
Hard to port!

00:01:46:01 - 00:01:47:01
Varian!

00:01:47:11 - 00:01:48:21
Take my hand!

00:01:50:02 - 00:01:52:01
We can’t break free!

00:01:58:20 - 00:01:59:10
Varian!

00:02:00:13 - 00:02:01:13
VARIAN!

00:02:05:30 - 00:02:06:30
Take this

00:02:07:04 - 00:02:08:04
to my son.

00:02:21:10 - 00:02:22:24
Go go go!

00:03:14:05 - 00:03:17:02
You will be remembered

00:03:18:05 - 00:03:21:13
as the king who sacrificed his life

00:03:22:20 - 00:03:25:01
for nothing.

00:03:31:05 - 00:03:32:29
For the Alliance.


]],
	["legion_bs_h"] = [[
00:00:15:10 - 00:00:16:27
Dey’re comin’ from behind!

00:00:17:03 - 00:00:18:04
COVER DA FLANK!

00:00:19:03 - 00:00:19:29
Warchief!

00:00:35:04 - 00:00:37:13
Do not let da Horde

00:00:38:04 - 00:00:40:27
die dis day.

00:01:08:09 - 00:01:11:01
Without the Horde we’ll be overrun!

00:01:11:14 - 00:01:12:18
We must retreat!

00:01:15:15 - 00:01:16:30
Get everyone to the gunship.

00:01:17:06 - 00:01:18:03
Everyone!

00:01:18:11 - 00:01:19:20
FALL BACK!

00:01:36:24 - 00:01:38:05
INCOMING!

00:01:38:11 - 00:01:39:22
Hard to port!

00:01:53:24 - 00:01:54:24
Varian!

00:01:55:03 - 00:01:56:10
Take my hand!

15
00:01:57:26 - 00:01:59:29
We can’t break free!

00:02:06:11 - 00:02:06:30
Varian!

00:02:08:06 - 00:02:09:06
VARIAN!

00:02:13:25 - 00:02:14:25
Take this

00:02:14:27 - 00:02:15:27
to my son.

00:02:28:30 - 00:02:30:16
Go go go!

00:03:21:26 - 00:03:24:20
You will be remembered

00:03:25:29 - 00:03:29:07
as the king who sacrificed his life

00:03:30:12 - 00:03:32:24
for nothing.

00:03:38:27 - 00:03:40:16
For the Alliance.


]],
	["legion_org_vs"] = [[
00:00:12:28 - 00:00:14:20
Windrunner

00:00:15:29 - 00:00:19:05
Come forward

00:00:20:06 - 00:00:20:30
Warchief

00:00:22:02 - 00:00:26:01
Da Loa spirits say death

00:00:26:06 - 00:00:28:15
will claim me soon.

00:00:29:23 - 00:00:32:20
In the end, death claims us all

00:00:34:01 - 00:00:36:04
but the Horde will live on.

00:00:36:19 - 00:00:40:01
I have never trusted you.

00:00:41:19 - 00:00:44:07
Nor would I have ever imagined

00:00:44:29 - 00:00:47:04
in our darkest time

00:00:48:16 - 00:00:49:21
that you

00:00:50:12 - 00:00:53:13
would be da one to save us.

00:00:55:10 - 00:00:58:27
Da spirits have granted me clarity.

00:00:59:21 - 00:01:00:29
A vision

00:01:01:25 - 00:01:04:10
dey whisper a name

00:01:05:08 - 00:01:08:14
Many will not unda’stand.

00:01:09:08 - 00:01:13:17
But you must step out of da shadows

00:01:14:11 - 00:01:16:08
and lead

00:01:17:08 - 00:01:20:11
You must be

00:01:21:10 - 00:01:25:12
Warchief

00:01:45:30 - 00:01:48:02
Vol’jin is dead.

00:01:54:25 - 00:01:56:18
Who among you

00:01:57:18 - 00:01:59:24
will help me avenge him.

00:02:05:20 - 00:02:07:19
FOR VOL'JIN!

00:02:07:24 - 00:02:15:15
FOR THE HORDE!
]],
	["legion_g_a_sth"] = [[
00:00:04:07 - 00:00:06:04
Treacherous Banshee!

00:00:08:15 - 00:00:12:01
You know not what you are meddling with!

00:00:12:11 - 00:00:14:04
Submit.

00:00:15:20 - 00:00:19:15
The Val’kyr … are mine.

00:00:22:10 - 00:00:25:10
SYLVANAS!!!

00:00:25:21 - 00:00:29:05
Your quest for immortality…

00:00:29:20 - 00:00:34:02
has left you vulnerable.

00:00:34:23 - 00:00:36:22
I will have...

00:00:36:24 - 00:00:38:06
my…

00:00:38:06 - 00:00:39:08
VENGEANCE

00:00:40:17 - 00:00:41:19
For Varian!

00:00:42:18 - 00:00:43:19
For Gilneas

00:00:44:18 - 00:00:47:27
FOR MY SON!

00:01:09:05 - 00:01:12:15
It seems I overestimated you

00:01:13:20 - 00:01:15:16
old wolf.

00:01:34:27 - 00:01:37:17
You took my son's future.

00:01:41:17 - 00:01:44:21
And now: I've taken yours.


]],
	["legion_su_i"] = [[
00:00:02:07 - 00:00:04:09
10,000 years ago

00:00:04:10 - 00:00:07:12
My city was radiant...

00:00:07:30 - 00:00:11:03
The Jewel of the Night Elf Empire

00:00:12:09 - 00:00:13:16
Suramar

00:00:15:06 - 00:00:18:18
Our people prospered for centuries ...

00:00:19:10 - 00:00:22:15
Until the Legion came.

00:00:23:23 - 00:00:26:14
Entranced by the power they offered

00:00:26:26 - 00:00:29:29
our queen betrayed us ...

00:00:30:15 - 00:00:32:29
to the ruin of the world.

00:00:34:24 - 00:00:37:18
As destruction drew ever closer

00:00:38:03 - 00:00:40:18
a desperate choice was made ...

00:00:41:07 - 00:00:43:10
To conjure a powerful shield

00:00:43:21 - 00:00:47:06
that would save our beloved city.

00:00:49:21 - 00:00:51:12
It worked.

00:00:52:24 - 00:00:54:13
Centuries passed.

00:00:55:16 - 00:00:57:07
Without moonlight

00:00:58:06 - 00:00:59:12
Without sunlight

00:01:00:21 - 00:01:04:12
To survive, we turned to the Nightwell

00:01:04:26 - 00:01:08:04
a font of great power in the city's heart.

00:01:09:16 - 00:01:10:18
Slowly ...

00:01:11:13 - 00:01:13:18
It changed us

00:01:15:07 - 00:01:16:30
and ultimately ...

00:01:17:06 - 00:01:21:21
drew the Legion once more to our gates.

00:01:23:06 - 00:01:24:29
They offered us a trade.

00:01:26:16 - 00:01:27:21
The Nightwell

00:01:28:12 - 00:01:30:12
for our lives.

00:01:31:13 - 00:01:34:13
As the Elders planned their surrender

00:01:34:23 - 00:01:35:23
some of us ...

00:01:36:04 - 00:01:37:13
rebelled.

00:01:41:15 - 00:01:42:21
We failed.

00:01:45:24 - 00:01:49:01
Now the Devils have taken Suramar.

00:01:50:00 - 00:01:52:21
And by the curse of the Nightwell

00:01:53:02 - 00:01:56:21
I am damned to Wither away ...

00:01:57:18 - 00:01:58:18
As my ...

00:01:59:07 - 00:02:00:07
City ...

00:02:01:01 - 00:02:02:02
Burns.
]],
	["legion_iq_lv"] = [[
00:00:16:00 - 00:00:17:00
Azeroth ...

00:00:17:30 - 00:00:22:06
I pray that this, the final plea of the Army of the Light

00:00:23:01 - 00:00:24:19
has reached you intact.

00:00:25:23 - 00:00:28:21
The thousand years' war has reached its peak

00:00:29:05 - 00:00:31:28
but the nightmare is far from over.

00:00:32:23 - 00:00:36:15
This vessel represents our ultimate sacrifice.

00:00:37:05 - 00:00:39:16
It must reach the prophet.

00:00:40:14 - 00:00:42:29
He ... is the key.

00:00:44:06 - 00:00:46:24
None of us asked for this burden

00:00:46:25 - 00:00:49:16
but it is what fate has deemed.

00:00:50:09 - 00:00:54:00
Succeed, and the light may yet endure.

00:00:55:06 - 00:00:58:14
Fail, and all worlds ...

00:00:59:14 - 00:01:00:18
will burn.

00:01:05:15 - 00:01:08:03
We will not fail

00:01:10:03 - 00:01:11:09
Turalyon.


]],
	["legion_iq_id"] = [[
00:00:06:12 - 00:00:08:24
You are relieved of duty: Illidan

00:00:08:25 - 00:00:10:25
You have cast me out Cenarius!

00:00:12:11 - 00:00:13:30
Your anger is misplaced ...

00:00:14:01 - 00:00:15:20
You've killed them all Illidan!

00:00:15:24 - 00:00:17:12
WHAT HAVE YOU DONE?!

00:00:20:12 - 00:00:25:18
To walk this path requires sacrifice, Illidan ...

00:00:26:06 - 00:00:30:28
something you have yet, to understand.

00:00:32:15 - 00:00:34:22
Tyrande ...


]],
	["legion_su_r"] = [[
00:00:15:01 - 00:00:16:01
No.

00:00:19:07 - 00:00:22:22
No.

00:00:24:12 - 00:00:27:26
This cannot be.

00:00:57:20 - 00:01:00:14
You have seen, what I have seen.

00:01:02:12 - 00:01:05:18
You know what we face.

00:01:07:03 - 00:01:09:04
Now mortals

00:01:09:29 - 00:01:11:15
follow me

00:01:12:10 - 00:01:14:08
into the abyss.
]],
	["legion_72_tst"] = [[
00:00:02:29 - 00:00:07:02
Champions, your victory at the Nighthold

00:00:07:05 - 00:00:10:26
has granted us the key to ending this war.

00:00:11:29 - 00:00:13:27
With the Pillars of Creation assembled

00:00:14:16 - 00:00:16:06
we finally have the power

00:00:16:10 - 00:00:18:25
to cut the demons off from our world.

00:00:19:22 - 00:00:24:21
Gul’dan failed, and so shall the Legion.

00:00:28:18 - 00:00:30:02
Gul’dan…

00:00:30:21 - 00:00:33:15
… was merely their pawn.

00:00:34:16 - 00:00:36:13
Until victory is assured

00:00:36:17 - 00:00:38:27
we must remain vigilant

00:00:40:01 - 00:00:42:10
for the Legion’s true masters

00:00:42:15 - 00:00:45:01
have yet to reveal themselves.

00:00:46:05 - 00:00:47:11
Among them

00:00:48:09 - 00:00:49:28
a monster who hunted

00:00:49:29 - 00:00:53:19
my people across the stars…

00:00:54:16 - 00:00:56:07
Kil’jaeden.

00:01:01:07 - 00:01:06:11
The day I took the fel fire into my veins

00:01:06:26 - 00:01:09:27
I saw my destiny.

00:01:11:10 - 00:01:13:22
A grand crusade

00:01:13:24 - 00:01:17:17
that would reach the ends of creation.

00:01:19:07 - 00:01:22:24
That was the vision you showed me.

00:01:24:11 - 00:01:30:03
Our Crusade will prevail.

00:01:30:12 - 00:01:32:02
Everything we have done

00:01:32:04 - 00:01:34:24
has been by your design.

00:01:35:03 - 00:01:39:17
And all we have to show for it is failure.

00:01:39:29 - 00:01:44:13
Perhaps you’ve lost sight of our destiny.

00:01:45:04 - 00:01:50:29
Perhaps I overestimated your resolve.

00:01:51:23 - 00:01:56:24
I paid for that destiny with my world.

00:02:01:25 - 00:02:06:06
The time has come to see it done.

00:02:27:00 - 00:02:30:03
Burn it... to ash.


]],
	["legion_72_ars"] = [[
00:00:04:13 - 00:00:05:13
Here.

00:00:07:09 - 00:00:09:18
This is where his father fell.

00:00:13:15 - 00:00:15:08
The boy has never known

00:00:15:09 - 00:00:18:19
the horrors of the Legion as we have.

00:00:19:00 - 00:00:20:00
No...

00:00:24:17 - 00:00:25:17
...I haven’t

00:00:26:17 - 00:00:27:17
Anduin...

00:00:27:19 - 00:00:29:15
How could just leave?

00:00:29:17 - 00:00:30:26
I had to come here.

00:00:32:10 - 00:00:35:29
My boy, you don’t need to see this.

00:00:56:29 - 00:00:57:29
Father...

00:01:08:25 - 00:01:10:08
You never surrendered.

00:01:12:08 - 00:01:15:07
Even here, at the very end.

00:01:20:11 - 00:01:22:05
I cannot do this, father.

00:01:24:10 - 00:01:26:07
I can’t be the hero you were.

00:01:27:28 - 00:01:29:19
I can’t be the king you were.

00:01:31:07 - 00:01:32:07
Anduin...

00:01:33:29 - 00:01:38:15
Your father’s actions were indeed heroic.

00:01:39:18 - 00:01:43:07
They were his challenge to us, his people

00:01:44:06 - 00:01:46:26
to never let fear prevail...

00:01:48:01 - 00:01:51:25
even at the very gates of hell.

00:02:11:02 - 00:02:12:22
What am I supposed to do now?

00:02:15:13 - 00:02:18:09
What a King must do.


]],
	["legion_72_tsf"] = [[
00:00:04:19	- 00:00:08:21
Our fates are now one.

00:00:10:12	- 00:00:14:23
Argus will be your tomb.

00:00:16:17	- 00:00:19:12
At least we will have died fighting.

00:00:19:29	- 00:00:23:25
Our war isn’t over yet.

00:00:26:11	- 00:00:31:09
Not while we hold the key to all worlds.

00:00:40:02	- 00:00:42:21
Khadgar, take us home!

00:00:51:03	- 00:00:53:25
I was always...

00:00:54:28	- 00:00:56:28
...envious of you.

00:00:58:06	- 00:00:59:24
Your gift.

00:01:00:15	- 00:01:01:24
Your faith.

00:01:02:28	- 00:01:04:21
Your vision.

00:01:06:05	- 00:01:08:23
I never believed...

00:01:09:22	- 00:01:13:00
...that Sargeras could be stopped.

00:01:14:20	- 00:01:18:26
Perhaps you will prove me wrong.

00:01:19:13	- 00:01:22:10
Everyone! Get ready!

00:01:44:04	- 00:01:45:20
Is everyone alright?

00:01:58:11	- 00:02:01:21
What have you done?

00:02:02:11	- 00:02:05:09
Sometimes the hand of fate...

00:02:06:05	- 00:02:08:05
...must be forced.


]],
	["legion_73_agi"] = [[
00:00:03:21 - 00:00:06:23
All forces are on board and accounted for.

00:00:07:17 - 00:00:09:03
The Vindicaar will be ready

00:00:09:03 - 00:00:10:08
to depart shortly.

00:00:11:02 - 00:00:13:11
After we reach Argus

00:00:13:12 - 00:00:16:12
we will meet with the Army of the Light

00:00:16:13 - 00:00:19:04
and begin our invasion.

00:00:33:08 - 00:00:35:14
Does he understand

00:00:35:15 - 00:00:38:15
what you're truly asking of him?

00:00:39:11 - 00:00:41:03
Do any of them?

00:00:41:19 - 00:00:44:21
We follow the path of the Light

00:00:45:22 - 00:00:48:01
no matter where it leads.

00:00:49:17 - 00:00:54:07
Your faith has always been your weakness.

00:00:55:10 - 00:00:58:23
When your closest allies fell to darkness

00:01:00:07 - 00:01:02:02
you didn’t stop them.

00:01:03:09 - 00:01:05:19
When the Legion swept over your world

00:01:05:19 - 00:01:07:02
and took your people...

00:01:07:23 - 00:01:10:06
you didn’t make a stand.

00:01:10:16 - 00:01:13:22
All you did was watch convinced

00:01:13:23 - 00:01:16:21
you were following the Light’s will.

00:01:19:05 - 00:01:23:13
The truth is, you failed your people.

00:01:23:22 - 00:01:26:11
Their blood is on your hands.

00:01:27:16 - 00:01:31:11
You will never understand what I did

00:01:31:23 - 00:01:34:12
to save my people.

00:01:35:02 - 00:01:37:17
The Light is holding you back.

00:01:38:05 - 00:01:42:03
It’s time to forge your own path.

00:01:42:16 - 00:01:45:18
Prophet, we are ready.

00:01:46:21 - 00:01:48:04
Proceed.

00:02:11:10 - 00:02:14:21
Where is your Army of the Light?

00:02:20:22 - 00:02:22:21
The Xenedar...

00:02:26:18 - 00:02:28:14
Something is wrong.

00:02:31:08 - 00:02:34:12
The cowards have come out of hiding.

00:02:35:01 - 00:02:37:08
Bring them down!

00:02:52:13 - 00:02:54:19
The Legion will fire again soon!

00:02:55:04 - 00:02:57:03
What are your orders, Prophet?

00:02:59:23 - 00:03:02:09
We make our stand.

00:03:03:07 - 00:03:06:09
The last battle for Argus...

00:03:07:00 - 00:03:09:01
...has begun.


]],
	["legion_73_rtg"] = [[
00:00:38:14 - 00:00:39:27
We are blessed

00:00:39:28 - 00:00:43:04
to be in your presence once more, Xe’ra.

00:00:45:02 - 00:00:46:15
Turalyon…

00:00:47:15 - 00:00:50:29
You have found the chosen one.

00:00:56:29 - 00:00:57:28
Illidan.

00:00:58:27 - 00:01:02:14
From birth, the light in your eyes

00:01:02:15 - 00:01:05:12
held such promise for the future.

00:01:11:20 - 00:01:16:16
I sacrificed that birthright long ago.

00:01:16:26 - 00:01:20:25
Do you not wish to reclaim what was lost?

00:01:21:09 - 00:01:23:14
To be whole again?

00:01:25:22 - 00:01:28:19
The Legion’s end...

00:01:29:05 - 00:01:31:13
is all I seek.

00:01:32:06 - 00:01:33:15
My child.

00:01:34:19 - 00:01:38:28
You’ve given so much, for so little.

00:01:40:02 - 00:01:44:11
Your true potential, your redemption

00:01:44:12 - 00:01:46:13
lies before you.

00:01:47:08 - 00:01:50:20
Let go of your shattered form

00:01:50:21 - 00:01:54:02
and embrace the Light’s power.

00:01:54:15 - 00:01:59:15
I’ve traded my freedom for power before.

00:02:00:07 - 00:02:01:21
The prophecy...

00:02:04:04 - 00:02:06:17
must be fulfilled.

00:02:10:07 - 00:02:13:06
Your old life has passed.

00:02:13:07 - 00:02:17:00
The Light will forge you a new one.

00:02:17:07 - 00:02:19:27
It is not yours to take!

00:02:20:04 - 00:02:23:27
The Light will heal your scars.

00:02:23:29 - 00:02:26:28
I am my scars!

00:02:27:20 - 00:02:31:16
The Light is your destiny.

00:02:31:20 - 00:02:35:10
My destiny is my own!

00:02:48:27 - 00:02:51:08
You've doomed us all!

00:02:51:09 - 00:02:53:05
Betrayer!

00:02:56:26 - 00:03:00:03
Your faith has blinded you.

00:03:01:01 - 00:03:04:23
There can be no chosen one.

00:03:05:24 - 00:03:07:24
Only we...

00:03:09:04 - 00:03:12:01
can save ourselves.


]],
	["legion_73_pan"] = [[
00:00:05:18 - 00:00:08:21
The seat of the Pantheon.

00:00:24:17 - 00:00:27:21
That which you have stolen

00:00:27:22 - 00:00:30:25
will be your undoing.

00:00:33:07 - 00:00:35:24
Rise, Argus.

00:00:36:05 - 00:00:40:23
Rise, my broken world.

00:00:42:25 - 00:00:44:05
Mortals...

00:00:44:19 - 00:00:47:16
The time has come to fight

00:00:48:03 - 00:00:51:11
for the fate of your world.


]],
	["legion_73_afn"] = [[
00:00:03:01 - 00:00:06:08
You have done well, mortals.

00:00:06:29 - 00:00:07:29
It is time.

00:00:08:29 - 00:00:11:22
We must gather our strength.

00:00:12:10 - 00:00:16:15
Return home, children of Azeroth.

00:00:20:28 - 00:00:24:29
Illidan! We’ve done all we can.

00:00:26:22 - 00:00:28:17
Every choice,

00:00:29:09 - 00:00:34:22
every sacrifice has led me to this moment

00:00:35:02 - 00:00:39:02
to face him once again.

00:00:39:21 - 00:00:40:21
You...

00:00:41:13 - 00:00:44:00
are not coming with us...

00:00:44:21 - 00:00:48:21
The hunter is nothing without the hunt.

00:00:49:27 - 00:00:53:20
Did you not see this fate, Prophet?

00:00:54:21 - 00:00:55:21
Fate...

00:00:56:19 - 00:01:01:20
Our survival was never in fate's hands.

00:01:05:16 - 00:01:10:06
Light be with you, Illidan Stormrage.

00:01:26:18 - 00:01:27:29
Brother,

00:01:28:06 - 00:01:32:29
your crusade is over!

00:01:50:02 - 00:01:53:14
No.

00:02:24:03 - 00:02:26:04
At last...


]],
	["legion_735_epa"] = [[
00:00:05:23 - 00:00:07:05
Like many of you,

00:00:07:21 - 00:00:11:01
I know firsthand the pain of loss.

00:00:12:09 - 00:00:13:09
My fath-

00:00:15:10 - 00:00:16:23
King Varian Wrynn

00:00:18:00 - 00:00:20:10
gave his life to save his people.

00:00:22:01 - 00:00:23:10
He knew that no one,

00:00:23:19 - 00:00:24:22
not even a king,

00:00:25:13 - 00:00:27:19
is more important than the Alliance.

00:00:30:23 - 00:00:33:11
And because he and so many others

00:00:33:12 - 00:00:36:07
had the courage to make that sacrifice,

00:00:36:22 - 00:00:38:17
we did the impossible.

00:00:39:19 - 00:00:42:09
We defeated the Burning Legion.

00:00:44:01 - 00:00:45:18
Let us honor our heroes...

00:00:45:19 - 00:00:47:08
Spymaster Shaw.

00:00:47:20 - 00:00:49:03
not by dying...

00:00:49:04 - 00:00:50:07
Back so soon?

00:00:50:07 - 00:00:51:10
but by living.

00:00:51:21 - 00:00:54:04
Our lives, our joy, our world.

00:00:54:05 - 00:00:56:02
I need to speak with him.

00:00:56:09 - 00:00:58:14
These are the gifts of the fallen.

00:00:59:01 - 00:01:00:01
Now.

00:01:01:03 - 00:01:02:19
And we must cherish,

00:01:04:05 - 00:01:05:13
and celebrate them!

00:01:08:03 - 00:01:09:13
For the Alliance!

00:01:27:06 - 00:01:29:07
We’ve observed an unusually large cluster

00:01:29:08 - 00:01:31:03
of goblins in Silithus.

00:01:31:20 - 00:01:33:23
And the numbers are increasing.

00:01:34:16 - 00:01:36:22
Goblins aren’t the most charming people,

00:01:37:09 - 00:01:39:12
but they do things for a reason.

00:01:39:15 - 00:01:42:18
And those reasons usually involve money.

00:01:42:22 - 00:01:43:15
So...

00:01:44:04 - 00:01:45:00
the Horde has found

00:01:45:01 - 00:01:46:10
something valuable, then?

00:01:46:15 - 00:01:47:18
They have indeed.

00:01:48:13 - 00:01:49:13
This.

00:02:04:07 - 00:02:05:07
What...

00:02:06:04 - 00:02:07:12
What is this?

00:02:08:10 - 00:02:09:18
We don't know.

00:02:10:09 - 00:02:12:08
It would seem the Horde does

00:02:12:17 - 00:02:14:06
and we must find out more.

00:02:14:22 - 00:02:15:19
Agreed.

00:02:16:20 - 00:02:18:10
We have eyes on it.


]],
	["legion_735_eph"] = [[
00:00:03:20 - 00:00:04:20
Warchief...

00:00:05:16 - 00:00:08:09
if I may offer a few words.

00:00:13:02 - 00:00:16:12
It is with both pain and pride

00:00:16:12 - 00:00:18:22
that we gather here today.

00:00:19:12 - 00:00:22:14
Pain, for many brave heroes,

00:00:22:15 - 00:00:26:13
of the Horde fell against a terrible foe.

00:00:27:07 - 00:00:28:23
And pride,

00:00:29:06 - 00:00:31:13
for against all odds,

00:00:31:22 - 00:00:35:03
we have vanquished the Legion.

00:00:36:02 - 00:00:37:02
We bled.

00:00:37:22 - 00:00:39:17
Now, we heal.

00:00:40:19 - 00:00:42:05
We mourned.

00:00:42:12 - 00:00:45:01
Now, we celebrate!

00:00:45:15 - 00:00:47:03
For the Horde!

00:00:47:09 - 00:00:49:09
For the Horde!

00:00:55:11 - 00:00:56:21
Warchief.

00:00:57:04 - 00:00:58:18
A moment of your time?

00:01:02:22 - 00:01:05:16
No doubt Gallywix wants to push

00:01:05:17 - 00:01:08:04
his latest money-grubbing scheme.

00:01:09:01 - 00:01:12:17
Rats scurry about their business.

00:01:13:05 - 00:01:14:21
And get eaten,

00:01:15:01 - 00:01:16:20
if they're not careful.

00:01:30:10 - 00:01:33:17
What is the rat up to?

00:01:34:01 - 00:01:37:01
He does keep sending more Goblins

00:01:37:01 - 00:01:38:04
to Silithus.

00:01:40:10 - 00:01:42:22
Nothing good has ever come out

00:01:42:22 - 00:01:44:04
of Silithus.

00:01:52:02 - 00:01:53:02
This…

00:01:53:19 - 00:01:55:10
will change

00:01:55:13 - 00:01:56:20
everything.

00:01:58:17 - 00:02:00:03
I told you!

00:02:00:07 - 00:02:01:20
And the Alliance

00:02:01:21 - 00:02:03:23
knows nothing of this?

00:02:04:07 - 00:02:05:20
Don't worry Warchief.

00:02:06:08 - 00:02:07:22
I got people on it.


]],
	["bfa_800_sv"] = [[
00:00:22:04 - 00:00:23:18
Secure the beach.

00:00:23:21 - 00:00:26:04
Prepare to invade the tree.

00:00:28:23 - 00:00:29:23
Why?

00:00:33:03 - 00:00:34:03
Why?

00:00:34:13 - 00:00:35:17
You’ve already won.

00:00:36:23 - 00:00:39:11
Only innocents remain in the tree.

00:00:40:19 - 00:00:42:04
This is war.

00:00:42:19 - 00:00:43:19
No...

00:00:44:05 - 00:00:45:05
This...

00:00:45:14 - 00:00:46:18
is hatred...

00:00:47:12 - 00:00:48:12
rage.

00:00:49:11 - 00:00:51:20
Windrunner, you were...

00:00:52:23 - 00:00:54:20
defender of your people.

00:00:56:04 - 00:00:57:15
Do you not remember?

00:01:00:23 - 00:01:02:13
I remember...

00:01:02:20 - 00:01:03:23
a fool.

00:01:14:23 - 00:01:16:08
Take her! Run!

00:02:15:17 - 00:02:17:20
Life is pain.

00:02:17:22 - 00:02:19:19
Hope fails.

00:02:20:14 - 00:02:23:05
Now you understand.

00:02:32:05 - 00:02:33:23
Don’t grieve...

00:02:34:19 - 00:02:37:07
you’ll soon join your loved ones.

00:02:39:03 - 00:02:40:15
I grieve for you.

00:02:43:17 - 00:02:45:23
You’ve made life your enemy.

00:02:47:04 - 00:02:49:23
And that is a war you’ll never win.

00:02:51:05 - 00:02:52:20
You can kill us...

00:02:53:16 - 00:02:56:01
but you cannot kill hope.

00:03:00:09 - 00:03:01:10
Can’t I?

00:03:11:20 - 00:03:12:20
Burn it.

00:03:15:23 - 00:03:17:03
Burn it!


]],
	["bfa_800_ja"] = [[
00:00:30:02 - 00:00:36:14
Beware, beware the Daughter of the Seas

00:00:37:13 - 00:00:42:15
Beware, I heard him cry

00:00:43:23 - 00:00:49:23
His words carried upon the ocean breeze

00:00:50:13 - 00:00:54:22
As he sank beneath the tide

00:00:57:10 - 00:01:03:19
Those blood-soaked shores of Kalimdor

00:01:04:03 - 00:01:09:03
Where sailors fought and died

00:01:10:18 - 00:01:16:21
The admiral fell at Theramore

00:01:17:10 - 00:01:21:14
Because she left his side

00:01:23:07 - 00:01:24:16
Why this?

00:01:24:17 - 00:01:28:13
Why this, oh Daughter of the Seas?

00:01:28:22 - 00:01:30:04
Why this?

00:01:30:05 - 00:01:33:19
Did you forget your seaside days?

00:01:34:15 - 00:01:40:06
Always the pride of our nation’s eyes

00:01:40:11 - 00:01:45:02
How could she go astray?

00:01:48:22 - 00:01:54:17
When she did flee across the ocean deep

00:01:54:21 - 00:02:00:03
The admiral followed west

00:02:00:09 - 00:02:03:13
What else but sail

00:02:03:16 - 00:02:06:05
To save a daughter’s life

00:02:06:10 - 00:02:10:10
And pray she still drew breath?

00:02:11:20 - 00:02:14:23
But there he found

00:02:15:00 - 00:02:17:18
 upon those distant shores

00:02:18:01 - 00:02:23:00
Enemies ‘pon the rise!

00:02:23:07 - 00:02:31:04
But when he faced those savage foes

00:02:31:11 - 00:02:36:23
His daughter stood aside

00:02:40:03 - 00:02:45:19
And buried deep beneath the waves

00:02:45:23 - 00:02:51:09
Betrayed by family

00:02:51:21 - 00:02:56:21
To his nation, with his last breath, cried

00:02:57:02 - 00:03:03:10
Beware the Daughter of the Seas

00:03:36:06 - 00:03:37:15
I’m listening now...

00:03:40:19 - 00:03:41:19
father.

00:03:53:04 - 00:03:59:08
I heard, I heard across a moonlit sea

00:03:59:23 - 00:04:04:17
The old voice warning me

00:04:06:01 - 00:04:12:10
Beware, beware the Daughter of the Seas

00:04:12:18 - 00:04:14:14
Beware...

00:04:16:14 - 00:04:17:23
beware...

00:04:20:18 - 00:04:21:23
of me.


]],
	["wow_cgi_os"] = [[
Zekhan: Oh... Lord Saurfang.
Zekhan: How many, do you think?
Saurfang: Too many.

Saurfang: There is no honor in this!
Saurfang: They will come for us now!
Saurfang: All of them!

Zekhan: My father, Hekazi. He fought with you in the Third War.
Zekhan: He told me stories... How you could cut down ten enemies with a single blow.
Zekhan: This be my first battle. What should I do?
Saurfang: Don't die.
Zekhan: Yes, of course, but...
Zekhan: If I do fall, may it be with honor in glorious combat.
Saurfang: There will be no glory today. Only pain.
Saurfang: You have earned your warrior's death... my son.
Saurfang: Yet once again, I am denied it.
Zekhan: What are you doing?
Saurfang: Claiming what is mine.

Saurfang: Go back.
Saurfang: I said go back! Live another day. Go back to your father.
Zekhan: I can't. He's dead. The Horde... It's all we have.
Saurfang: So... You know me. Is that it? What I've seen? What I've done?
Saurfang: Oh, give up, boy.
Zekhan: Like you?

Zekhan: Live... another day.

Saurfang: Without armor?
]],
	["bfa_800_rb"] = [[
00:00:14:19 - 00:00:17:10
Ours is a cycle of hatred.

00:00:19:14 - 00:00:22:23
Alliances forged and broken.

00:00:24:21 - 00:00:26:07
We have paid the price

00:00:26:07 - 00:00:28:07
for sharing this world.

00:00:29:03 - 00:00:31:03
and we have forgotten

00:00:31:03 - 00:00:33:02
what makes us strong.

00:00:41:13 - 00:00:42:20
Close ranks!

00:00:42:20 - 00:00:44:09
Advance as one!

00:00:44:21 - 00:00:47:05
Lordaeron will be ours!

00:00:47:18 - 00:00:51:03
My king, we have her cornered.

00:00:56:23 - 00:00:57:23
Keep firing!

00:02:08:01 - 00:02:10:14
For the Horde!

00:02:31:13 - 00:02:33:07
Push forward!

00:02:46:10 - 00:02:47:10
Anduin!

00:03:48:12 - 00:03:50:21
Stand as one!

00:03:53:10 - 00:03:55:15
For the Alliance!


]],
	["bfa_800_ltt"] = [[
00:00:12:07 - 00:00:14:21
The blight has broken our ranks!

00:00:15:14 - 00:00:16:14
Our assault...

00:00:17:02 - 00:00:18:06
has been for nothing.

00:00:24:27 - 00:00:26:06
What now?

00:00:39:01 - 00:00:40:01
Jaina!

00:00:51:08 - 00:00:52:10
Alliance!

00:00:52:24 - 00:00:53:24
Forward!

00:01:01:11 - 00:01:03:14
Jaina! The wall!

00:01:16:14 - 00:01:18:27
We end this...now.


]],
	["bfa_800_ltc_h"] = [[

]],
	["bfa_800_ltc_a"] = [[

]],
	["wow_cgi_lh"] = [[
Genn: That’s the last of the soldiers. We’ll be calling up farmers next.
Anduin: When this war began, I thought we were fighting for peace. But we’re just... fighting.
Genn: You’re doing all you can to stop her, Your Majesty.

Anduin: At Lordaeron, you had the chance to take my life. Maybe even end the war.
Anduin: Why didn’t you kill me?
Saurfang: Could kill you now.
Anduin: I spared you, because I believed you have honor. Was I wrong? Do you want more innocents to suffer? The Horde...
Saurfang: I have given everything for the Horde! Bled for it. Killed for it. And Sylvanas is destroying it! She will destroy everything! What I want... is my Horde back.
Anduin: Saurfang. Tell me why you spared my life.
Saurfang: I hoped... you... would stop her.
Anduin: I can’t. Not alone.
]],
	["bfa_800_stz"] = [[
00:00:06:10 - 00:00:07:11
It appears

00:00:07:12 - 00:00:10:22
the Alliance dogs have lost our scent.

00:00:11:01 - 00:00:13:04
Good, good.

00:00:13:22 - 00:00:16:16
Our journey is almost over.

00:00:17:03 - 00:00:18:04
I hope

00:00:18:05 - 00:00:21:29
the Warchief’s faith is well-placed.

00:00:22:16 - 00:00:24:28
She seems very powerful.

00:00:25:18 - 00:00:26:18
Certain.

00:00:27:07 - 00:00:29:01
In control.

00:00:29:16 - 00:00:32:19
It is an honor to serve my queen.

00:00:33:12 - 00:00:36:07
My princess is also strong-willed

00:00:36:15 - 00:00:38:05
and sure of herself.

00:00:39:16 - 00:00:42:13
Our king has always found her to be...

00:00:43:02 - 00:00:44:05
challenging.

00:00:54:28 - 00:00:57:16
O Mighty Rezan,

00:00:58:01 - 00:00:59:03
as always,

00:00:59:20 - 00:01:02:11
you come when I ask your aid.

00:01:04:26 - 00:01:08:20
Speak, and I will listen.

00:01:09:23 - 00:01:12:06
I have sought the aid of the Horde.

00:01:13:11 - 00:01:15:15
But my father may not agree

00:01:15:16 - 00:01:16:26
with my actions.

00:01:17:20 - 00:01:18:23
Advise me!

00:01:19:13 - 00:01:22:29
You are the Loa of kings and queens!

00:01:24:13 - 00:01:27:07
My eyes see much.

00:01:27:26 - 00:01:30:07
They see your boldness,

00:01:30:18 - 00:01:31:25
your power,

00:01:32:27 - 00:01:36:24
and enemies who fear both.

00:01:38:07 - 00:01:41:29
And those who seek your demise...

00:01:42:06 - 00:01:43:26
are here.

00:01:50:20 - 00:01:53:09
We need cover! Head for that fog bank!

00:01:54:13 - 00:01:57:01
The sails are dead. We’ve got no wind!

00:01:58:18 - 00:02:00:06
We’re taking on water!

00:02:53:24 - 00:02:54:26
We are home.


]],
	["bfa_800_jnm"] = [[
00:00:19:16 - 00:00:25:08
Ahoy, ahoy, sweet Daughter of the Seas

00:00:25:10 - 00:00:30:01
Ahoy, this child be mine

00:00:30:11 - 00:00:33:09
The Admiral’s girl

00:00:33:10 - 00:00:36:19
His whole entire world

00:00:36:20 - 00:00:38:13
For as long

00:00:39:12 - 00:00:41:21
As stars do shine

00:00:44:10 - 00:00:45:22
Promise you’ll come back?

00:00:46:07 - 00:00:48:18
I’ll weather every storm,

00:00:48:19 - 00:00:51:05
if I know you are waiting for me.

00:00:51:08 - 00:00:52:16
Time to go, Jaina!

00:00:53:01 - 00:00:54:09
I love you, Papa.

00:00:54:16 - 00:00:56:15
Come topside, sweetheart.

00:00:57:15 - 00:00:59:08
Your loving mother...

00:01:00:12 - 00:01:02:22
will never forgive you.

00:01:03:03 - 00:01:04:16
Murderer!

00:01:08:05 - 00:01:09:06
Lady Jaina?

00:01:09:21 - 00:01:10:21
 We’ve arrived.

00:01:14:09 - 00:01:15:15
Thank you, Captain.


]],
	["bfa_800_kta"] = [[
00:00:08:29 - 00:00:09:29
So...

00:00:10:17 - 00:00:12:23
my wayward daughter returns

00:00:12:24 - 00:00:14:28
to the kingdom she betrayed.

00:00:16:05 - 00:00:17:05
Why?

00:00:18:03 - 00:00:20:21
I have come to ask Kul Tiras for aid

00:00:21:12 - 00:00:23:04
on behalf of the Alliance.

00:00:23:09 - 00:00:24:18
The Alliance?

00:00:24:22 - 00:00:25:22
HA!

00:00:26:04 - 00:00:27:15
Where were they

00:00:27:15 - 00:00:30:05
when we begged for their help?

00:00:30:25 - 00:00:33:12
When our husbands, and sons,

00:00:33:13 - 00:00:35:13
and brothers were slaughtered

00:00:35:14 - 00:00:36:25
at Theramore?

00:00:36:25 - 00:00:40:29
Do not blame the Alliance for my actions.

00:00:41:05 - 00:00:42:24
So you admit it.

00:00:43:10 - 00:00:45:13
You admit that you were responsible

00:00:45:14 - 00:00:47:17
for the deaths of our men!

00:00:48:28 - 00:00:49:28
I was.

00:00:53:20 - 00:00:55:28
But I will do anything in my power

00:00:55:29 - 00:00:58:15
to ease the suffering of Kul Tiras!

00:01:00:06 - 00:01:03:29
Katherine...enforce our laws.

00:01:04:28 - 00:01:09:08
The punishment for treason...is death.

00:01:15:22 - 00:01:18:07
Do you accept the judgment

00:01:18:07 - 00:01:19:20
of your homeland?

00:01:21:24 - 00:01:24:23
I accept your judgment

00:01:26:01 - 00:01:27:01
...mother.

00:01:32:25 - 00:01:33:25
Agh!

00:01:35:24 - 00:01:38:08
You are no daughter of mine.

00:01:41:12 - 00:01:42:28
Do what you will.

00:01:44:11 - 00:01:45:27
She is nothing to me.


]],
	["bfa_800_rot"] = [[
00:00:02:17 - 00:00:04:04
There you are...

00:00:10:06 - 00:00:12:05
I did everything wrong.

00:00:20:19 - 00:00:21:20
We're too late.

00:00:25:17 - 00:00:28:01
This entire city must be purged.

00:00:29:16 - 00:00:30:16
Jaina?

00:00:33:01 - 00:00:34:15
I’m sorry Arthas.

00:00:35:10 - 00:00:37:12
I can’t watch you do this.

00:00:37:18 - 00:00:38:21
We should have stopped him.

00:00:38:21 - 00:00:40:01
He never would've turned.

00:00:40:01 - 00:00:41:04
He'd still be alive.

00:00:41:10 - 00:00:45:01
You have always been naive, my daughter.

00:00:45:09 - 00:00:46:09
Daelin?

00:00:46:11 - 00:00:48:07
I won’t let you do it, father!

00:00:48:07 - 00:00:49:15
I should have tried harder.

00:00:49:17 - 00:00:51:08
You don’t understand!

00:00:51:18 - 00:00:53:07
I understand more

00:00:53:07 - 00:00:55:23
than you suspect, my dear.

00:00:56:04 - 00:00:57:16
I wasn't strong enough.

00:00:57:17 - 00:01:00:20
Perhaps in time, you will too.

00:01:01:06 - 00:01:02:06
Seize them all!

00:01:02:06 - 00:01:03:12
I should have made him listen.

00:01:03:13 - 00:01:05:04
Father, no!

00:01:05:08 - 00:01:06:08
Forgive me.

00:01:07:06 - 00:01:09:02
You couldn't save him...

00:01:09:17 - 00:01:10:17
from himself.

00:01:12:04 - 00:01:15:01
Do you really think you can cast aside

00:01:15:01 - 00:01:17:11
your guilt so easily?

00:01:23:22 - 00:01:24:22
No.

00:01:25:21 - 00:01:26:21
Father...

00:01:28:16 - 00:01:30:13
why wouldn’t you listen.

00:01:32:22 - 00:01:34:01
Katherine...

00:01:34:18 - 00:01:36:19
enforce our laws.

00:01:37:08 - 00:01:39:13
The punishment for treason...

00:01:40:13 - 00:01:41:20
is death.

00:01:47:08 - 00:01:49:02
Do you accept

00:01:49:02 - 00:01:51:01
the judgment of your homeland?

00:01:52:11 - 00:01:55:15
I accept your judgement...

00:01:56:17 - 00:01:57:17
mother.

00:02:07:12 - 00:02:08:17
My daughter.

00:02:12:06 - 00:02:13:11
Forgive me.

00:02:16:03 - 00:02:17:19
Forgive your father.

00:02:21:06 - 00:02:22:06
And...

00:02:23:19 - 00:02:25:13
forgive yourself.

00:02:27:18 - 00:02:29:20
Come topside, sweetheart.


]],
	["bfa_800_ktf"] = [[
00:00:06:11 - 00:00:08:15
Our harbor defenses...

00:00:09:08 - 00:00:10:16
won't be enough.

00:00:13:05 - 00:00:14:16
Father's pendant.

00:00:15:13 - 00:00:17:13
For generations,

00:00:17:19 - 00:00:20:19
the heart of the Kul Tiran fleet.

00:00:21:23 - 00:00:23:19
I thought that hope

00:00:23:19 - 00:00:25:19
had returned with this seal.

00:00:26:22 - 00:00:30:10
That perhaps I could call the fleet home,

00:00:31:02 - 00:00:32:09
as your father did.

00:00:33:18 - 00:00:35:01
I was wrong.

00:00:36:07 - 00:00:37:16
It was never meant...

00:00:38:15 - 00:00:39:15
for me.

00:01:11:16 - 00:01:13:00
There you are.

00:01:32:16 - 00:01:34:12
We’re home, Tandred!

00:01:34:22 - 00:01:37:13
Captain, pirates in our harbor!

00:01:37:16 - 00:01:38:19
All hands!

00:01:39:03 - 00:01:40:03
Let’s show them

00:01:40:03 - 00:01:42:09
what Kul Tirans are made of.

00:01:47:11 - 00:01:48:15
Lady Ashvane!

00:01:48:16 - 00:01:49:16
Your orders!

00:01:50:16 - 00:01:52:03
Lady Ashvane!

00:02:09:18 - 00:02:12:14
It seems, hope has returned...

00:02:13:19 - 00:02:17:13
with you, Lord Admiral.


]],
	["bfa_800_bar"] = [[
00:00:11:17 - 00:00:13:16
So many lost...

00:00:17:08 - 00:00:18:08
I know.

00:00:19:14 - 00:00:21:15
I miss Rezan too.

00:00:23:28 - 00:00:25:09
Oh, Tze’na...

00:00:26:13 - 00:00:28:15
what do we do now?

00:00:41:18 - 00:00:44:17
The dust of bones...

00:00:45:03 - 00:00:47:28
for the Loa of death.

00:00:58:01 - 00:00:59:06
Well...

00:00:59:22 - 00:01:02:03
this is a surprise.

00:01:02:26 - 00:01:05:06
You looking pretty good, Your Majesty.

00:01:05:26 - 00:01:09:03
So...why have you come to see me?

00:01:10:05 - 00:01:12:11
I need your aid.

00:01:13:04 - 00:01:14:17
I see.

00:01:15:27 - 00:01:18:14
You want to make a deal with me.

00:01:19:05 - 00:01:20:20
Go on, go on.

00:01:21:05 - 00:01:22:27
Become my Loa.

00:01:23:15 - 00:01:26:16
Grant me the power to recover my kingdom,

00:01:26:19 - 00:01:30:22
and I will elevate you above all Loa!

00:01:31:02 - 00:01:33:20
Yes, yes, so you get your kingdom back.

00:01:33:20 - 00:01:35:05
All very nice.

00:01:35:10 - 00:01:38:06
But soon you’ll tire of old Bwonsamdi.

00:01:38:10 - 00:01:40:12
You’ll go back to the living Loa.

00:01:40:14 - 00:01:41:26
The ones who bring the rain.

00:01:41:28 - 00:01:45:24
Makes the crops grow...not wither and die.

00:01:46:05 - 00:01:47:20
No, no, no.

00:01:47:23 - 00:01:49:06
I need more...

00:01:49:19 - 00:01:51:22
than just your word.

00:01:53:17 - 00:01:55:07
If you do this for me...

00:01:56:08 - 00:02:00:09
I will bind my bloodline to you.

00:02:03:09 - 00:02:05:02
All who succeed you

00:02:05:03 - 00:02:06:24
will keep this bargain?

00:02:07:15 - 00:02:09:07
To serve me in life...

00:02:09:23 - 00:02:11:13
and in death?

00:02:13:08 - 00:02:14:15
Forever.

00:02:17:19 - 00:02:19:18
We got a deal.

00:02:35:20 - 00:02:36:20
Father...

00:02:37:02 - 00:02:40:01
I felt something, a moment ago.

00:02:41:03 - 00:02:42:21
Has something happened?

00:02:44:27 - 00:02:47:11
Do not worry my daugther.

00:02:48:07 - 00:02:51:15
I’ve taken care of everything.


]],
	["bfa_800_zcf"] = [[
00:00:11:04 - 00:00:15:04
You are too late, Rastakhan.

00:00:15:20 - 00:00:17:10
Rise.

00:00:17:23 - 00:00:19:29
Rise Mythrax.

00:00:20:25 - 00:00:22:13
Rise.

00:00:24:03 - 00:00:26:04
Bwonsamdi!

00:00:26:15 - 00:00:27:28
We had a deal.

00:00:28:09 - 00:00:30:06
Grant me your power!

00:00:54:18 - 00:00:56:29
 Mythrax, do it now!

00:00:57:03 - 00:00:59:03
Destroy the seal!

00:01:35:28 - 00:01:37:17
Fool.

00:01:38:04 - 00:01:40:10
Long may you reign...

00:01:40:21 - 00:01:44:11
over your empire of ash.

00:01:54:19 - 00:01:57:14
Look at this.

00:01:57:24 - 00:02:01:02
Congratulations, Your Majesty.

00:02:01:13 - 00:02:02:18
The kingdom...

00:02:03:04 - 00:02:05:03
is ours.


]],
	["bfa_810_tod"] = [[
00:00:04:08 - 00:00:05:12
All of it?

00:00:05:12 - 00:00:07:03
The entire shipment.

00:00:07:07 - 00:00:09:09
Down to the last sack of grain.

00:00:09:23 - 00:00:11:23
This one’s the only survivor.

00:00:21:22 - 00:00:23:09
Bwonsamdi...

00:00:23:10 - 00:00:25:05
do not take me yet.

00:00:27:10 - 00:00:29:09
What happened?

00:00:29:23 - 00:00:33:17
We were bringing supplies to the warfront.

00:00:34:08 - 00:00:37:09
Just like all the other times.

00:00:37:14 - 00:00:38:18
Pick up the pace!

00:00:39:04 - 00:00:40:13
We've got to get these supplies

00:00:40:14 - 00:00:42:11
to our soldiers by dawn!

00:00:52:22 - 00:00:53:22
What is it?

00:01:43:14 - 00:01:44:14
Tell her...

00:01:46:09 - 00:01:47:23
we are coming.

00:01:57:20 - 00:01:59:06
Bwonsamdi...

00:01:59:23 - 00:02:01:16
do not take me yet.

00:02:01:23 - 00:02:04:23
He expects us to believe this tale?

00:02:05:10 - 00:02:08:10
No single Night Elf could do all that!

00:02:09:21 - 00:02:11:19
I know one who could.

00:02:33:23 - 00:02:36:04
We will hold this ground...

00:02:37:08 - 00:02:38:23
for the Horde.


]],
	["bfa_810_akt"] = [[
00:00:06:18 - 00:00:08:13
Commander!  Look!

00:00:09:11 - 00:00:11:03
Hahaha!

00:00:11:10 - 00:00:13:20
Fish jumpin’ right into our net!

00:00:14:12 - 00:00:15:22
 Go, go!

00:00:21:09 - 00:00:24:04
Those ballistae will be firing any second.

00:00:24:16 - 00:00:26:16
Continue our approach, Captain.

00:00:27:01 - 00:00:28:29
Aye, Lord Admiral.

00:00:30:12 - 00:00:31:14
Lady Proudmoore.

00:00:31:27 - 00:00:33:19
The mission was a success.

00:00:33:28 - 00:00:36:22
Our stealth agents are clear of the area.

00:00:37:05 - 00:00:38:18
Thank you, Spymaster.

00:00:38:22 - 00:00:40:16
 High Tinker—are you ready?

00:00:40:23 - 00:00:43:08
I’ll activate our surprise

00:00:43:10 - 00:00:45:15
just as soon as we are in range.

00:00:49:04 - 00:00:50:04
Now.

00:00:52:05 - 00:00:53:10
Steady …

00:00:57:12 - 00:00:58:18
INCOMING!

00:01:01:11 - 00:01:02:25
High Tinker!

00:01:06:08 - 00:01:07:14
Got it!

00:01:10:26 - 00:01:13:13
Gelbin … no

00:01:13:28 - 00:01:15:00
LOOK OUT!!

00:01:52:27 - 00:01:54:26
Full speed ahead!

00:02:01:10 - 00:02:04:16
Alliance! Forward!


]],
	["bfa_810_dor"] = [[
00:00:02:23 - 00:00:04:15
No!

00:00:05:22 - 00:00:07:01
Princess Talanji!

00:00:14:01 - 00:00:15:10
Get to the king.

00:00:16:07 - 00:00:17:07
Now!

00:00:24:08 - 00:00:25:08
Father...

00:00:25:20 - 00:00:27:13
...no, please...

00:00:28:11 - 00:00:29:11
...stay...

00:00:30:13 - 00:00:31:19
...stay with me.

00:00:33:23 - 00:00:34:23
Talanji...

00:00:36:21 - 00:00:38:01
...my daughter...

00:00:40:04 - 00:00:42:11
...I'm so sorry.

00:00:44:04 - 00:00:45:17
Hush, father.

00:00:46:09 - 00:00:47:09
Shh...

00:00:48:22 - 00:00:50:08
It's alright.

00:00:51:02 - 00:00:54:05
Forgive me.

00:01:21:05 - 00:01:22:20
Bwonsamdi.

00:01:24:23 - 00:01:28:08
Yes, my queen?

00:01:30:07 - 00:01:32:08
What have you done to me?

00:01:33:04 - 00:01:34:04
Oh...

00:01:34:07 - 00:01:37:06
He didn’t tell you about our bargain?

00:01:39:23 - 00:01:42:04
Shame on him.

00:01:43:11 - 00:01:44:11
Your Majesty...

00:01:45:03 - 00:01:47:05
The Alliance dogs are escaping!

00:01:47:15 - 00:01:49:01
What are your orders?

00:01:56:10 - 00:01:57:19
After them!


]],
	["bfa_815_dpr"] = [[
00:00:31:14 - 00:00:32:20
Lady Jaina.

00:00:33:06 - 00:00:34:14
Long has it been

00:00:34:20 - 00:00:37:12
since we spoke peacefully in Theramore.

00:00:38:12 - 00:00:39:21
Theramore is gone.

00:00:40:12 - 00:00:43:08
You did not ask me here to reminisce.

00:00:44:00 - 00:00:45:00
No.

00:00:45:15 - 00:00:50:05
I have come to return one who was lost.

00:00:57:02 - 00:00:58:02
Derek...

00:00:59:09 - 00:01:00:19
my own brother.

00:01:01:19 - 00:01:04:10
I had thought better of you, Baine.

00:01:04:17 - 00:01:05:22
So tell me.

00:01:06:04 - 00:01:08:09
Is he the banshee’s puppet?

00:01:08:11 - 00:01:10:05
Crammed full of blight?

00:01:10:19 - 00:01:13:05
Is he the bomb this time?

00:01:13:23 - 00:01:14:23
Yes.

00:01:17:06 - 00:01:19:00
That was the plan.

00:01:19:20 - 00:01:20:20
But...

00:01:21:05 - 00:01:23:09
Baine took me from Sylvanas before,

00:01:24:22 - 00:01:26:23
before I was twisted to her will.

00:01:28:14 - 00:01:30:14
I’m still your brother, Jaina.

00:01:31:11 - 00:01:33:19
For as long as stars do shine.

00:01:37:18 - 00:01:38:18
Why?

00:01:40:07 - 00:01:43:10
The Horde has a sickness in it.

00:01:44:21 - 00:01:50:03
We wage war, while the Earth Mother dies.

00:01:51:08 - 00:01:54:19
We have forgotten what truly matters,

00:01:55:11 - 00:01:58:20
and my heart can bear it no longer.

00:02:00:09 - 00:02:02:16
Sylvanas will kill you for this.

00:02:03:06 - 00:02:04:06
And...

00:02:05:02 - 00:02:07:05
she may not stop with you.

00:02:08:15 - 00:02:10:22
No life is worth living,

00:02:11:06 - 00:02:14:18
if we cannot be true to our nature.

00:02:17:15 - 00:02:19:01
I return home,

00:02:19:02 - 00:02:22:11
to take what solace I can in my family.

00:02:23:23 - 00:02:28:00
I hope you take solace in yours.

00:02:31:20 - 00:02:32:20
Baine...

00:02:36:02 - 00:02:37:02
thank you.


]],
	["wow_cgi_sh"] = [[
Saurfang: So... This is home now...
Thrall: Home... and family.
Saurfang: And where are they?
Thrall: Not far.
Saurfang: This world... it looks good... but... It's wrong... broken... falling apart... Just like the Horde.
Saurfang: Do you know... Do you know what she's done while you were hiding?
Thrall: I left that life behind. I'm no one's savior. I will not lead the Horde.
Saurfang: I didn't ask. But I hoped you would at least fight for it.

Thrall: You were followed!
Saurfang: I followed them.
Saurfang: You and I... We don't get to hide.
]],
	["bfa_820_az"] = [[
00:00:46:03 - 00:00:48:03
Save us! Help!

00:00:48:04 - 00:00:49:12
My queen, save us!

00:01:17:07 - 00:01:18:23
Let go...

00:01:21:17 - 00:01:23:14
Let go...

00:01:23:15 - 00:01:24:15
No!

00:01:25:14 - 00:01:27:03
I am queen.

00:01:28:17 - 00:01:29:17
This...

00:01:30:23 - 00:01:34:16
is the empire I built!

00:01:35:14 - 00:01:38:02
It is over...

00:02:24:05 - 00:02:25:17
You betrayed us.

00:02:25:18 - 00:02:26:18
You destroyed everything.

00:02:26:19 - 00:02:29:06
No... my people.

00:02:29:06 - 00:02:31:04
Save us my queen.

00:02:31:05 - 00:02:32:15
This is your fault!

00:02:32:16 - 00:02:33:17
You betrayed us.

00:02:33:18 - 00:02:34:21
This is my fault?

00:02:35:13 - 00:02:36:14
No!

00:02:36:15 - 00:02:37:15
No!

00:02:38:00 - 00:02:39:11
No! This...

00:02:40:01 - 00:02:42:06
This was not the deal I made!

00:02:48:23 - 00:02:52:11
Deal. I like deals.

00:02:52:13 - 00:02:53:13
Who are you?

00:02:54:16 - 00:02:56:19
Show yourself. At once!

00:03:01:15 - 00:03:04:17
For a thousand years,

00:03:04:19 - 00:03:07:14
bound beneath these waves,

00:03:08:01 - 00:03:10:08
I have watched you.

00:03:12:08 - 00:03:16:04
I have tasted your essence.

00:03:18:22 - 00:03:20:02
You!

00:03:21:20 - 00:03:24:00
It won't be long now.

00:03:25:17 - 00:03:27:21
Your death is near.

00:03:29:10 - 00:03:32:13
Only I can sustain you.

00:03:38:10 - 00:03:39:13
Let go.

00:03:40:21 - 00:03:42:16
Serve me.

00:03:42:17 - 00:03:43:17
You?

00:03:44:08 - 00:03:45:13
You are nothing.

00:03:45:16 - 00:03:46:17
Nothing?

00:03:47:20 - 00:03:49:04
I am a god.

00:03:52:08 - 00:03:56:10
Before you walked this land, I ruled.

00:04:01:04 - 00:04:03:04
Magnificent.

00:04:05:15 - 00:04:07:03
Serve me.

00:04:07:13 - 00:04:11:21
And we will rebuild my empire.

00:04:19:01 - 00:04:20:01
No.

00:04:20:18 - 00:04:21:18
No?

00:04:22:10 - 00:04:23:23
You dare...

00:04:24:11 - 00:04:25:23
you will die!

00:04:26:06 - 00:04:28:00
A queen!

00:04:28:21 - 00:04:30:15
Not a slave.

00:04:32:13 - 00:04:37:01
You've watched me for a thousand years.

00:04:37:10 - 00:04:40:06
So you know what I want.

00:04:41:19 - 00:04:43:15
Take my people.

00:04:44:04 - 00:04:47:22
With them, I will raise an army.

00:04:48:09 - 00:04:52:20
Conquer your enemies, build an empire...

00:04:53:10 - 00:04:55:03
as queen.

00:04:56:03 - 00:04:57:04
Or...

00:04:57:19 - 00:05:01:19
let me die and you will remain here...

00:05:02:08 - 00:05:03:13
a prisoner.

00:05:04:23 - 00:05:05:23
The god...

00:05:06:11 - 00:05:07:15
of nothing.

00:06:40:23 - 00:06:43:08
Arise Azshara.

00:06:43:17 - 00:06:46:10
Arise my queen.

00:06:53:20 - 00:06:56:17
Magnificent.


]],
	["bfa_820_enc_262_a"] = [[
00:00:14:28 - 00:00:18:16
Keep on them! We cannot let them escape!

00:00:26:05 - 00:00:31:01
My queen...they have arrived.

00:00:31:26 - 00:00:33:22
Wonderful!

00:00:35:03 - 00:00:37:21
Set the tidestone, won’t you?

00:00:47:10 - 00:00:49:24
Feeling anxious, are we?

00:00:50:14 - 00:00:53:19
How frustrating it must be for you...

00:00:54:03 - 00:00:56:13
still locked away

00:00:57:07 - 00:00:59:14
so powerless

00:01:00:15 - 00:01:04:23
For now. Do not worry.

00:01:05:12 - 00:01:08:20
We’ve both waited so long

00:01:09:05 - 00:01:10:13
...but at last...

00:01:11:05 - 00:01:12:29
You’re about to see

00:01:13:04 - 00:01:16:03
what I do best.

00:01:35:13 - 00:01:37:06
She’s not responding!

00:01:37:08 - 00:01:39:28
Set the sails! Set the sails!

00:01:41:11 - 00:01:42:28
We can't escape!

00:02:01:27 - 00:02:05:04
Welcome to Nazjatar.

00:02:05:10 - 00:02:08:24
I’ve been waiting for you.


]],
	["bfa_820_enc_262_h"] = [[
00:00:14:28 - 00:00:18:16
Keep on them! We cannot let them escape!

00:00:26:05 - 00:00:31:01
My queen...they have arrived.

00:00:31:26 - 00:00:33:22
Wonderful!

00:00:35:03 - 00:00:37:21
Set the tidestone, won’t you?

00:00:47:10 - 00:00:49:24
Feeling anxious, are we?

00:00:50:14 - 00:00:53:19
How frustrating it must be for you...

00:00:54:03 - 00:00:56:13
still locked away

00:00:57:07 - 00:00:59:14
so powerless

00:01:00:15 - 00:01:04:23
For now. Do not worry.

00:01:05:12 - 00:01:08:20
We’ve both waited so long

00:01:09:05 - 00:01:10:13
...but at last...

00:01:11:05 - 00:01:12:29
You’re about to see

00:01:13:04 - 00:01:16:03
what I do best.

00:01:35:13 - 00:01:37:06
She’s not responding!

00:01:37:08 - 00:01:39:28
Set the sails! Set the sails!

00:01:41:11 - 00:01:42:28
We can't escape!

00:02:01:27 - 00:02:05:04
Welcome to Nazjatar.

00:02:05:10 - 00:02:08:24
I’ve been waiting for you.


]],
	["bfa_820_enc_261"] = [[
00:01:12:10 - 00:01:18:29
All eyes shall be opened...


]],
	["bfa_820_enc_260"] = [[
Thrall: Thank you. Baine would've died without your aid.
Jaina: I couldn't let that happen.
Thrall: Nor could I. I refuse to fail him like I... failed his father.
Thrall: I wish I could change it all. Cairne... Garrosh... Theramore...
Thrall: Sometimes it feels like I did everything wrong.
Jaina: We all have blood on our hands.
Thrall: And now... Sylvanas will come. Thunderbluff will burn just like Teldrassil.
Jaina: Once before you and I stood side by side on the slopes of Mount Hyjal. That world tree did not fall. Because the Horde and the Alliance worked together.
Thrall: Horde... Alliance... We've come to this crossroad again and again, Jaina. It always falls apart. What's different this time?
Jaina: We are.

Jaina: I should go. Anduin will want to know that Baine is safe.
Saurfang: Tell your king he is not alone.
]],
	["bfa_825_han"] = [[
00:00:02:24 - 00:00:03:24
Anduin.

00:00:04:15 - 00:00:07:21
Sylvanas' actions have threatened us all

00:00:08:08 - 00:00:12:08
and day by day, her power grows.

00:00:13:05 - 00:00:15:24
If our world is to survive

00:00:16:07 - 00:00:18:03
we must strike

00:00:18:05 - 00:00:19:15
while we still can.

00:00:20:27 - 00:00:22:01
Meet with me

00:00:23:00 - 00:00:24:20
and we will speak.

00:00:30:04 - 00:00:31:04
So few...

00:00:32:28 - 00:00:35:13
How many can you provide?

00:00:35:28 - 00:00:38:23
Enough for one final assault.

00:00:39:21 - 00:00:40:23
If that fails...

00:00:42:02 - 00:00:43:02
we're done.

00:00:45:23 - 00:00:47:04
If we end her reign

00:00:48:19 - 00:00:50:27
what kind of warchief will you be?

00:00:56:01 - 00:00:57:24
The Horde I joined

00:00:57:25 - 00:00:59:20
was birthed in blood.

00:01:00:14 - 00:01:03:00
Tainted by corruption.

00:01:03:26 - 00:01:06:04
The road that led to the Dark Portal

00:01:06:07 - 00:01:08:12
was long and wide

00:01:08:29 - 00:01:12:17
paved with the bones of innocents.

00:01:14:11 - 00:01:18:06
we called it the Path of Glory.

00:01:19:19 - 00:01:22:05
That was the great lie upon which

00:01:22:06 - 00:01:24:19
the Horde was founded...

00:01:25:05 - 00:01:28:17
that anything we did was honorable.

00:01:29:02 - 00:01:30:23
Thrall, Vol'jin...

00:01:30:27 - 00:01:32:16
they were not the true heirs

00:01:32:17 - 00:01:34:10
to Blackhand's bloody legacy.

00:01:34:26 - 00:01:38:13
Sylvanas Windrunner is.

00:01:38:18 - 00:01:39:06
No.

00:01:39:20 - 00:01:41:13
No, this is the Horde.

00:01:41:23 - 00:01:42:25
Led by you.

00:01:43:11 - 00:01:44:10
Someone who has....

00:01:44:10 - 00:01:45:12
Honor...

00:01:47:11 - 00:01:49:13
I've never known honor.

00:01:50:27 - 00:01:52:28
They deserve more.

00:01:54:09 - 00:01:56:19
But the Horde is doomed to be shackled

00:01:56:19 - 00:01:58:27
by the chains of the past.

00:01:58:29 - 00:02:01:02
The Horde has no exclusive claim

00:02:01:04 - 00:02:02:02
to regrets.

00:02:02:21 - 00:02:04:14
Arthas, Daelin...

00:02:05:21 - 00:02:07:23
The ghosts of the past haunt us as well.

00:02:08:05 - 00:02:09:19
We could not fill the chasm

00:02:09:20 - 00:02:11:10
between the Horde and Alliance

00:02:11:13 - 00:02:14:11
if we labored 1000 years.

00:02:14:22 - 00:02:16:19
You know this.

00:02:18:15 - 00:02:20:25
Then what are we fighting for?

00:02:32:02 - 00:02:33:01
Soldiers!

00:02:33:07 - 00:02:34:13
On your feet!

00:02:36:02 - 00:02:37:27
Start breaking camp immediately!

00:02:38:05 - 00:02:39:18
Lord Saurfang?

00:02:39:25 - 00:02:40:25
Zekhan...

00:02:41:14 - 00:02:42:23
Where is our home?

00:02:44:25 - 00:02:45:25
Orgrimmar?

00:02:46:02 - 00:02:47:02
Not our city

00:02:47:27 - 00:02:49:15
our home.

00:02:50:11 - 00:02:51:11
Azeroth.

00:02:52:15 - 00:02:53:15
And ours?

00:02:54:03 - 00:02:55:03
Azeroth.

00:02:56:05 - 00:02:57:05
Right now...

00:02:57:10 - 00:02:58:29
there are only two forces in this world

00:02:58:29 - 00:02:59:29
that matter.

00:03:00:22 - 00:03:03:10
One bent on harming our world

00:03:03:22 - 00:03:06:07
And one that will protect her.

00:03:06:13 - 00:03:08:18
So... what are we doing?

00:03:11:29 - 00:03:15:03
Breaking the cycle.


]],
	["bfa_825_sd"] = [[
00:00:22:08 - 00:00:23:10
Varok...

00:00:23:23 - 00:00:24:23
it's time.

00:00:28:12 - 00:00:30:10
Those who defend Orgrimmar

00:00:30:12 - 00:00:32:06
are Horde as well.

00:00:34:11 - 00:00:36:11
Our brothers and sisters.

00:00:39:03 - 00:00:41:20
These warriors have sworn to fight.

00:00:42:13 - 00:00:43:14
For you.

00:00:44:22 - 00:00:48:01
Many lives will be lost.

00:00:50:05 - 00:00:51:13
Or perhaps...

00:00:52:05 - 00:00:53:06
just one.

00:00:56:05 - 00:00:58:10
Sylvanas Windrunner!

00:01:00:08 - 00:01:01:17
I challenge...

00:01:02:13 - 00:01:04:22
Mak'gora!

00:01:17:08 - 00:01:20:14
A traitor leading traitors.

00:01:21:12 - 00:01:24:04
Why should I accept your challenge?

00:01:26:00 - 00:01:29:06
You want to make me suffer.

00:01:45:04 - 00:01:46:04
Brother...

00:01:46:08 - 00:01:47:21
you cannot win.

00:01:50:18 - 00:01:52:07
My old friend.

00:01:53:12 - 00:01:55:20
You... and I....

00:02:00:12 - 00:02:03:03
We don't get to hide.

00:02:09:11 - 00:02:12:00
I set you on this path.

00:02:13:22 - 00:02:16:16
And we knew where it could lead.

00:02:17:10 - 00:02:18:12
Walk with me

00:02:19:05 - 00:02:20:16
the rest of the way.

00:02:47:13 - 00:02:49:08
Let it be finished.

00:03:05:09 - 00:03:08:12
The High Overlord falls.

00:03:11:11 - 00:03:13:09
I trusted you.

00:03:14:09 - 00:03:16:06
And so did they.

00:03:18:09 - 00:03:20:20
Death comes, old soldier.

00:03:22:02 - 00:03:26:12
And all their hope dies with you.

00:03:32:19 - 00:03:35:00
You cannot kill hope.

00:03:36:17 - 00:03:39:09
You tried at Teldrassil.

00:03:39:18 - 00:03:41:01
You failed.

00:03:41:14 - 00:03:43:02
Hope remains.

00:03:43:15 - 00:03:45:06
You set us to kill each other

00:03:45:06 - 00:03:46:16
at Lordaeron.

00:03:46:21 - 00:03:47:21
You failed.

00:03:48:12 - 00:03:50:09
Here we stand.

00:03:50:23 - 00:03:54:10
You just keep failing.

00:03:54:23 - 00:03:57:13
The Horde will endure.

00:03:58:10 - 00:04:00:23
The Horde is strong.

00:04:08:01 - 00:04:10:11
The Horde is nothing!

00:04:22:03 - 00:04:27:12
You are all nothing!

00:04:32:10 - 00:04:35:05
For Azeroth!

00:04:42:16 - 00:04:46:07
If you could see yourselves as I see you.

00:04:47:14 - 00:04:51:09
Toy soldiers in tin plate.

00:04:52:11 - 00:04:55:16
Beasts who howl for honor.

00:04:56:06 - 00:04:58:21
Standing as one.

00:04:59:23 - 00:05:02:01
Savor it...

00:05:03:01 - 00:05:05:23
Nothing lasts.

00:05:21:14 - 00:05:22:14
What...

00:05:23:04 - 00:05:24:08
...do we do now?

00:05:28:14 - 00:05:30:15
We bring him home.


]],
	["bfa_830_von"] = [[
00:00:02:18 - 00:00:03:23
You mean to tell me

00:00:03:23 - 00:00:05:23
none of your spies have returned?

00:00:06:08 - 00:00:07:15
N'Zoth is out there

00:00:07:16 - 00:00:09:21
and we need answers now!

00:00:09:23 - 00:00:11:23
We are doing all we can.

00:00:12:01 - 00:00:13:23
Speaker Magni is coming,

00:00:13:23 - 00:00:16:10
along with a new... advisor.

00:00:16:13 - 00:00:19:04
He claims to have information for us.

00:00:19:23 - 00:00:22:17
By the light, a new advisor.

00:00:28:23 - 00:00:30:04
Wrathion.

00:00:31:23 - 00:00:33:04
Anduin!

00:00:33:06 - 00:00:34:23
It's been so long!

00:00:38:01 - 00:00:39:06
Dragons.

00:00:40:13 - 00:00:43:00
I suppose I deserved that.

00:00:43:13 - 00:00:45:08
Oh, you deserve more than that.

00:00:45:10 - 00:00:47:23
My father is dead because of you!

00:00:47:23 - 00:00:49:23
And my father is dead

00:00:49:23 - 00:00:51:19
because of the Old Gods.

00:00:53:07 - 00:00:56:23
Lad, he's come to help us.

00:01:00:02 - 00:01:01:23
Neltharion the Earth-Warder

00:01:02:01 - 00:01:04:17
was once the protector of Azeroth.

00:01:04:23 - 00:01:07:21
But N'Zoth turned a noble mind to madness,

00:01:07:23 - 00:01:10:06
and now my father

00:01:10:07 - 00:01:12:23
is only remembered as Deathwing.

00:01:13:15 - 00:01:15:23
And, as I haven't the least desire

00:01:15:23 - 00:01:17:09
to share that fate,

00:01:17:11 - 00:01:19:07
I've been studying how to avoid it.

00:01:19:09 - 00:01:21:06
Just tell me

00:01:21:07 - 00:01:23:07
how to prepare for this attack.

00:01:23:11 - 00:01:24:11
Our armies--

00:01:24:13 - 00:01:26:05
Will be useless.

00:01:26:07 - 00:01:29:12
N'Zoth will strike here.

00:01:29:14 - 00:01:31:13
He'll manipulate emotions,

00:01:31:23 - 00:01:33:23
get people to act in ways

00:01:34:00 - 00:01:36:12
contrary to their nature.

00:01:36:18 - 00:01:40:02
You won't be able to trust your senses,

00:01:40:04 - 00:01:41:23
your memories,

00:01:42:23 - 00:01:44:08
your friends.

00:01:45:01 - 00:01:48:02
After all, what is real

00:01:48:23 - 00:01:53:13
if our perceptions cannot be trusted?

00:01:55:23 - 00:01:57:05
Anduin?

00:01:57:07 - 00:01:58:07
Anduin!

00:02:00:23 - 00:02:03:15
Don't you see, old friend?

00:02:04:23 - 00:02:06:08
It's already begun.

00:02:07:06 - 00:02:09:08
Very well, advisor.

00:02:10:02 - 00:02:12:18
Tell us how to stop him.


]],
	["shadowlands_901_npa"] = [[
00:00:02:00 - 00:00:04:00
[ominous orchestral music]

00:00:05:25 - 00:00:07:25
[thunder crashing]

00:00:09:25 - 00:00:11:25
[bell clanging]


]],
	["shadowlands_901_nph"] = [[
00:00:02:00 - 00:00:04:00
[ominous orchestral music]

00:00:05:25 - 00:00:07:25
[thunder crashing]

00:00:09:25 - 00:00:11:25
[bell clanging]


]],
	["shadowlands_901_si"] = [[
00:00:08:17 - 00:00:11:17
[ominous orchestral music]

00:00:21:14 - 00:00:23:19
[Sylvanas] Icecrown.

00:00:25:04 - 00:00:27:23
[metal scrapes]

00:00:28:01 - 00:00:32:00
A monument to our suffering.

00:00:40:19 - 00:00:46:02
The veil between life and death...

00:00:48:12 - 00:00:54:18
where a usurper sits on a Frozen Throne.

00:01:00:03 - 00:01:04:14
But no king rules forever.

00:01:13:03 - 00:01:14:18
[metal scrapes]

00:01:18:19 - 00:01:20:21
[Bolvar snarls]

00:01:31:03 - 00:01:33:03
[army yelling]

00:01:47:20 - 00:01:48:23
[Bolvar grunts]

00:01:53:07 - 00:01:55:05
[wind gusts]

00:01:56:08 - 00:01:57:18
[Bolvar grunts]

00:01:57:20 - 00:01:59:11
[rumbling]

00:02:19:00 - 00:02:21:00
[wind whistling]

00:02:36:12 - 00:02:38:02
[clattering]

00:02:48:21 - 00:02:50:17
[chains rattling]

00:02:50:19 - 00:02:52:21
[Bolvar grunts]

00:03:02:17 - 00:03:04:10
[Sylvanas grunts]

00:03:09:00 - 00:03:10:10
[wind gusts]

00:03:12:04 - 00:03:14:04
[Bolvar panting]

00:03:19:00 - 00:03:21:13
[Bolvar grunts]

00:03:27:06 - 00:03:28:20
[Bolvar grunts]

00:03:34:07 - 00:03:39:12
You are unfit to wear this crown...

00:03:40:21 - 00:03:43:16
[Bolvar groans]

00:03:50:11 - 00:03:56:18
...to wield so much power.

00:03:58:11 - 00:04:03:19
That power... will be your prison.

00:04:06:03 - 00:04:11:02
This world is a prison.

00:04:27:04 - 00:04:29:04
[dramatic orchestral music]

00:04:34:05 - 00:04:36:18
[Sylvanas screams]

00:04:47:00 - 00:04:49:00
[thunder crashing]

00:04:55:04 - 00:04:59:11
And I will set us all...

00:05:00:20 - 00:05:02:08
...free.


]],
	["shadowlands_901_sda"] = [[
00:00:02:00 - 00:00:04:00
[dramatic orchestral music]

00:00:15:06 - 00:00:16:16
[gate unlocks]

00:00:19:01 - 00:00:20:02
[grunts]

00:00:20:21 - 00:00:22:18
[panting]

00:00:27:23 - 00:00:29:00
[grunts]

00:00:29:21 - 00:00:33:16
I knew she would come one day

00:00:34:08 - 00:00:37:20
to seize this power for herself.

00:00:38:06 - 00:00:39:12
Instead,

00:00:40:05 - 00:00:42:10
she has done the unthinkable.

00:00:42:12 - 00:00:44:15
[Sylvanas screams]

00:00:44:17 - 00:00:49:00
Now she will come for them all...

00:00:49:02 - 00:00:51:09
[rumbling]

00:00:52:00 - 00:00:55:18
...to finish what she started...

00:00:56:18 - 00:00:58:18
[rumbling]

00:00:59:22 - 00:01:04:17
...and break all who opposed her.

00:01:05:11 - 00:01:07:11
[rumbling]

00:01:08:23 - 00:01:12:15
Those who held Azeroth together...

00:01:12:17 - 00:01:13:20
[rumbling]

00:01:13:22 - 00:01:17:14
...will be in her sights.

00:01:25:10 - 00:01:27:12
[horse nickers]

00:01:27:14 - 00:01:28:22
[whinnies]

00:01:29:00 - 00:01:30:12
[wind gusting]

00:01:33:19 - 00:01:36:10
[rumbling]

00:01:40:07 - 00:01:41:17
[thunder crashes]

00:01:51:04 - 00:01:52:15
No!

00:01:55:13 - 00:01:57:18
Sylvanas!

00:01:57:20 - 00:02:04:13
And when she comes, our end begins.


]],
	["shadowlands_901_ntc"] = [[
00:00:02:00 - 00:00:04:15
[laughs] Come on!

00:00:04:25 - 00:00:07:19
Is this the best you can do?

00:00:07:21 - 00:00:08:21
[laughs]

00:00:08:23 - 00:00:09:23
[grunts]

00:00:10:07 - 00:00:11:18
[rumbling]

00:00:22:03 - 00:00:23:08
[grunts]

00:00:23:24 - 00:00:25:07
[chuckles]

00:00:29:15 - 00:00:30:26
Ah, now...

00:00:31:21 - 00:00:34:18
Now it's getting interesting. [chuckles]

00:00:34:20 - 00:00:35:25
[grunts]

00:00:36:21 - 00:00:38:20
[dramatic orchestral music]

00:00:39:16 - 00:00:41:15
[snarling]

00:00:59:21 - 00:01:01:27
[fighting grunts continue]

00:01:10:27 - 00:01:12:08
[groans]

00:01:13:07 - 00:01:14:19
[chuckles]

00:01:15:09 - 00:01:16:22
Your power...

00:01:17:19 - 00:01:19:01
[chuckles] ...has grown.

00:01:19:14 - 00:01:20:14
[grunts]

00:01:22:25 - 00:01:24:11
Where is she?

00:01:25:09 - 00:01:27:24
With him, of course.

00:01:28:08 - 00:01:30:25
In the darkest place.

00:01:31:17 - 00:01:34:25
Along with every soul burned to ash

00:01:34:26 - 00:01:36:28
in your precious tree--

00:01:38:04 - 00:01:41:18
Where is she?

00:01:42:00 - 00:01:43:20
[laughs]

00:01:43:22 - 00:01:45:02
Go on.

00:01:45:22 - 00:01:46:28
Kill me.

00:01:47:18 - 00:01:51:14
You'll send me right to my lady. [grunts]

00:01:51:16 - 00:01:54:28
Beyond the veil she shattered.

00:01:55:00 - 00:01:56:01
[chuckles]

00:01:56:03 - 00:01:59:02
Oh, Tyrande!

00:01:59:14 - 00:02:01:18
High Priestess.

00:02:01:28 - 00:02:04:02
Night Warrior.

00:02:04:14 - 00:02:06:20
Completely powerless

00:02:06:20 - 00:02:09:03
to stop the com-- [gasps]

00:02:18:26 - 00:02:20:18
For Teldrassil.


]],
	["shadowlands_901_bta"] = [[
00:00:02:00 - 00:00:04:00
[enchanting orchestral music]

00:00:05:17 - 00:00:08:14
[Tal-Inara] For uncounted eons,

00:00:08:16 - 00:00:12:10
the Shadowlands was in perfect order.

00:00:13:02 - 00:00:15:21
Infinite afterlives,

00:00:15:23 - 00:00:19:17
with Oribos, the Eternal City,

00:00:19:19 - 00:00:21:27
as the shining heart.

00:00:25:05 - 00:00:30:12
Every mortal soul came before the Arbiter.

00:00:31:06 - 00:00:34:04
And she, ever wise,

00:00:34:23 - 00:00:36:16
experienced all

00:00:36:16 - 00:00:39:10
that had shaped a soul in life.

00:00:41:14 - 00:00:43:08
With this knowledge,

00:00:43:10 - 00:00:45:24
she consigned every soul

00:00:45:24 - 00:00:49:18
to the afterlife it justly deserved.

00:00:51:17 - 00:00:53:03
Until...

00:00:59:08 - 00:01:01:08
[Arbiter Shrieks]

00:01:06:16 - 00:01:09:14
[Tal-Inara] In that dread moment,

00:01:09:16 - 00:01:13:04
our perfect order was shattered.

00:01:14:09 - 00:01:17:16
And so it is that every soul,

00:01:17:18 - 00:01:21:01
kind and cruel alike,

00:01:21:03 - 00:01:24:11
is denied its rightful afterlife,

00:01:24:23 - 00:01:27:12
and instead is damned

00:01:27:14 - 00:01:32:00
to the inescapable torment of the Maw.


]],
	["shadowlands_901_ba"] = [[
00:00:02:00 - 00:00:03:21
[wind whistling]

00:00:03:23 - 00:00:06:05
[raspy breathing]

00:00:11:09 - 00:00:14:05
[footsteps approaching]

00:00:20:09 - 00:00:22:10
[metallic scraping]

00:00:26:14 - 00:00:28:14
[raspy breathing]

00:00:31:14 - 00:00:34:19
[Uther] Light... save my soul.

00:00:35:01 - 00:00:38:01
[grand orchestral music]

00:00:43:12 - 00:00:44:16
[Devos] Uther...

00:00:45:11 - 00:00:48:17
[Uther] Where... Where am I?

00:00:49:21 - 00:00:52:16
[Devos] Welcome... to Bastion.

00:00:55:06 - 00:00:58:04
You led a truly selfless life,

00:00:58:11 - 00:00:59:20
and for that,

00:00:59:20 - 00:01:01:23
you have been chosen.

00:01:02:01 - 00:01:03:08
[Uther] Chosen?

00:01:03:10 - 00:01:06:11
[Devos] To shed your mortal burdens

00:01:06:13 - 00:01:10:03
and join the ranks of the ascended,

00:01:10:05 - 00:01:13:03
serving to ferry the souls of the dead

00:01:13:05 - 00:01:15:04
unto the Shadowlands.

00:01:15:06 - 00:01:17:19
[Uther] I serve the Light.

00:01:17:21 - 00:01:20:06
And my work is not done.

00:01:20:08 - 00:01:22:20
There is an evil that must be s--

00:01:22:22 - 00:01:24:22
[Devos] There is no evil here.

00:01:25:00 - 00:01:26:15
The darkness was sealed

00:01:26:16 - 00:01:28:14
within the Maw long ago.

00:01:28:14 - 00:01:30:03
[Uther] You're wrong.

00:01:30:05 - 00:01:32:21
He destroyed my home,

00:01:32:23 - 00:01:35:19
murdered my people and my king.

00:01:35:21 - 00:01:38:00
He must be punished.

00:01:38:02 - 00:01:40:09
[Devos] You are an Aspirant now.

00:01:40:11 - 00:01:43:10
You must accept your new purpose,

00:01:43:12 - 00:01:44:21
and purge yourself

00:01:44:21 - 00:01:47:14
of this desire for vengeance.

00:01:47:19 - 00:01:52:19
[Uther] What I desire... is justice.

00:01:56:11 - 00:01:57:18
[Thenios] Devos,

00:01:57:19 - 00:02:00:10
why are you training this soul?

00:02:00:21 - 00:02:03:20
It is beneath your station as a Paragon.

00:02:03:22 - 00:02:05:22
[Devos] He cannot let go.

00:02:06:00 - 00:02:07:04
He continues

00:02:07:04 - 00:02:09:20
to demand retribution for his death.

00:02:10:03 - 00:02:12:00
[Thenios] And this concerns you?

00:02:12:02 - 00:02:14:23
Many souls take eons to ascend.

00:02:15:01 - 00:02:18:06
[Devos] Yes, but this one seems...

00:02:18:07 - 00:02:20:02
broken, Thenios,

00:02:20:12 - 00:02:22:22
unlike any soul I have seen.

00:02:23:14 - 00:02:24:23
I have begun to wonder

00:02:24:23 - 00:02:27:17
whether he was deemed worthy of Bastion...

00:02:28:12 - 00:02:29:12
by mistake.

00:02:29:14 - 00:02:31:22
[Thenios] Be careful, Devos.

00:02:32:00 - 00:02:34:01
I would not let the Archon hear

00:02:34:02 - 00:02:35:06
such a thought.

00:02:35:11 - 00:02:38:04
In time, he will forget.

00:02:38:19 - 00:02:40:13
Trust our ways.

00:02:41:03 - 00:02:43:06
Trust the path.

00:02:49:13 - 00:02:50:18
[Uther] Devos...

00:02:52:02 - 00:02:54:06
how long must we train?

00:02:54:08 - 00:02:57:05
[Devos] Until you are ready to ascend.

00:02:57:07 - 00:03:00:10
[Uther] And what is keeping me

00:03:00:10 - 00:03:01:21
from ascension?

00:03:02:00 - 00:03:03:03
[Devos] Nothing

00:03:03:10 - 00:03:06:03
but the memory of your mortal life.

00:03:06:08 - 00:03:08:21
[Uther] How can I forget

00:03:08:23 - 00:03:13:01
when I can still feel his blade?

00:03:15:01 - 00:03:19:10
[Devos gasps] Your soul... is wounded?

00:03:20:02 - 00:03:22:03
Who did this to you?

00:03:22:05 - 00:03:25:04
[Uther] He was my student.

00:03:25:06 - 00:03:27:17
He betrayed us all.

00:03:27:19 - 00:03:29:12
[Devos] Show me.

00:03:32:20 - 00:03:38:11
[Uther screams]

00:03:43:10 - 00:03:44:23
[Devos gasps]

00:03:45:23 - 00:03:47:04
[Paragons chattering]

00:03:47:06 - 00:03:49:03
[Devos] The runes on his blade

00:03:49:04 - 00:03:51:04
were unmistakable!

00:03:51:10 - 00:03:53:15
This dark agent runs free

00:03:53:16 - 00:03:54:19
on a mortal world

00:03:54:19 - 00:03:58:15
with the power of the Maw itself in hand!

00:03:58:17 - 00:04:01:11
Our realm is imperiled!

00:04:01:13 - 00:04:03:02
[Thenios] Impossible!

00:04:03:04 - 00:04:05:15
The Maw is inescapable.

00:04:05:17 - 00:04:08:01
You must return to the path.

00:04:08:03 - 00:04:10:07
[Devos] If he had purged his life,

00:04:10:09 - 00:04:12:03
we never would have known

00:04:12:04 - 00:04:13:14
of this calamity!

00:04:13:17 - 00:04:16:03
The path is flawed!

00:04:16:05 - 00:04:17:13
[Archon] Enough!

00:04:18:07 - 00:04:21:06
The order of the Shadowlands depends

00:04:21:07 - 00:04:25:03
on the execution of our eternal charge.

00:04:25:16 - 00:04:29:11
You will abandon this course.

00:04:32:06 - 00:04:36:09
[Devos] As you command... my Archon.

00:04:44:01 - 00:04:45:05
[Devos] Uther!

00:04:46:07 - 00:04:50:16
The time of your ascension has come.

00:04:50:18 - 00:04:54:02
[Uther] I... thought I was not ready.

00:04:54:04 - 00:04:57:00
[Devos] Do you wish to see him punished?

00:04:58:17 - 00:04:59:17
[Uther] I do.

00:04:59:19 - 00:05:02:11
[Devos] Then prepare yourself.

00:05:13:04 - 00:05:16:05
The moment he falls...

00:05:17:11 - 00:05:19:16
we will claim him.

00:05:19:18 - 00:05:21:18
[wind howling]

00:05:33:06 - 00:05:34:09
[Arthas] I see...

00:05:36:23 - 00:05:39:00
only darkness...

00:05:40:22 - 00:05:42:23
before me.

00:05:49:20 - 00:05:53:11
[Devos] Now, cast him into the Maw!

00:05:54:01 - 00:05:57:15
Return him to the darkness he served!

00:05:58:06 - 00:06:02:09
His eternal suffering awaits.

00:06:04:17 - 00:06:06:04
[Uther] He was...

00:06:06:06 - 00:06:09:01
my student.

00:06:09:03 - 00:06:12:22
[Devos] Remember what he did

00:06:13:00 - 00:06:16:08
and take your vengeance.

00:06:16:10 - 00:06:18:20
[Uther] Not vengeance.

00:06:19:15 - 00:06:20:21
Justice.

00:06:22:18 - 00:06:24:18
[epic orchestral music]
]],
	["shadowlands_901_aw"] = [[
00:00:02:16 - 00:00:05:16
[somber orchestral music]

00:00:05:18 - 00:00:08:09
[snarling intensifies]

00:00:09:16 - 00:00:10:20
[Ursoc roars]

00:00:10:22 - 00:00:14:03
The Wilds tremble before my fury!

00:00:14:05 - 00:00:15:21
[roars]

00:00:17:06 - 00:00:18:13
[roars]

00:00:18:15 - 00:00:19:20
[thud]

00:00:19:22 - 00:00:21:17
[Ursoc groans]

00:00:22:21 - 00:00:27:13
The Nightmare's veil... is lifted.

00:00:27:15 - 00:00:29:15
[somber orchestral music]

00:00:33:11 - 00:00:36:03
I return at last...

00:00:36:17 - 00:00:39:12
to the long slumber...

00:00:39:14 - 00:00:40:22
[wind howling]

00:00:41:00 - 00:00:44:16
...to the great forest beyond...

00:00:45:10 - 00:00:50:03
until I may serve the Wilds again.

00:00:56:21 - 00:00:59:19
[enchanting orchestral music]

00:01:30:15 - 00:01:33:20
[Ara'lon] Welcome to my grove... friend.

00:01:33:22 - 00:01:35:18
[wind whistling]

00:01:35:20 - 00:01:38:10
[gasps] My Queen!

00:01:39:11 - 00:01:41:10
I shall protect these souls

00:01:41:10 - 00:01:42:10
through their winter.

00:01:43:07 - 00:01:45:15
I shall see them reborn in their spring...

00:01:46:22 - 00:01:49:03
no matter what trial I face.

00:01:50:10 - 00:01:52:04
I swear it, my Queen.

00:01:53:10 - 00:01:54:17
I swear it.

00:02:00:08 - 00:02:01:14
Rest well...

00:02:02:18 - 00:02:04:05
and dream.

00:02:10:08 - 00:02:11:13
[Ara'lon sighs]

00:02:13:15 - 00:02:17:23
Season after season of this drought.

00:02:19:13 - 00:02:21:08
[sighs] Here.

00:02:22:04 - 00:02:25:14
Here. It's so little, I know.

00:02:34:17 - 00:02:36:15
[foliage rustling

00:02:36:17 - 00:02:39:08
[Ara'lon panting]

00:02:41:14 - 00:02:43:16
[gasps softly]

00:02:46:18 - 00:02:48:11
[Vorkai] It must be done.

00:02:49:09 - 00:02:51:21
Reclaim everything from this grove.

00:02:52:08 - 00:02:53:10
Everything.

00:02:56:18 - 00:02:59:06
[Ara'lon] No. No! No!

00:02:59:08 - 00:03:00:11
No! No!

00:03:00:13 - 00:03:02:07
[Vorkai snarling]

00:03:02:09 - 00:03:04:05
[Ara'lon] This is my grove!

00:03:04:19 - 00:03:06:13
You will not destroy them!

00:03:08:19 - 00:03:10:03
[Vorkai] Ara'lon!

00:03:10:14 - 00:03:13:01
We are not your enemy.

00:03:13:15 - 00:03:16:11
[Ara'lon] Anyone who threatens my grove

00:03:16:11 - 00:03:17:19
is my enemy.

00:03:17:22 - 00:03:20:02
I swore an oath!

00:03:20:18 - 00:03:22:16
[Ara'lon gasps]

00:03:23:11 - 00:03:24:18
My Queen...

00:03:26:13 - 00:03:29:16
I kept faith... all this time

00:03:29:17 - 00:03:31:06
that you would save us.

00:03:32:10 - 00:03:33:16
And now you send...

00:03:35:03 - 00:03:37:14
scavengers to my grove?

00:03:37:23 - 00:03:40:10
[panting] Why?

00:03:45:06 - 00:03:47:14
[Ara'lon gasps]

00:03:47:16 - 00:03:49:16
[trees cracking]

00:04:02:10 - 00:04:04:15
[Huntmaster] You saw what is to come.

00:04:04:17 - 00:04:08:04
[Ara'lon gasps] Ardenweald is... dying.

00:04:09:18 - 00:04:11:23
[Huntmaster] It must be saved.

00:04:12:01 - 00:04:15:07
The Queen has called the Wild Hunt.

00:04:16:10 - 00:04:18:05
[Vorkai] We have culled your grove

00:04:18:19 - 00:04:20:00
so that others might live.

00:04:21:17 - 00:04:24:06
[Huntmaster] Will you sacrifice one soul

00:04:24:07 - 00:04:25:20
for the forest entire?

00:04:28:11 - 00:04:31:07
Or will you keep your oath?

00:04:37:02 - 00:04:39:23
[Winter Queen] Your heart is pure.

00:04:41:03 - 00:04:45:03
I will honor your choice.

00:04:54:15 - 00:04:57:08
[distant, muffled snarling]

00:05:00:16 - 00:05:03:00
[Ara'lon] One last time,

00:05:03:01 - 00:05:04:17
you serve the Wilds.

00:05:07:00 - 00:05:10:01
You will not be forgotten.

00:05:12:16 - 00:05:15:21
Forgive me... friend.

00:05:20:10 - 00:05:22:10
[somber orchestral music]

00:05:39:20 - 00:05:43:02
[Ara'lon] I will hunt for you, my Queen.

00:05:43:04 - 00:05:45:04
[soaring orchestral music]

00:05:47:08 - 00:05:49:15
[Ara'lon] For Ardenweald...

00:05:49:17 - 00:05:52:22
and for the souls we can yet save.

00:05:54:11 - 00:05:55:16
I swear it.

00:05:58:08 - 00:05:59:18
I swear it.


]],
	["shadowlands_901_mx"] = [[
00:00:05:19 - 00:00:08:10
[Draka] In life, I was Draka,

00:00:08:11 - 00:00:10:11
of the Frostwolf clan.

00:00:11:08 - 00:00:14:21
A warrior... who gave everything...

00:00:14:23 - 00:00:15:23
[Orc roars]

00:00:17:10 - 00:00:19:05
[Draka groans]

00:00:19:07 - 00:00:23:02
[Draka] ...to protect what mattered most.

00:00:23:04 - 00:00:25:02
[baby cries] [Draka groans]

00:00:25:04 - 00:00:28:09
[Draka] But I was not done fighting.

00:00:32:08 - 00:00:34:10
[Draka] Maldraxxus,

00:00:34:12 - 00:00:37:08
where the armies of the five houses

00:00:37:09 - 00:00:40:01
once stood side by side,

00:00:40:07 - 00:00:44:03
to protect the realm of death.

00:00:44:19 - 00:00:49:00
It was here I served the House of Eyes.

00:00:49:15 - 00:00:53:10
A strange fit for a warrior's soul.

00:00:53:12 - 00:00:55:02
[Margrave Akarek] Again.

00:00:56:00 - 00:00:59:08
[Draka] Their ways were not mine.

00:01:00:21 - 00:01:02:05
[Margrave Akarek] Faster!

00:01:05:01 - 00:01:06:12
[Margrave Akarek] Again!

00:01:07:14 - 00:01:10:21
[Draka] Eventually, this life after life

00:01:11:07 - 00:01:13:19
began to feel right.

00:01:14:02 - 00:01:15:04
[Draka grunts]

00:01:21:07 - 00:01:22:23
[Margrave Akarek] The House of Plagues

00:01:23:00 - 00:01:24:21
lies in ruins.

00:01:25:10 - 00:01:30:18
One fifth of Maldraxxus wiped out.

00:01:30:20 - 00:01:31:23
[Draka] It is hard to believe

00:01:32:00 - 00:01:34:03
they could be so careless.

00:01:34:10 - 00:01:37:03
[Margrave Akarek] Perhaps they weren't.

00:01:37:17 - 00:01:39:20
No matter what happens now,

00:01:39:22 - 00:01:44:02
Maldraxxus must stay true to its purpose.

00:01:44:04 - 00:01:47:06
For if we fail in our duty,

00:01:47:08 - 00:01:50:14
the Shadowlands will fall.

00:01:51:17 - 00:01:54:02
I believe the House of the Chosen

00:01:54:03 - 00:01:56:03
still stands with us.

00:01:56:10 - 00:01:59:06
And I trust you to deliver this

00:01:59:06 - 00:02:01:07
to Margrave Krexus.

00:02:01:18 - 00:02:03:16
Now, go.

00:02:04:16 - 00:02:08:16
And Draka... be watchful.

00:02:08:18 - 00:02:10:18
[Draka panting]

00:02:10:20 - 00:02:12:20
[epic orchestral music]

00:02:21:11 - 00:02:22:14
[Draka] My brothers,

00:02:22:14 - 00:02:24:07
I am on urgent business!

00:02:24:08 - 00:02:26:07
[distant explosion]

00:02:28:02 - 00:02:29:21
[gasps] My lord!

00:02:30:19 - 00:02:33:04
Hurry! There could be survivors!

00:02:38:01 - 00:02:39:14
[Draka grunts]

00:02:40:20 - 00:02:42:11
[Draka groans]

00:02:48:03 - 00:02:49:22
[Draka grunts] [bodies thud]

00:02:54:04 - 00:02:55:19
[Draka grunts softly]

00:02:55:21 - 00:02:57:03
[Draka yells]

00:03:03:06 - 00:03:04:15
[Margrave Krexus] So,

00:03:04:16 - 00:03:07:13
these are the traitors you spoke of

00:03:07:20 - 00:03:10:02
[Draka] I would not let such ur'gora

00:03:10:03 - 00:03:11:17
prevent me

00:03:11:20 - 00:03:15:07
from delivering my lord's final message.

00:03:16:06 - 00:03:18:18
[Margrave Krexus] Ordeals such as this

00:03:18:19 - 00:03:22:17
either break the sword or strengthen it.

00:03:23:23 - 00:03:25:08
Hmm.

00:03:25:09 - 00:03:29:02
"I offer the key to saving Maldraxxus."

00:03:30:07 - 00:03:32:15
[Draka] I am sorry, Margrave.

00:03:32:17 - 00:03:35:10
He gave me no... key.

00:03:37:14 - 00:03:39:22
[Margrave Krexus] An unyielding warrior

00:03:39:23 - 00:03:42:21
with the skills of a master spy?

00:03:43:15 - 00:03:46:21
A key to many things.

00:03:47:12 - 00:03:51:19
Come, our enemies will strike openly soon.

00:03:52:15 - 00:03:54:04
We must prepare.

00:03:55:23 - 00:03:58:04
[Draka] I am Draka,

00:03:58:06 - 00:04:01:12
once of the Frostwolf clan,

00:04:01:14 - 00:04:06:09
now Baroness of the House of the Chosen.

00:04:07:07 - 00:04:09:09
And most of all,

00:04:09:11 - 00:04:13:07
a protector of Maldraxxus.


]],
	["shadowlands_901_rd"] = [[
00:00:06:03 - 00:00:07:20
[Orc screams]

00:00:08:12 - 00:00:10:13
[Orc panting]

00:00:10:15 - 00:00:12:15
[Orc screams]

00:00:12:17 - 00:00:14:04
[Orc groans]

00:00:14:06 - 00:00:16:10
[Orc screams]

00:00:16:12 - 00:00:18:13
[Orc groans]

00:00:18:15 - 00:00:20:17
[Orc screams]

00:00:21:15 - 00:00:23:15
[Orc panting]

00:00:23:17 - 00:00:26:09
[Orc screams]

00:00:29:10 - 00:00:32:10
[sprightly orchestral music]

00:00:34:17 - 00:00:36:12
[Denathrius] To the good people

00:00:36:13 - 00:00:38:05
of Revendreth...

00:00:39:11 - 00:00:40:18
It is with optimism

00:00:40:19 - 00:00:42:17
that I address you today...

00:00:42:18 - 00:00:43:22
[quill scratching]

00:00:44:00 - 00:00:47:00
...though these are challenging times.

00:00:48:04 - 00:00:50:04
Firstly, I assure you

00:00:50:05 - 00:00:51:21
that our holy mission

00:00:51:22 - 00:00:53:05
to help the most violent

00:00:53:06 - 00:00:56:03
and wicked souls atone for their sins

00:00:56:04 - 00:00:58:16
is, and always will be,

00:00:58:17 - 00:01:00:22
our utmost priority.

00:01:03:03 - 00:01:05:14
Our rituals are effective,

00:01:06:02 - 00:01:09:14
our judgment keen but fair.

00:01:10:04 - 00:01:12:21
We venthyr remain committed

00:01:12:21 - 00:01:15:00
to bringing eventual redemption

00:01:15:01 - 00:01:17:06
to all who desire it.

00:01:17:08 - 00:01:19:20
It is through your faithful work

00:01:19:22 - 00:01:21:17
that even the most evil

00:01:21:18 - 00:01:23:17
and prideful beings

00:01:23:18 - 00:01:25:12
may ultimately be spared

00:01:25:12 - 00:01:27:17
an eternity in the Maw.

00:01:28:16 - 00:01:30:21
Unfortunately, of late,

00:01:30:23 - 00:01:34:04
the flow of such hubris-ridden souls

00:01:34:04 - 00:01:37:10
has virtually ceased.

00:01:37:11 - 00:01:39:16
And as a result, anima,

00:01:39:17 - 00:01:42:08
our most precious resource,

00:01:42:09 - 00:01:44:14
is in dwindling supply.

00:01:45:03 - 00:01:46:08
Even we,

00:01:46:09 - 00:01:48:22
the faithful who extract the anima,

00:01:48:23 - 00:01:50:14
have not been spared

00:01:50:15 - 00:01:54:09
the effects of this mysterious drought.

00:01:55:11 - 00:01:59:06
Yes, we still have our "old reliables,"

00:01:59:06 - 00:02:01:00
our workhorses.

00:02:01:01 - 00:02:02:06
[Orc screams]

00:02:02:08 - 00:02:03:23
[Denathrius] Yet I fear

00:02:03:23 - 00:02:06:04
they will not be enough.

00:02:06:15 - 00:02:09:07
We are doing everything in our power

00:02:09:07 - 00:02:10:23
to gather more anima.

00:02:11:11 - 00:02:14:05
But, simply put, we must all,

00:02:14:07 - 00:02:16:08
rich and poor alike,

00:02:16:10 - 00:02:20:18
make sacrifices for the greater good.

00:02:22:05 - 00:02:25:01
Therefore, I have decided to implement

00:02:25:01 - 00:02:28:14
a strategy of conservation and rationing,

00:02:28:15 - 00:02:31:10
which should keep the anima flowing

00:02:31:10 - 00:02:34:06
to those most in need.

00:02:34:07 - 00:02:35:18
[Venthyr cheering]

00:02:43:12 - 00:02:44:16
[Denathrius] In this manner,

00:02:44:16 - 00:02:46:15
we will keep our people strong

00:02:46:16 - 00:02:48:03
and our land healthy...

00:02:49:02 - 00:02:51:00
despite the efforts of those

00:02:51:00 - 00:02:52:22
who would use this crisis

00:02:52:23 - 00:02:55:07
to further their own ends

00:02:55:09 - 00:02:56:19
and rebel against

00:02:56:19 - 00:03:00:14
the rightful structures of our society.

00:03:02:15 - 00:03:05:06
Rest assured, we shall bring

00:03:05:06 - 00:03:08:02
these miscreants to justice.

00:03:08:10 - 00:03:11:07
With fairness and mercy, of course.

00:03:12:02 - 00:03:14:11
[chuckles] I am, after all,

00:03:14:11 - 00:03:17:18
nothing if not compassionate.

00:03:17:19 - 00:03:18:23
[quill scratching]

00:03:19:01 - 00:03:20:18
My loyal subjects,

00:03:20:20 - 00:03:23:12
we are doing all that can be done

00:03:23:12 - 00:03:25:14
to stimulate anima production

00:03:25:15 - 00:03:26:19
and fulfill

00:03:26:19 - 00:03:29:03
Revendreth's honorable purpose.

00:03:29:17 - 00:03:31:02
[inhales deeply]

00:03:31:04 - 00:03:33:12
Remain devout and resolute...

00:03:34:14 - 00:03:37:04
and know that I will lead us all

00:03:37:04 - 00:03:39:14
into a brighter future.

00:03:39:16 - 00:03:42:02
[Venthyr sizzling]


]],
	["shadowlands_901_lc"] = [[
00:00:04:10 - 00:00:06:11
[Archon] Beyond the veil

00:00:06:11 - 00:00:08:23
lies the Shadowlands...

00:00:10:23 - 00:00:15:05
where every soul has its place.

00:00:15:07 - 00:00:17:08
[dramatic orchestral music]

00:00:40:18 - 00:00:42:22
[wind gusting]

00:00:48:10 - 00:00:50:10
[army yelling in distance]

00:01:19:07 - 00:01:20:12
Hmm.

00:01:23:07 - 00:01:24:10
[scoffs]

00:01:25:22 - 00:01:27:22
[screaming]

00:01:29:00 - 00:01:31:00
[chains rattling]

00:01:33:01 - 00:01:37:11
[Jailer] Beyond the veil lies darkness,

00:01:37:13 - 00:01:41:20
where every soul has its place.

00:01:41:22 - 00:01:44:08
[orchestral music crescendos]
]],
	["shadowlands_901_etm"] = [[
00:00:04:07 - 00:00:06:17
[ominous orchestral music]

00:00:09:22 - 00:00:12:04
[Jaina] I won't. Not again.

00:00:12:06 - 00:00:13:29
No. No!

00:00:14:01 - 00:00:15:23
I will not yield!

00:00:16:04 - 00:00:18:21
My mind is my own!

00:00:19:06 - 00:00:20:18
Do you hear me?

00:00:20:20 - 00:00:22:23
[Jaina Screams]

00:00:24:09 - 00:00:26:04
[Thrall Grunts]

00:00:26:06 - 00:00:27:27
[Thrall yells]

00:00:28:10 - 00:00:29:29
[Thrall] Whoever you are,

00:00:29:29 - 00:00:31:15
whatever you want,

00:00:31:25 - 00:00:33:20
I will fight you!

00:00:34:13 - 00:00:37:02
You will not break me!

00:00:37:23 - 00:00:39:23
[Thrall yells]

00:00:42:15 - 00:00:43:17
[Sylvanas] They have breached

00:00:43:18 - 00:00:45:10
the Seat of the Primus

00:00:45:29 - 00:00:47:29
and discovered his warning.

00:00:48:24 - 00:00:50:19
[Jailer] Unfortunate,

00:00:50:23 - 00:00:53:04
but of little consequence.

00:00:54:10 - 00:00:57:19
Our eyes are everywhere.

00:00:58:11 - 00:01:03:09
This nuisance will be dealt with.

00:01:03:11 - 00:01:04:25
[music crescendos]


]],
	["shadowlands_901_ysr"] = [[
00:00:04:13 - 00:00:07:12
[Moonberry] My queen! Please help us.

00:00:09:01 - 00:00:13:15
This... is of my sister.

00:00:14:08 - 00:00:17:02
Why have you brought it to me?

00:00:17:04 - 00:00:20:15
This one... is slipping away.

00:00:21:04 - 00:00:23:20
Our duty is grim.

00:00:24:08 - 00:00:26:06
Many have been lost.

00:00:26:19 - 00:00:30:04
Why should I save her pet?

00:00:30:06 - 00:00:33:04
Those who have dreamed by its side

00:00:33:06 - 00:00:36:09
awaken with a joy and peace

00:00:36:11 - 00:00:38:22
that whispers of wonder.

00:00:39:13 - 00:00:41:03
If she dies,

00:00:41:18 - 00:00:44:20
then all that is emerald dies with her.

00:00:45:22 - 00:00:48:19
Some must be sacrificed.

00:00:49:07 - 00:00:52:20
But some must be saved.

00:00:53:15 - 00:00:55:18
If we forget that,

00:00:55:20 - 00:00:59:16
all that will remain will be empty shells

00:00:59:18 - 00:01:01:08
and sorrow.

00:01:18:01 - 00:01:20:11
[enchanting orchestral music]

00:01:52:06 - 00:01:53:22
[roars]

00:01:58:07 - 00:01:59:17
[roars]


]],
	["shadowlands_901_rme"] = [[
00:00:02:00 - 00:00:03:22
[dramatic orchestral music]

00:00:03:24 - 00:00:05:03
[Gargoyles screeching]

00:00:08:18 - 00:00:10:21
[Venthyr screams]

00:00:10:23 - 00:00:12:17
[Venthyr screams]

00:00:13:04 - 00:00:15:09
[Gargoyle screeches]

00:00:16:17 - 00:00:18:09
[Renathal yells]

00:00:31:10 - 00:00:33:15
Denathrius!

00:00:40:13 - 00:00:42:09
[Renathal panting]

00:00:46:17 - 00:00:47:29
[Renathal grunting]

00:00:56:20 - 00:00:59:28
[grunting continues]

00:01:00:19 - 00:01:02:25
[Renathal breathing raggedly]

00:01:04:17 - 00:01:06:23
[Renathal groans]

00:01:07:13 - 00:01:11:29
This was your valiant last stand?

00:01:12:01 - 00:01:14:14
[Renathal panting]

00:01:14:16 - 00:01:15:16
[Renathal gasps]

00:01:17:12 - 00:01:19:21
For so very long,

00:01:19:23 - 00:01:22:25
you've punished arrogant souls.

00:01:23:11 - 00:01:24:20
But instead of learning

00:01:24:21 - 00:01:26:10
from their suffering,

00:01:26:12 - 00:01:28:20
you've become one of them.

00:01:29:16 - 00:01:34:02
You just needed to obey.

00:01:35:09 - 00:01:38:16
How fortunate you are

00:01:38:18 - 00:01:40:19
to witness the splendor

00:01:40:20 - 00:01:43:07
of what is about to unfold.

00:01:45:21 - 00:01:48:07
Every precious drop of anima,

00:01:48:09 - 00:01:50:04
so painstakingly wrung

00:01:50:05 - 00:01:53:13
from the tortured souls of lesser beings,

00:01:53:15 - 00:01:55:28
now paves the path

00:01:56:00 - 00:01:57:26
for the Banished One

00:01:57:27 - 00:02:00:29
to reclaim what was his.

00:02:01:10 - 00:02:04:22
And once his liberation is secured,

00:02:04:24 - 00:02:07:01
it shall be by his will

00:02:07:02 - 00:02:09:20
that all is washed away.

00:02:10:20 - 00:02:12:23
The only power that will emerge

00:02:12:24 - 00:02:17:12
from this torrent of change is Death.

00:02:18:02 - 00:02:24:01
Death, and those who shaped its victory.

00:02:24:03 - 00:02:27:23
Someone will stop you, Denathrius!

00:02:28:06 - 00:02:30:04
Even if I-- [chokes]

00:02:30:06 - 00:02:33:23
Shh. Do not speak.

00:02:34:07 - 00:02:35:28
Observe.

00:02:41:01 - 00:02:43:08
[Renathal choking]

00:02:53:16 - 00:02:54:29
[Renathal inhales weakly]

00:02:58:16 - 00:02:59:21
[Renathal groans]

00:03:00:10 - 00:03:04:22
Remember this lesson.


]],
	["shadowlands_901_pim"] = [[
00:00:02:00 - 00:00:04:00
[ominous orchestral music]

00:00:09:20 - 00:00:12:05
[heavy door opening]

00:00:17:16 - 00:00:19:26
[door slams shut]

00:00:26:05 - 00:00:28:20
I do hope you've settled in.

00:00:29:02 - 00:00:31:19
The accommodations are a bit...

00:00:31:20 - 00:00:33:18
sparse, I know.

00:00:33:26 - 00:00:36:23
Where are the others? Are they safe?

00:00:37:11 - 00:00:38:22
Safe?

00:00:39:07 - 00:00:40:08
No.

00:00:40:20 - 00:00:44:14
I wouldn't say any of them are... safe.

00:00:44:26 - 00:00:49:05
I am so tired of your games.

00:00:50:02 - 00:00:51:12
As you wish.

00:00:55:18 - 00:00:57:03
No more secrets.

00:00:57:25 - 00:00:59:21
No more lies.

00:00:59:23 - 00:01:02:14
You are a weapon we will use

00:01:02:15 - 00:01:04:24
to achieve our ends.

00:01:05:04 - 00:01:08:08
I will not become an instrument of death.

00:01:08:10 - 00:01:12:21
So you favor... life, is that it?

00:01:13:10 - 00:01:16:03
That momentary flicker.

00:01:16:05 - 00:01:18:05
Every cruel second

00:01:18:06 - 00:01:20:12
spent delaying the inevitable

00:01:20:18 - 00:01:23:00
in an endless war that you,

00:01:23:02 - 00:01:26:02
like every Wrynn before you,

00:01:26:04 - 00:01:28:07
will not survive.

00:01:28:19 - 00:01:31:24
You know the truth.

00:01:31:26 - 00:01:34:04
Nothing is fair.

00:01:34:06 - 00:01:37:17
Not life, not death.

00:01:37:19 - 00:01:41:16
So we're going to tear it all down.

00:01:41:18 - 00:01:43:15
And what purpose will that serve?

00:01:46:10 - 00:01:49:00
Everyone suffers, Sylvanas.

00:01:49:02 - 00:01:50:08
But destroying everything

00:01:50:09 - 00:01:51:19
will not take away the pain.

00:01:52:17 - 00:01:54:21
Ah, you misunderstand.

00:01:55:05 - 00:01:57:03
We're breaking a system

00:01:57:04 - 00:01:59:04
that has always been flawed,

00:01:59:14 - 00:02:03:20
and remaking it into one that is just.

00:02:03:22 - 00:02:05:02
[Anduin chuckles]

00:02:05:15 - 00:02:07:26
Do you expect me to believe

00:02:07:27 - 00:02:09:15
that, all this time,

00:02:09:20 - 00:02:12:09
you've been fighting for justice?

00:02:12:11 - 00:02:13:16
[Sylvanas sighs]

00:02:13:28 - 00:02:16:09
How can I convince you?

00:02:17:07 - 00:02:20:25
From our first breath to our last,

00:02:20:27 - 00:02:24:11
every decision is made for us.

00:02:24:21 - 00:02:27:17
Then the afterlife decides

00:02:27:18 - 00:02:30:03
what eternity we must endure.

00:02:30:13 - 00:02:32:13
We can't even choose who we...

00:02:33:29 - 00:02:35:14
[Sylvanas sighs]

00:02:35:16 - 00:02:39:15
We couldn't control anything.

00:02:39:17 - 00:02:41:08
But through the Jailer,

00:02:41:10 - 00:02:44:01
control of our fate

00:02:44:03 - 00:02:47:02
will at last be possible.

00:02:47:04 - 00:02:49:02
Look around you!

00:02:49:16 - 00:02:52:19
At what, and who you've joined.

00:02:53:05 - 00:02:55:11
What makes you believe you're not just

00:02:55:12 - 00:02:58:12
a weapon to achieve his ends?

00:03:00:00 - 00:03:02:05
You have a choice to consider.

00:03:02:19 - 00:03:04:18
Join us willingly...

00:03:05:18 - 00:03:07:17
...or be made to serve.

00:03:08:18 - 00:03:09:19
I thought you believed

00:03:09:20 - 00:03:11:19
in free will, Sylvanas.

00:03:12:08 - 00:03:17:02
We've never had free will, Little Lion.

00:03:17:21 - 00:03:22:01
But that... is about to change.

00:03:22:28 - 00:03:24:15
[door slams shut]


]],
	["shadowlands_901_asc"] = [[
00:00:02:00 - 00:00:04:25
[metallic clanging continues]

00:00:05:13 - 00:00:06:29
[Sylvanas] Sire Denathrius

00:00:06:29 - 00:00:08:02
has been taken prisoner.

00:00:09:01 - 00:00:11:07
What is our plan to recover him?

00:00:11:10 - 00:00:14:29
Every soul has its purpose.

00:00:15:29 - 00:00:20:00
Denathrius has fulfilled his.

00:00:24:14 - 00:00:28:09
We must forge our next weapon.

00:00:29:09 - 00:00:31:19
He's not ready.

00:00:31:29 - 00:00:34:28
[Jailer] Then a more direct approach

00:00:34:29 - 00:00:36:29
is necessary.

00:00:37:29 - 00:00:40:27
We have not come this far

00:00:40:28 - 00:00:43:18
only to falter now.

00:00:44:29 - 00:00:48:06
You know what must be done.

00:00:50:09 - 00:00:52:09
[footsteps approaching]

00:00:53:29 - 00:00:57:13
[sighs] There she is again.

00:00:57:15 - 00:00:58:15
You know,

00:00:58:16 - 00:01:00:01
these endless lectures of yours--

00:01:00:02 - 00:01:03:04
[Sylvanas] ...have failed to convince you.

00:01:03:06 - 00:01:07:04
Regardless, the conversation is over.

00:01:07:20 - 00:01:12:01
One way or another, we will have you.

00:01:12:04 - 00:01:17:26
So I will offer this, one last time.

00:01:18:10 - 00:01:23:01
Join our cause, or be made to serve.

00:01:23:04 - 00:01:25:01
What kind of choice is that?

00:01:25:24 - 00:01:27:00
Why even give me...

00:01:29:07 - 00:01:31:14
It's the choice you never had.

00:01:32:07 - 00:01:35:07
Despite all your grand designs,

00:01:35:23 - 00:01:37:07
there's still some shred

00:01:37:09 - 00:01:39:13
of your mortality haunting you,

00:01:39:14 - 00:01:41:16
as if the Banshee Queen hasn't

00:01:41:18 - 00:01:44:02
entirely eclipsed the Ranger General.

00:01:44:04 - 00:01:45:04
Don't.

00:01:45:06 - 00:01:46:19
[Anduin] Now I understand

00:01:46:19 - 00:01:47:28
why you brought me here.

00:01:47:29 - 00:01:51:05
Why you've tried so hard to persuade me.

00:01:51:07 - 00:01:52:23
Because if you can get me

00:01:52:24 - 00:01:54:18
to let go of hope,

00:01:54:19 - 00:01:56:07
you finally can, too.

00:01:56:10 - 00:01:57:13
Enough!

00:01:58:21 - 00:02:00:09
Submit.

00:02:00:11 - 00:02:02:29
You are only making this harder

00:02:02:29 - 00:02:04:23
on yourself.

00:02:04:24 - 00:02:06:24
Not harder on me.

00:02:07:06 - 00:02:11:02
Right now, you hold all the power.

00:02:11:21 - 00:02:13:15
How will you use it?

00:02:14:09 - 00:02:19:29
I've not come this far to falter now.

00:02:19:29 - 00:02:22:13
Then why do you hesitate?

00:02:23:15 - 00:02:24:29
[grip tightens]

00:02:24:29 - 00:02:26:26
Make your choice...

00:02:27:26 - 00:02:29:29
Sylvanas Windrunner.
]],
	["shadowlands_910_aaa"] = [[
00:00:04:11 - 00:00:07:10
[Thenios] Despite all our efforts,

00:00:07:12 - 00:00:10:09
the Maw continues to grow.

00:00:11:00 - 00:00:12:23
What if Denathrius's treachery

00:00:12:23 - 00:00:14:09
is irreparable?

00:00:14:10 - 00:00:16:01
The Primus is lost,

00:00:16:03 - 00:00:17:14
and Bastion cannot save

00:00:17:14 - 00:00:19:08
the Shadowlands alone.

00:00:20:01 - 00:00:22:29
None of this should have happened.

00:00:23:10 - 00:00:25:28
Perhaps the Winter Queen could...

00:00:26:00 - 00:00:27:02
[wings flapping]

00:00:29:12 - 00:00:30:27
My Archon...

00:00:30:28 - 00:00:34:13
a living soul seeks an audience.

00:00:34:14 - 00:00:35:24
A mortal?

00:00:36:10 - 00:00:37:24
A king.

00:00:37:26 - 00:00:39:27
[uplifting orchestral music]

00:00:39:29 - 00:00:41:21
[Kleia] By all our measures...

00:00:42:21 - 00:00:44:24
one who has spent his life

00:00:44:26 - 00:00:47:01
striving for justice.

00:00:49:05 - 00:00:51:22
One who would give anything

00:00:51:23 - 00:00:53:28
to serve his people.

00:00:57:05 - 00:00:59:02
One whose heart...

00:00:59:26 - 00:01:01:01
is true.

00:01:01:03 - 00:01:02:06
Very well.

00:01:03:05 - 00:01:04:28
He may approach.

00:01:09:13 - 00:01:11:00
Step forward.

00:01:14:22 - 00:01:17:11
My Ascended have spoken of you.

00:01:17:29 - 00:01:20:27
The king held captive in the Maw.

00:01:21:26 - 00:01:25:13
That prison could not hold me forever.

00:01:25:14 - 00:01:28:05
Why have you come to Bastion?

00:01:29:02 - 00:01:33:13
You have a key that I need.

00:01:35:04 - 00:01:36:11
You...

00:01:37:02 - 00:01:40:29
will release this soul from your grasp!

00:01:41:01 - 00:01:42:09
[Anduin] No.

00:01:42:11 - 00:01:45:11
He is bound to me...

00:01:45:13 - 00:01:47:23
[Jailer] ...just as you once sought

00:01:47:23 - 00:01:51:10
to bind your own brother!

00:01:51:11 - 00:01:53:02
[dramatic orchestral music]

00:02:06:22 - 00:02:07:23
[Anduin grunts]

00:02:07:25 - 00:02:08:25
[Archon screams]

00:02:15:11 - 00:02:18:11
[panting]

00:02:18:13 - 00:02:20:13
[gasps]

00:02:25:03 - 00:02:27:03
[ominous orchestral music]

00:02:34:01 - 00:02:35:28
[Jailer] The vessel performed

00:02:35:28 - 00:02:38:25
its part flawlessly.

00:02:42:03 - 00:02:44:23
Three keys remain.

00:02:45:23 - 00:02:48:13
Then they will see...

00:02:49:23 - 00:02:55:23
Death was never meant to be chained.


]],
	["shadowlands_910_adf"] = [[
00:00:02:00 - 00:00:03:29
[dramatic orchestral music]

00:00:13:01 - 00:00:14:11
[rumbling footsteps]

00:00:20:06 - 00:00:22:03
[roars]

00:00:22:05 - 00:00:24:05
[grunts]

00:00:26:00 - 00:00:27:18
[rumbling]

00:00:29:23 - 00:00:31:08
[epic choral singing]

00:00:32:15 - 00:00:35:14
[Sylvanas] [sighs] Tyrande.

00:00:36:18 - 00:00:39:18
I understand you've been looking for me.

00:00:42:00 - 00:00:43:11
Come, then.

00:00:43:29 - 00:00:47:16
Show me Elune's wrath.

00:00:47:18 - 00:00:51:06
Elune gave me her strength.

00:00:51:18 - 00:00:54:27
The wrath is mine alone!

00:01:15:08 - 00:01:17:19
[Sylvanas] Night Warrior.

00:01:17:21 - 00:01:19:16
I expected more.

00:01:19:18 - 00:01:22:12
I will take your head, Banshee!

00:01:22:28 - 00:01:24:23
Just like I took his!

00:01:25:26 - 00:01:27:03
[whispers] Nathanos?

00:01:28:00 - 00:01:30:06
You didn't know?

00:01:30:08 - 00:01:34:19
Your "master" is keeping secrets from you!

00:01:40:11 - 00:01:43:02
[horn bellows in distance]

00:01:43:04 - 00:01:44:18
[Lord Herne] They've broken through!

00:01:44:18 - 00:01:46:21
Fall back! Fall back!

00:01:46:22 - 00:01:48:07
A trick.

00:01:50:20 - 00:01:51:20
No!

00:01:52:16 - 00:01:55:09
Elune, it is time.

00:01:55:11 - 00:01:57:27
[FORCE SHOW]
[in Darnassian] My life for hers

00:01:57:29 - 00:01:59:04
[rumbling]

00:02:07:25 - 00:02:09:02
[rumbling]

00:02:11:12 - 00:02:13:11
At last.

00:02:13:13 - 00:02:14:18
[Sylvanas straining]

00:02:17:10 - 00:02:22:26
And yet, the night's power wanes.

00:02:22:28 - 00:02:27:27
Once again, she denies you victory.

00:02:27:29 - 00:02:31:11
Mother Moon, do not forsake me.

00:02:31:26 - 00:02:33:25
End this!

00:02:33:27 - 00:02:35:17
[wings flapping]

00:02:40:23 - 00:02:42:10
[roars]

00:02:43:08 - 00:02:45:24
Bask in the dying embers

00:02:45:24 - 00:02:49:19
of your goddess's bargain, Tyrande.

00:02:49:26 - 00:02:52:03
Nothing lasts.

00:03:00:12 - 00:03:03:05
[Ysera] Tyrande, can you hear me?

00:03:03:27 - 00:03:05:02
Tyrande?


]],
	["shadowlands_910_ewq"] = [[
00:00:03:10 - 00:00:05:07
[Winter Queen] How dare you

00:00:05:09 - 00:00:07:21
come here, sister,

00:00:08:11 - 00:00:13:05
after our cries for aid went unheard,

00:00:13:07 - 00:00:15:11
unanswered.

00:00:16:01 - 00:00:18:29
[Elune's voice] I heard your cries,

00:00:18:29 - 00:00:22:05
felt your pain,

00:00:22:06 - 00:00:25:19
and in the wake of tragedy,

00:00:25:21 - 00:00:29:13
sent forth the cascade of souls

00:00:29:15 - 00:00:31:26
to sustain you.

00:00:31:29 - 00:00:36:01
Oh, the Great Tree...

00:00:36:29 - 00:00:39:29
All who perished there

00:00:40:01 - 00:00:43:16
were claimed by the Maw.

00:00:44:28 - 00:00:47:16
[Elune's voice] Then I have condemned

00:00:47:18 - 00:00:49:18
my favored children.

00:00:54:29 - 00:00:56:29
By our hand,

00:00:57:00 - 00:00:59:28
we may yet guide their souls

00:00:59:29 - 00:01:00:29
unto their spring.

00:01:03:06 - 00:01:06:29
Starting with this one.

00:01:07:29 - 00:01:10:21
[Elune's voice] Tyrande invoked me.

00:01:10:24 - 00:01:13:15
She must choose.

00:01:14:04 - 00:01:18:00
Vengeance or renewal?

00:01:25:21 - 00:01:28:29
[epic choral singing]

00:01:32:02 - 00:01:34:02
[dramatic orchestral music]


]],
	["shadowlands_910_jar"] = [[
00:00:02:00 - 00:00:04:00
[dramatic orchestral music]

00:00:15:11 - 00:00:19:03
At long last,

00:00:19:05 - 00:00:21:28
the final key...

00:00:24:23 - 00:00:27:19
is once again...

00:00:28:21 - 00:00:31:06
mine.

00:00:33:15 - 00:00:35:02
Now...

00:00:36:06 - 00:00:37:26
Kneel.

00:00:42:21 - 00:00:45:12
[Sylvanas] The way is open, Zovaal!

00:00:45:14 - 00:00:48:21
We already have what we need!

00:00:48:23 - 00:00:51:15
[Jailer] Too long I endured

00:00:51:16 - 00:00:54:16
the makers' flawed design.

00:00:54:21 - 00:01:00:05
I will forge a new reality,

00:01:00:07 - 00:01:04:01
where all shall serve...

00:01:04:03 - 00:01:05:10
[echoing] ...serve...

00:01:05:12 - 00:01:06:12
[Lich King] ...serve...

00:01:06:13 - 00:01:07:13
[Arthas] ...serve...

00:01:08:03 - 00:01:10:06
[Jailer]...me.

00:01:22:25 - 00:01:27:02
I will never "serve."

00:01:29:25 - 00:01:31:04
[Jailer] Pity.

00:01:33:09 - 00:01:37:19
Still chained by mortality.

00:01:38:09 - 00:01:40:11
You did help restore

00:01:40:13 - 00:01:43:02
something stolen from me.

00:01:44:26 - 00:01:47:27
Allow me to repay you...

00:01:48:24 - 00:01:51:09
in kind.

00:01:55:26 - 00:02:00:00
I leave you to their mercy.

00:02:03:08 - 00:02:04:11
Come.

00:02:05:06 - 00:02:12:01
Be the first to witness reality's end.

00:02:16:26 - 00:02:22:16
[weakly] C-Cannot let him reach the...

00:02:22:29 - 00:02:23:29
[grunts]


]],
	["shadowlands_920_sus"] = [[
00:00:03:02 - 00:00:05:10
[Uther] Sylvanas's soul

00:00:05:11 - 00:00:07:08
has been fractured,

00:00:07:24 - 00:00:10:06
from the moment of her death…

00:00:11:01 - 00:00:12:02
until now.

00:00:15:07 - 00:00:16:10
[Sylvanas] Burn it!

00:00:18:01 - 00:00:20:26
[Sylvanas] This was their home…

00:00:21:27 - 00:00:24:25
and you slaughtered all of them!

00:00:25:13 - 00:00:26:22
How could you take

00:00:26:22 - 00:00:29:02
all those innocent lives?

00:00:29:22 - 00:00:32:28
This was beyond life and death!

00:00:33:00 - 00:00:36:25
There was no other path to true freedom.

00:00:37:13 - 00:00:39:16
How can you not see that?

00:00:39:18 - 00:00:41:24
I see what you are.

00:00:42:12 - 00:00:44:08
Murderer. Monster.

00:00:44:29 - 00:00:46:09
Butcher!

00:00:47:00 - 00:00:50:20
Why can I not escape this torment?

00:00:50:22 - 00:00:51:28
[snarls]

00:00:55:08 - 00:00:58:09
The Jailer has severed their bond,

00:00:58:11 - 00:00:59:22
and condemned her

00:00:59:23 - 00:01:03:16
to endlessly relive her atrocities.

00:01:04:13 - 00:01:08:01
So long as her soul remains divided,

00:01:08:19 - 00:01:10:18
she cannot wake.

00:01:10:20 - 00:01:13:09
Maybe she shouldn't.

00:01:13:11 - 00:01:15:09
She's the only one

00:01:15:10 - 00:01:17:17
who knows the Jailer's plan,

00:01:18:11 - 00:01:20:25
and how we might save Anduin.

00:01:20:27 - 00:01:24:07
She's the one that turned Anduin.

00:01:24:09 - 00:01:25:25
Jaina is right.

00:01:25:27 - 00:01:28:21
How can we possibly trust her?

00:01:30:25 - 00:01:34:22
[Uther] Her wound runs so much deeper…

00:01:36:05 - 00:01:37:28
than mine.

00:01:48:07 - 00:01:50:12
[approaching footsteps]

00:01:54:26 - 00:01:57:28
Well met, Ranger-General.

00:01:59:10 - 00:02:01:01
W-What is this?

00:02:01:28 - 00:02:03:01
Who are you?

00:02:04:03 - 00:02:06:21
Someone who shared your fate,

00:02:07:09 - 00:02:09:07
felled by the blade

00:02:09:07 - 00:02:11:12
of the very same prince.

00:02:15:25 - 00:02:17:00
Arthas.

00:02:18:01 - 00:02:21:18
I died trying to stop that monster,

00:02:22:03 - 00:02:24:06
only to wake up haunted

00:02:24:08 - 00:02:26:13
by one with my face.

00:02:27:00 - 00:02:29:11
That banshee…

00:02:30:07 - 00:02:31:17
is you.

00:02:31:19 - 00:02:32:19
No.

00:02:33:10 - 00:02:35:10
I cannot accept that.

00:02:36:01 - 00:02:40:07
[Uther] Her path began where yours ended,

00:02:40:09 - 00:02:43:20
and you've seen the decisions she made.

00:02:43:22 - 00:02:46:24
Never in a thousand lifetimes

00:02:46:24 - 00:02:50:11
would I betray everything I stood for!

00:02:51:07 - 00:02:53:24
You can't possibly understand.

00:02:54:13 - 00:02:55:13
[Uther sighs]

00:03:00:19 - 00:03:04:27
The Jailer is deceptively cunning.

00:03:05:20 - 00:03:10:22
When I realized I had become his pawn,

00:03:10:24 - 00:03:12:26
it nearly destroyed me.

00:03:13:12 - 00:03:15:09
He had no doubts

00:03:15:10 - 00:03:18:13
it would destroy you as well.

00:03:19:04 - 00:03:20:05
Was he right?

00:03:21:25 - 00:03:26:08
Or will you accept her shattered legacy

00:03:26:23 - 00:03:30:21
and tell us how to stop him?

00:03:32:17 - 00:03:33:24
[Sylvanas] Her crimes…

00:03:35:05 - 00:03:37:08
are unforgiveable.

00:03:38:01 - 00:03:39:01
Yes.

00:03:39:25 - 00:03:41:02
And she…

00:03:41:04 - 00:03:42:04
Burn it!

00:03:43:05 - 00:03:47:19
…I must face the consequences.

00:03:49:01 - 00:03:51:18
We cannot change the past,

00:03:52:05 - 00:03:54:27
and we may never find forgiveness

00:03:54:27 - 00:03:56:04
in the future…

00:03:57:09 - 00:04:00:23
but inaction damns us all.

00:04:01:18 - 00:04:04:10
Time is short, Ranger-General.

00:04:05:20 - 00:04:07:00
Make your choice.

00:04:12:14 - 00:04:14:23
I've done all I can.

00:04:14:25 - 00:04:16:25
[somber orchestral music]

00:04:31:09 - 00:04:33:09
[music fades out]


]],
	["shadowlands_920_arf"] = [[
00:00:04:17 - 00:00:07:11
[Jailer/Anduin] Do you not understand?

00:00:08:00 - 00:00:12:18
This one is bound to me.

00:00:14:08 - 00:00:16:04
[rumbling]

00:00:16:06 - 00:00:17:13
[Sylvanas] Anduin!

00:00:21:14 - 00:00:25:20
[Jailer] Fulfill your final purpose:

00:00:25:22 - 00:00:28:08
Annihilation.

00:00:28:22 - 00:00:35:06
The fate of all who carry my blade.

00:00:35:08 - 00:00:37:14
[Anduin grunts]

00:00:37:16 - 00:00:39:06
[Varian] My son.

00:00:40:16 - 00:00:42:01
[Anduin gasps]

00:00:42:02 - 00:00:46:10
This blade does not belong to darkness.

00:00:47:12 - 00:00:50:20
It was forged by valor.

00:00:51:22 - 00:00:53:22
[Varok] And also...

00:00:55:10 - 00:00:57:11
by honor.

00:00:58:16 - 00:01:00:11
[Varian] Its legacy,

00:01:00:13 - 00:01:04:00
and ours, are with you,

00:01:04:16 - 00:01:06:03
even here.

00:01:07:12 - 00:01:12:00
[Varok] Now, let it be finished.

00:01:12:02 - 00:01:16:10
[Anduin screams]

00:01:19:23 - 00:01:21:03
[metallic clang]

00:01:32:02 - 00:01:33:13
Arthas...

00:01:34:01 - 00:01:37:22
Is this all that remains of him?

00:01:38:10 - 00:01:42:18
The last flicker of his scarred spirit,

00:01:43:09 - 00:01:47:01
consumed in the forges of the Jailer.

00:01:47:16 - 00:01:48:23
No crown.

00:01:49:11 - 00:01:50:16
No throne.

00:01:51:04 - 00:01:55:00
Not even a soul left for judgement.

00:01:55:13 - 00:01:57:17
I hated you,

00:01:58:06 - 00:02:00:13
hunted you,

00:02:01:09 - 00:02:05:10
and with each selfish act...

00:02:06:11 - 00:02:08:18
became you.

00:02:09:17 - 00:02:13:10
That is my burden to bear.

00:02:14:15 - 00:02:16:22
But your legacy...

00:02:17:22 - 00:02:19:22
is at an end.

00:02:21:13 - 00:02:25:08
Begone, then, Arthas Menethil.

00:02:26:03 - 00:02:30:09
May the last whisper of your name fade...

00:02:31:11 - 00:02:33:09
and be forgotten.


]],
	["shadowlands_920_jri"] = [[
00:00:00:22 - 00:00:04:23
All to claim the power

00:00:05:01 - 00:00:09:05
slumbering within your world.

00:00:10:13 - 00:00:13:22
The soul of Azeroth,

00:00:14:00 - 00:00:15:14
wounded,

00:00:15:16 - 00:00:17:18
vulnerable,

00:00:17:19 - 00:00:21:11
yet teeming with potential.

00:00:22:09 - 00:00:26:19
Potential that I will use

00:00:26:21 - 00:00:32:10
to eradicate this flawed reality.

00:00:35:06 - 00:00:40:09
Death claims the soul of your world.

00:00:41:02 - 00:00:46:02
Now bear witness, mortals,

00:00:46:04 - 00:00:50:00
to eternity's end.


]],
	["shadowlands_920_jrf"] = [[
00:00:03:15 - 00:00:04:18
[grunts]

00:00:05:08 - 00:00:09:02
This must not be...

00:00:10:02 - 00:00:15:02
You have betrayed your duty as Arbiter,

00:00:16:00 - 00:00:19:19
and shall be bound forevermore.

00:00:20:04 - 00:00:23:16
Your madness has threatened

00:00:23:18 - 00:00:27:09
the cycle of life and death entire.

00:00:28:12 - 00:00:29:27
[Denathrius] You could have sought

00:00:29:28 - 00:00:31:16
another way, brother.

00:00:32:15 - 00:00:34:18
Imagine what we could have

00:00:34:19 - 00:00:36:24
accomplished together.

00:00:39:02 - 00:00:41:13
[The Primus] Why, Zovaal?

00:00:42:00 - 00:00:45:09
What drove you to this end?

00:00:45:25 - 00:00:51:11
You preserve that which is doomed.

00:00:51:27 - 00:00:58:13
A cosmos divided will not survive

00:00:59:03 - 00:01:04:20
what is to come.

00:01:06:05 - 00:01:08:05
[somber choral music]


]],
	["shadowlands_920_pam"] = [[
00:00:02:02 - 00:00:04:15
[stirring orchestral music]

00:00:12:16 - 00:00:14:17
[crackling]


]],
	["dragonflight_100_di"] = [[
00:00:02:00 - 00:00:04:07
[ominous orchestral music]

00:00:10:11 - 00:00:12:11
[muffled whirring]

00:00:17:15 - 00:00:20:07
[Alexstrasza] The world has been sundered.

00:00:22:15 - 00:00:24:22
It cries out in pain.

00:00:27:15 - 00:00:29:22
We must go to its aid.

00:00:31:14 - 00:00:35:08
We entrust our ancestral home to you,

00:00:36:06 - 00:00:37:13
the Watchers.

00:00:40:22 - 00:00:42:02
[dial clicks]

00:00:52:00 - 00:00:54:08
Let the land slumber,

00:00:55:00 - 00:00:59:02
hidden even from our own eyes.

00:01:01:02 - 00:01:03:10
You will feel our return

00:01:04:03 - 00:01:06:16
in the waking of the land.

00:01:07:06 - 00:01:11:22
Then you must light the Beacon of Tyrhold,

00:01:12:15 - 00:01:15:20
lest the path home be lost to us...

00:01:16:15 - 00:01:17:17
forever.

00:01:21:18 - 00:01:24:00
[dramatic choral music crescendos]

00:01:30:07 - 00:01:32:07
[rumbling]

00:01:38:17 - 00:01:40:17
[serene orchestral music]

00:01:58:08 - 00:02:01:04
[dramatic orchestral music builds]

00:02:02:13 - 00:02:04:13
[footsteps rumbling]

00:02:30:23 - 00:02:32:22
[footsteps rumbling]

00:02:58:16 - 00:02:59:16
[dial clicks]

00:02:59:18 - 00:03:02:04
[beacon whirring]

00:03:03:08 - 00:03:04:18
[whirring fades out]

00:03:13:03 - 00:03:15:17
[dramatic orchestral music builds]

00:03:33:20 - 00:03:34:22
[stone cracking]

00:03:36:08 - 00:03:38:12
[energy crackling]

00:03:48:02 - 00:03:50:02
[stone cracking]

00:04:02:04 - 00:04:04:04
[somber piano music]

00:04:05:03 - 00:04:07:10
[wind whooshing]

00:04:11:17 - 00:04:13:17
[soaring orchestral music]

00:04:36:23 - 00:04:39:09
[Alexstrasza] The world is healing...

00:04:42:00 - 00:04:45:08
but her fate is yet uncertain.

00:04:54:04 - 00:04:56:17
Together, we shall be

00:04:56:17 - 00:04:59:19
Azeroth's protectors once again.

00:05:00:13 - 00:05:06:01
Here, the new age of dragons shall begin.

00:05:06:03 - 00:05:08:01
[dragon roars]

00:05:09:04 - 00:05:11:11
[epic orchestral music crescendos]


]],
	["dragonflight_100_ps"] = [[
00:00:02:09 - 00:00:03:20
Talons! To the fore!

00:00:03:22 - 00:00:06:12
Stay with me. On the flank! Move!

00:00:06:14 - 00:00:07:18
Ebon Scales! Fall back!

00:00:07:19 - 00:00:08:22
Retreat!

00:00:09:00 - 00:00:10:00
Retreat!

00:00:10:17 - 00:00:12:22
[yells]

00:00:14:17 - 00:00:16:02
[silence]

00:00:16:04 - 00:00:17:19
[echoing voice] Sleep...


]],
	["dragonflight_100_dlf"] = [[
00:00:02:09 - 00:00:04:01
[whistling wind]

00:00:06:04 - 00:00:09:04
[epic music]

00:00:09:06 - 00:00:12:01
Oh mistress of the storm.

00:00:12:13 - 00:00:16:06
The primal powers have risen

00:00:16:06 - 00:00:19:11
to set you free.

00:00:24:02 - 00:00:25:00
Grah!

00:00:25:14 - 00:00:26:13
[grunts in pain]

00:00:27:06 - 00:00:28:11
[groans]

00:00:29:16 - 00:00:31:00
[grunts]

00:00:31:15 - 00:00:32:15
[exhales]

00:00:33:04 - 00:00:34:11
[crunching rocks]

00:00:34:13 - 00:00:36:02
[heavy footsteps]

00:00:36:03 - 00:00:39:04
[Raszageth] Yes...

00:00:39:06 - 00:00:43:05
the elements sing.

00:00:44:06 - 00:00:50:13
They herald a new age for this world.

00:00:51:21 - 00:00:53:05
[lightning crackles]

00:00:53:06 - 00:00:56:12
[Raszageth] Have you found my kin?

00:00:56:14 - 00:00:59:06
We know where they are imprisoned,

00:00:59:07 - 00:01:01:08
Storm-Eater.

00:01:01:10 - 00:01:03:20
[Raszageth] Soon their bonds

00:01:03:21 - 00:01:05:13
will be broken.

00:01:07:06 - 00:01:10:20
Ah, and what is this?

00:01:10:22 - 00:01:14:20
The Brood of Neltharion.

00:01:16:02 - 00:01:20:03
I felt his demise reverberate

00:01:20:04 - 00:01:22:11
through the earth...

00:01:22:20 - 00:01:25:00
and reveled in it.

00:01:25:11 - 00:01:29:18
Perhaps you wish to share his fate?

00:01:30:11 - 00:01:32:10
[Wrathion] I had wished to become

00:01:32:11 - 00:01:34:06
what he was meant to be.

00:01:34:19 - 00:01:38:03
What he should have been.

00:01:40:00 - 00:01:42:20
[Raszageth] You do not fathom

00:01:42:20 - 00:01:47:06
what dragonkind was meant to be.

00:01:47:06 - 00:01:50:02
But you will.

00:01:52:03 - 00:01:54:19
[roaring continues]

00:01:55:06 - 00:01:56:22
[Raszageth] Go.

00:01:56:23 - 00:02:00:01
Tell them we will scour this world

00:02:00:02 - 00:02:02:09
of the titans’ stain.

00:02:02:22 - 00:02:06:11
Let the storm be the harbinger

00:02:06:12 - 00:02:09:14
of our return!


]],
	["dragonflight_100_prk"] = [[
00:00:02:00 - 00:00:04:06
[heavy footsteps]

00:00:16:12 - 00:00:18:08
[Khadgar] I did not expect to see you

00:00:18:09 - 00:00:20:19
again so soon, my friend,

00:00:21:14 - 00:00:22:21
after you’d answered

00:00:22:21 - 00:00:24:19
the call of the isles.

00:00:25:22 - 00:00:28:20
Something has happened, Khadgar.

00:00:28:22 - 00:00:30:10
Something terrible.

00:00:31:22 - 00:00:33:04
Kalecgos...

00:00:33:23 - 00:00:34:23
Tell me.

00:00:35:20 - 00:00:38:05
It all happened so quickly,

00:00:38:06 - 00:00:41:04
and Wrathion, young as he is...

00:00:41:06 - 00:00:43:09
bravely, or perhaps foolishly,

00:00:43:10 - 00:00:44:12
tried to stop it...

00:00:49:10 - 00:00:50:23
but he was too late.

00:00:51:01 - 00:00:52:06
[crackling lightning]

00:00:52:07 - 00:00:53:08
[heavy footsteps]

00:00:53:09 - 00:00:55:03
[Kalecgos] The tempest

00:00:55:04 - 00:00:58:04
had already been unleashed.

00:01:11:19 - 00:01:13:20
[Wrathion] She let me live,

00:01:13:20 - 00:01:15:05
with a message.

00:01:15:23 - 00:01:18:11
They are coming to cleanse the world

00:01:18:12 - 00:01:20:05
of the titans' stain.

00:01:24:06 - 00:01:25:06
Alexstrasza...

00:01:25:22 - 00:01:26:22
Who is she?

00:01:27:17 - 00:01:29:17
What is she?

00:01:30:06 - 00:01:31:06
[Alexstrasza] She...

00:01:31:22 - 00:01:33:06
is Raszageth.

00:01:33:23 - 00:01:37:02
Youngest of the primal incarnates.

00:01:37:23 - 00:01:39:08
Incarnates?

00:01:39:10 - 00:01:41:22
Four dangerous adherents

00:01:41:22 - 00:01:44:02
of the elemental forces.

00:01:44:04 - 00:01:46:14
At the dawn of the aspects,

00:01:46:15 - 00:01:49:19
our flights embraced the titans' gifts.

00:01:50:10 - 00:01:53:00
They... did not.

00:01:53:22 - 00:01:58:06
The war that followed was unimaginable,

00:01:58:21 - 00:02:01:16
and it took all of our strength combined

00:02:01:17 - 00:02:03:09
to banish them.

00:02:03:11 - 00:02:05:13
If they were so dangerous,

00:02:05:14 - 00:02:07:20
why were they not destroyed?!

00:02:09:08 - 00:02:11:11
I hadn’t the heart to do it.

00:02:12:10 - 00:02:15:18
We were once as clutchmates.

00:02:17:14 - 00:02:18:23
Time, it seems,

00:02:18:23 - 00:02:20:21
has not quelled their fury.

00:02:21:11 - 00:02:23:04
And look at us.

00:02:23:06 - 00:02:25:14
Should she free her kin now,

00:02:25:14 - 00:02:28:01
we haven’t the strength to stop them.

00:02:28:14 - 00:02:32:07
And if Iridikron’s hunger is unleashed...

00:02:33:01 - 00:02:34:23
Then we have no choice.

00:02:35:13 - 00:02:38:21
If we are to be protectors once more,

00:02:38:22 - 00:02:42:00
the aspects of our dragonflights

00:02:42:01 - 00:02:44:12
must be made anew.

00:02:47:17 - 00:02:50:14
Our queen is determined, Khadgar,

00:02:50:15 - 00:02:52:05
but we’ve only just begun

00:02:52:06 - 00:02:53:20
to find who we are again.

00:02:54:15 - 00:02:57:08
And I fear that without help

00:02:57:10 - 00:02:59:07
we may never get the chance

00:02:59:07 - 00:03:02:07
to see our future secured.

00:03:04:18 - 00:03:06:05
Hmm...

00:03:14:19 - 00:03:18:18
Then it seems the mortal races too

00:03:18:19 - 00:03:21:08
must answer the call

00:03:21:20 - 00:03:25:14
and face the storms ahead.


]],
	["dragonflight_100_gk"] = [[
00:00:02:00 - 00:00:04:02
[ominous orchestral music]

00:00:04:04 - 00:00:06:04
[wings flapping]

00:00:06:06 - 00:00:07:15
[heavy thud]

00:00:07:17 - 00:00:09:22
[fading snarl]

00:00:10:00 - 00:00:11:15
[footsteps]

00:00:13:19 - 00:00:15:15
[footsteps continue]

00:00:24:00 - 00:00:26:01
[rocks tumble]

00:00:26:03 - 00:00:29:07
[Nozdormu] This place holds many mysteries,

00:00:29:09 - 00:00:30:20
but few answers.

00:00:31:22 - 00:00:33:13
[Emberthal] Stop there!

00:00:33:15 - 00:00:34:18
Who are you?

00:00:36:01 - 00:00:38:07
[Nozdormu] One who would be your guide.

00:00:38:20 - 00:00:43:17
Tell me, what do you remember from before?

00:00:44:05 - 00:00:45:07
[Emberthal sighs]

00:00:46:01 - 00:00:47:10
[Emberthal] My general.

00:00:47:12 - 00:00:49:06
A fierce battle.

00:00:49:18 - 00:00:51:00
And then I was...

00:00:52:06 - 00:00:55:05
imprisoned, in darkness.

00:00:55:07 - 00:00:56:13
[Nozdormu] Hmm.

00:00:57:12 - 00:01:00:18
But now you are free.

00:01:01:08 - 00:01:04:10
[Emberthal gasps] What are you?

00:01:04:12 - 00:01:05:13
[Nozdormu] Come.

00:01:05:15 - 00:01:07:16
There is much I would show you,

00:01:07:18 - 00:01:08:21
to prepare you

00:01:08:21 - 00:01:11:15
for the challenges that lie ahead.

00:01:19:11 - 00:01:21:11
[ominous orchestral music]

00:01:21:13 - 00:01:23:13
[wind gusting]

00:01:23:15 - 00:01:25:11
[footsteps]

00:01:27:11 - 00:01:28:21
[Emberthal] This place...

00:01:29:14 - 00:01:31:08
So strange.

00:01:32:00 - 00:01:33:15
Where are we?

00:01:33:18 - 00:01:36:20
[Nozdormu]
Where is less important than when.

00:01:37:07 - 00:01:39:08
Many thousands of years ago,

00:01:39:10 - 00:01:42:15
when our world was... young,

00:01:44:01 - 00:01:45:10
Azeroth was home

00:01:45:11 - 00:01:47:23
to the ancestors of dragons -

00:01:48:21 - 00:01:50:06
primitive beasts

00:01:50:06 - 00:01:52:12
ruled by primal instincts.

00:01:55:04 - 00:01:57:09
Yet there were a few in whom

00:01:57:10 - 00:02:00:03
the spark of intelligence was lit,

00:02:00:18 - 00:02:03:06
who thought, spoke and felt

00:02:03:07 - 00:02:05:19
more deeply than the rest.

00:02:05:21 - 00:02:06:23
[Emberthal] What does this

00:02:06:23 - 00:02:08:06
have to do with me?

00:02:09:09 - 00:02:11:03
[Nozdormu] Were it not for them,

00:02:11:06 - 00:02:13:16
your people would not be.

00:02:17:01 - 00:02:19:21
From these proto-dragons,

00:02:19:23 - 00:02:22:14
there arose the monster Galakrond...

00:02:22:16 - 00:02:24:12
[proto-dragons roar]

00:02:24:14 - 00:02:26:01
[Galakrond snarls]

00:02:28:10 - 00:02:30:18
[Nozdormu] ...whose insatiable hunger

00:02:30:19 - 00:02:32:14
would have consumed us all.

00:02:34:02 - 00:02:35:13
[Galakrond roars]

00:02:38:05 - 00:02:39:18
[Nozdormu] When the fate

00:02:39:19 - 00:02:41:08
of our kind was at stake,

00:02:41:10 - 00:02:44:00
we five overcame the instincts

00:02:44:01 - 00:02:46:15
of fear and self-preservation,

00:02:46:17 - 00:02:49:16
and united to battle the leviathan.

00:02:49:18 - 00:02:51:00
[Emberthal] "We"?

00:02:51:02 - 00:02:53:11
So, you were one of these.

00:02:53:13 - 00:02:54:21
[proto-dragons roar]

00:02:58:09 - 00:03:00:02
[Galakrond roars]

00:03:01:18 - 00:03:03:02
[heavy impact]

00:03:03:04 - 00:03:05:19
[Galakrond groans]

00:03:09:21 - 00:03:11:13
[Nozdormu] For our bravery,

00:03:11:15 - 00:03:15:01
risking everything to save the world,

00:03:15:03 - 00:03:17:21
we were granted a gift of the Titans -

00:03:18:10 - 00:03:22:01
transformed into something greater.

00:03:22:14 - 00:03:24:14
[mystical orchestral music]

00:03:34:05 - 00:03:37:20
Together, we became the Aspects,

00:03:37:22 - 00:03:40:06
leaders of the dragonflights,

00:03:40:20 - 00:03:43:07
the protectors of Azeroth.

00:03:52:12 - 00:03:56:03
In time, we took on visages like this,

00:03:56:05 - 00:03:58:21
to better commune with the younger races.

00:03:59:23 - 00:04:02:05
[Emberthal] Why have you shown me this?

00:04:03:07 - 00:04:05:11
[Nozdormu] I am Nozdormu.

00:04:06:04 - 00:04:08:14
I was Aspect of the bronzeflight.

00:04:09:09 - 00:04:13:05
It is my fate to see all of time.

00:04:13:21 - 00:04:16:22
But now a threat to our world approaches.

00:04:17:15 - 00:04:21:03
An ancient enemy has returned.

00:04:22:03 - 00:04:25:00
You will play a part in the events to come,

00:04:25:02 - 00:04:26:05
and you will have to make

00:04:26:06 - 00:04:27:14
a difficult choice,

00:04:28:05 - 00:04:29:07
as we did.

00:04:30:06 - 00:04:32:09
[Emberthal] I am not like you.

00:04:32:23 - 00:04:34:01
[Nozdormu] No.

00:04:34:15 - 00:04:36:17
My story is already written,

00:04:37:07 - 00:04:40:23
but yours, and that of all Dracthyr,

00:04:41:01 - 00:04:43:19
is only beginning to unfold.

00:04:43:21 - 00:04:46:03
[majestic orchestral music swells]


]],
	["dragonflight_100_dw"] = [[
00:00:02:00 - 00:00:03:11
[tense music]

00:00:03:11 - 00:00:04:20
[footsteps]

00:00:04:21 - 00:00:07:05
[Nozdormu] What is your name, child?

00:00:07:22 - 00:00:09:10
[Emberthal] Emberthal,

00:00:09:11 - 00:00:11:15
a commander of the dracthyr.

00:00:12:10 - 00:00:13:19
You know of us?

00:00:14:06 - 00:00:15:21
[Nozdormu] You are a race

00:00:15:21 - 00:00:17:04
of fierce warriors

00:00:17:05 - 00:00:19:00
unlike anything Azeroth

00:00:19:01 - 00:00:21:12
has seen in many an age.

00:00:21:12 - 00:00:23:10
In time, you may become

00:00:23:10 - 00:00:25:29
as mighty as we once were.

00:00:26:01 - 00:00:28:12
[Emberthal] Once? What happened?

00:00:29:02 - 00:00:31:09
[Nozdormu] The desire for power

00:00:31:10 - 00:00:32:12
carries peril.

00:00:33:26 - 00:00:35:01
We were blind

00:00:35:02 - 00:00:37:10
to the darkness in our midst.

00:00:44:17 - 00:00:48:13
Behold the Dragon Isles.

00:00:48:24 - 00:00:51:09
In the time after our ascension,

00:00:51:15 - 00:00:54:02
we aspects sought to create

00:00:54:03 - 00:00:57:20
a beacon of hope for all the world.

00:00:59:29 - 00:01:01:09
[Emberthal] Beautiful.

00:01:05:27 - 00:01:08:05
Neltharion - my general!

00:01:08:07 - 00:01:09:11
[Nozdormu] Indeed,

00:01:09:11 - 00:01:11:25
we all had our roles to play.

00:01:12:21 - 00:01:14:28
Guided by Alexstrasza -

00:01:14:29 - 00:01:17:16
our conscience, our heart -

00:01:18:22 - 00:01:22:14
we all became as close as clutchmates...

00:01:22:14 - 00:01:24:08
or so it seemed.

00:01:24:09 - 00:01:25:17
[nefarious whispering]

00:01:25:20 - 00:01:26:24
[Nozdormu] For we could not hear

00:01:26:25 - 00:01:29:02
the whispers of corruption

00:01:29:04 - 00:01:31:17
that tempted one of our own.

00:01:34:20 - 00:01:37:27
When demons invaded our world,

00:01:37:29 - 00:01:41:10
we aspects went forth to protect it

00:01:41:11 - 00:01:42:22
as we always had,

00:01:44:29 - 00:01:48:07
not knowing whether we would ever again

00:01:48:08 - 00:01:51:04
see the shores of home.

00:01:57:14 - 00:01:59:29
Our brother Neltharion led our defense

00:02:00:01 - 00:02:01:28
against the invaders.

00:02:03:29 - 00:02:05:21
But for the first time,

00:02:05:22 - 00:02:09:03
we found our strength... inadequate.

00:02:10:07 - 00:02:12:06
And we grew desperate.

00:02:13:19 - 00:02:16:06
So when Neltharion assured us

00:02:16:09 - 00:02:17:17
that with our help

00:02:17:18 - 00:02:20:12
he could forge a weapon to win the war,

00:02:21:09 - 00:02:23:29
we placed our trust in him.

00:02:27:19 - 00:02:29:06
And we renewed our battle

00:02:29:06 - 00:02:30:24
against the demons,

00:02:30:25 - 00:02:32:25
only to have Neltharion -

00:02:32:26 - 00:02:35:27
who now took the name “Deathwing” -

00:02:35:29 - 00:02:38:21
turn on his own kind.

00:02:45:26 - 00:02:48:24
We could not foresee this betrayal

00:02:49:29 - 00:02:53:17
for we simply did not want to believe.

00:02:55:04 - 00:02:57:06
Even after all this time,

00:02:58:01 - 00:03:01:26
the pain of his treachery is far worse

00:03:01:27 - 00:03:03:22
than the scars he left us with.

00:03:03:22 - 00:03:05:00
[Emberthal] That is not the leader

00:03:05:01 - 00:03:06:05
I remember!

00:03:06:27 - 00:03:08:25
How do I know it was not you

00:03:08:26 - 00:03:10:07
who provoked him?

00:03:10:25 - 00:03:14:02
You missed much during your confinement.

00:03:14:05 - 00:03:18:01
But the Sands of Time reveal all truths,

00:03:18:01 - 00:03:20:21
child, even bitter ones.

00:03:20:22 - 00:03:23:17
Trust your eyes.

00:03:26:27 - 00:03:30:17
[music intensifies]

00:03:30:20 - 00:03:32:11
[Nozdormu] When the Champions of Azeroth

00:03:32:11 - 00:03:35:09
faced Deathwing for the last time,

00:03:36:25 - 00:03:39:20
he was so consumed by madness

00:03:40:15 - 00:03:42:05
that he could not imagine

00:03:42:05 - 00:03:45:00
what we would sacrifice to stop him,

00:03:46:01 - 00:03:48:29
that the weapon we had helped him forge

00:03:49:01 - 00:03:52:20
would become the means of his destruction.

00:03:54:21 - 00:03:57:19
[music reaches crescendo]

00:04:00:10 - 00:04:02:29
[music dies]

00:04:04:20 - 00:04:06:29
[Emberthal] Was there no other way?

00:04:08:21 - 00:04:11:14
Deathwing would have destroyed this world.

00:04:11:16 - 00:04:12:22
To stop him,

00:04:12:22 - 00:04:15:28
we aspects relinquished our power,

00:04:16:04 - 00:04:19:07
our immortality,

00:04:19:07 - 00:04:22:07
our guardianship of Azeroth itself.

00:04:23:26 - 00:04:25:29
A fair trade, I believe.

00:04:29:05 - 00:04:31:17
[Emberthal] You want something from me,

00:04:31:17 - 00:04:32:17
don’t you?

00:04:33:15 - 00:04:37:19
It is my gift - and my burden -

00:04:37:20 - 00:04:40:08
to travel the pathways of time.

00:04:42:07 - 00:04:44:28
But there is one crucial moment

00:04:44:29 - 00:04:47:14
that has long remained hidden from me...

00:04:49:06 - 00:04:52:22
and only you can lead me there.


]],
	["dragonflight_100_dt"] = [[
00:00:02:00 - 00:00:03:14
[epic music]

00:00:05:09 - 00:00:07:01
[Emberthal] [exhales heavily]

00:00:07:02 - 00:00:08:06
Nozdormu, wait.

00:00:08:17 - 00:00:10:06
You have led me through

00:00:10:07 - 00:00:12:04
all these moments in time,

00:00:12:22 - 00:00:15:19
yet now you ask me to guide you?

00:00:17:10 - 00:00:20:14
There is a blind spot in my vision

00:00:21:08 - 00:00:24:14
of a time before Neltharian's corruption

00:00:25:02 - 00:00:28:08
and I believe it centers upon you.

00:00:28:21 - 00:00:31:01
I must know why.

00:00:32:06 - 00:00:35:08
Seek him out in your memory.

00:00:47:02 - 00:00:48:04
[Emberthal] [echoing] My general.

00:00:48:05 - 00:00:52:03
A fierce battle. And then I was...

00:00:54:00 - 00:00:57:08
It was my honor to command a battalion.

00:00:58:11 - 00:01:01:22
We executed Neltharion's will precisely.

00:01:02:11 - 00:01:04:16
Our devotion and discipline

00:01:04:17 - 00:01:05:22
were unmatched.

00:01:07:00 - 00:01:09:04
[Nozdormu] A Titan artifact!

00:01:09:06 - 00:01:11:10
That must be the source of your unity.

00:01:12:17 - 00:01:14:11
This was an ancient magic

00:01:14:11 - 00:01:16:05
that bound you to his will.

00:01:17:03 - 00:01:18:01
Would you not

00:01:18:02 - 00:01:20:11
sacrifice yourselves at his whim?

00:01:20:13 - 00:01:22:09
[Emberthal] We were soldiers!

00:01:22:10 - 00:01:24:18
There were many threats to the world.

00:01:24:20 - 00:01:26:12
[lightning strikes]

00:01:26:14 - 00:01:28:21
[Emberthal] And here was the greatest:

00:01:29:15 - 00:01:31:00
the Primalists.

00:01:34:20 - 00:01:36:14
[Nozdormu] That is Raszageth,

00:01:36:15 - 00:01:37:17
the Storm-Eater...

00:01:39:12 - 00:01:40:21
one of the leaders

00:01:40:22 - 00:01:43:00
of the Primalist rebellion.

00:01:43:02 - 00:01:46:02
[Emberthal] They struck without warning.

00:01:46:03 - 00:01:47:06
Without honor.

00:01:47:08 - 00:01:50:09
And I lost many friends this day.

00:01:51:01 - 00:01:53:10
We fell back, regrouped.

00:01:53:12 - 00:01:54:13
But then...

00:01:55:06 - 00:01:59:12
everything became jumbled, confused.

00:01:59:14 - 00:02:02:11
[Nozdormu] The artifact... destroyed.

00:02:02:13 - 00:02:05:02
And the order-magic which had united

00:02:05:03 - 00:02:07:04
the dracthyr was dispelled.

00:02:07:20 - 00:02:10:19
How then was Raszageth defeated?

00:02:21:06 - 00:02:25:18
So, brother, this is what you hid from us:

00:02:26:09 - 00:02:29:01
the moment you fell from grace.

00:02:30:22 - 00:02:32:18
In his desperation,

00:02:32:19 - 00:02:35:17
he turned to the deepest evil:

00:02:35:19 - 00:02:38:06
the power of the Old Gods.

00:02:50:12 - 00:02:52:16
If only we had known…

00:02:53:20 - 00:02:55:06
[Emberthal] But then...

00:02:55:06 - 00:02:56:16
why were we imprisoned?

00:02:56:18 - 00:02:59:10
Why did we sleep for so long?

00:02:59:12 - 00:03:01:02
If he could no longer

00:03:01:02 - 00:03:02:16
control the dracthyr,

00:03:02:18 - 00:03:05:17
he would have deemed you a risk.

00:03:05:19 - 00:03:08:05
[Emberthal] No. We laid down our lives

00:03:08:05 - 00:03:11:04
for him. He was proud of us!

00:03:11:06 - 00:03:14:04
Why would he-- stop this sand!

00:03:14:05 - 00:03:15:11
I cannot see!

00:03:15:13 - 00:03:18:05
Because you do not want to!

00:03:18:07 - 00:03:22:02
Yet you can only become more than you are

00:03:22:03 - 00:03:24:16
if you confront your past!

00:03:40:18 - 00:03:42:20
[silence]

00:03:50:21 - 00:03:55:01
[deep reverberation]

00:04:22:16 - 00:04:26:06
So he locked us away.

00:04:26:22 - 00:04:29:20
Forgot we even existed.

00:04:32:00 - 00:04:34:07
It would have been kinder

00:04:34:08 - 00:04:36:06
to simply destroy us.

00:04:36:23 - 00:04:40:00
I am sorry, my young friend.

00:04:40:02 - 00:04:42:00
We had to know the truth.

00:04:42:02 - 00:04:44:05
But do not despair.

00:04:45:03 - 00:04:47:07
I now believe that Neltharion

00:04:47:07 - 00:04:48:10
locked you away

00:04:48:12 - 00:04:51:00
because of what you might become.

00:04:52:03 - 00:04:54:14
[Emberthal] What we might achieve

00:04:54:15 - 00:04:56:06
free of his control.

00:04:56:17 - 00:04:59:13
And now you are free.

00:05:01:12 - 00:05:03:20
This world has much to offer,

00:05:03:22 - 00:05:06:06
and you will have a part to play

00:05:06:07 - 00:05:07:21
in the events to come.

00:05:08:19 - 00:05:09:17
[Emberthal] You spoke

00:05:09:18 - 00:05:12:06
of an ancient enemy's return.

00:05:12:08 - 00:05:15:15
It is Raszageth and the Primalists.

00:05:15:17 - 00:05:18:11
That is why we were awakened.

00:05:18:13 - 00:05:20:18
It seems that Neltharion

00:05:20:19 - 00:05:23:00
yet had a purpose for you.

00:05:23:02 - 00:05:24:13
But he is gone.

00:05:25:07 - 00:05:29:06
You must decide which path you will take,

00:05:29:07 - 00:05:31:23
which story you will tell.

00:05:33:15 - 00:05:37:13
[Emberthal] My story... will be my own.

00:05:37:15 - 00:05:41:08
[music rises to crescendo]


]],
	["dragonflight_100_dm"] = [[
00:00:02:21 - 00:00:04:09
[sighs]

00:00:04:11 - 00:00:05:11
[contented grunt]

00:00:07:20 - 00:00:08:22
[screams]

00:00:09:00 - 00:00:10:11
[splutters]

00:00:10:13 - 00:00:12:13
[wings flapping]

00:00:12:15 - 00:00:14:15
[epic orchestral music]

00:00:15:14 - 00:00:16:18
[roars]

00:00:19:05 - 00:00:20:10
[cheers]

00:00:23:07 - 00:00:24:13
[whoops]

00:00:27:03 - 00:00:28:14
[grunts]

00:00:28:16 - 00:00:29:16
[dragon snarls]

00:00:33:11 - 00:00:34:11
[cheers]

00:00:37:22 - 00:00:39:03
[gasps]

00:00:41:08 - 00:00:42:15
[grunts]

00:00:45:16 - 00:00:46:16
[dragon snarls]

00:00:52:18 - 00:00:54:18
[birds chirping]

00:00:56:00 - 00:00:57:13
[dragon grunts]

00:01:00:01 - 00:01:02:01
[thunder rumbling]

00:01:05:16 - 00:01:07:05
[thunder crashing]

00:01:07:07 - 00:01:08:07
[roars]

00:01:08:09 - 00:01:09:09
[gasps]

00:01:25:17 - 00:01:27:08
[roars]

00:01:40:01 - 00:01:42:05
[ethereal whoosh]

00:01:48:21 - 00:01:49:23
[dragon chitters]

00:01:51:12 - 00:01:53:20
[riders whooping]

00:02:01:21 - 00:02:02:21
[gasps]

00:02:15:20 - 00:02:18:03
[epic orchestral music crescendos]


]],
	["dragonflight_100_rva"] = [[
00:00:02:00 - 00:00:05:05
[dramatic, orchestral music playing]

00:00:05:07 - 00:00:07:02
[Alexstrasza] Raszageth, enough!

00:00:08:26 - 00:00:12:01
We need not fight another war.

00:00:12:03 - 00:00:15:06
There is still time to see reason.

00:00:15:08 - 00:00:17:11
[Raszageth] Time is precisely

00:00:17:12 - 00:00:19:20
what you stole from me.

00:00:19:23 - 00:00:21:15
Thousands of years,

00:00:21:16 - 00:00:24:00
rotting in that prison.

00:00:25:07 - 00:00:26:10
[Alexstrasza] I failed then

00:00:26:11 - 00:00:29:07
to restore peace between us.

00:00:29:22 - 00:00:32:08
Too many paid for that.

00:00:32:10 - 00:00:35:10
[Raszageth] Spare me your sanctimony!

00:00:35:12 - 00:00:39:15
You forced the titans' edicts upon us all.

00:00:39:17 - 00:00:43:05
You betrayed the world that gave us life

00:00:43:07 - 00:00:45:15
and when we dared resist,

00:00:45:17 - 00:00:48:19
you cast us out!

00:00:49:02 - 00:00:50:25
[thunder rumbles]

00:00:50:27 - 00:00:52:14
Never again!

00:00:52:16 - 00:00:54:19
[Raszageth roars]

00:00:57:14 - 00:00:59:10
[both snarl]

00:00:59:12 - 00:01:03:19
[epic, orchestral music playing]

00:01:03:21 - 00:01:05:21
[growling and crunching]

00:01:13:22 - 00:01:15:15
[dragon growls]

00:01:17:26 - 00:01:19:06
[growls]

00:01:20:11 - 00:01:21:04
[crunch]

00:01:24:07 - 00:01:26:26
[low growling]

00:01:27:16 - 00:01:28:22
[crunch]

00:01:31:25 - 00:01:36:20
Your false reign must end!

00:01:46:12 - 00:01:49:27
[snarls softly]

00:01:53:29 - 00:01:55:05
[Alexstrasza] Wrathion?

00:01:57:15 - 00:01:59:00
[roars]

00:01:59:02 - 00:02:01:18
[Raszageth grunts]

00:02:01:20 - 00:02:02:26
[Raszageth] Ah.

00:02:03:10 - 00:02:05:27
You are bold, whelpling,

00:02:06:10 - 00:02:09:18
but you are fighting on the wrong side.

00:02:09:20 - 00:02:11:11
She never told you

00:02:11:12 - 00:02:14:19
the suffering they inflicted upon us,

00:02:14:22 - 00:02:19:06
the insult of being forgotten.

00:02:19:21 - 00:02:23:02
I want her to watch helplessly

00:02:23:04 - 00:02:25:04
as everything she built

00:02:25:05 - 00:02:27:19
comes crumbling down.

00:02:27:22 - 00:02:30:00
Only then

00:02:30:28 - 00:02:35:04
will she meet a fitting end.

00:02:35:29 - 00:02:36:29
[music stops]


]],
	["dragonflight_100_ptw"] = [[
00:00:02:23 - 00:00:06:12
[calm, mystical music]

00:00:09:10 - 00:00:14:01
This seed is everything.

00:00:15:02 - 00:00:18:12
So many beloved souls

00:00:18:12 - 00:00:24:07
entrusting their fate, their hopes, to us.

00:00:25:05 - 00:00:28:14
Are we certain it will be safe?

00:00:30:04 - 00:00:31:12
Come.

00:00:42:13 - 00:00:46:15
[Merithra] Here, by Elune’s grace,

00:00:46:18 - 00:00:49:12
this gift will be kept hidden

00:00:50:10 - 00:00:53:00
from those who would wish it harm.

00:00:54:09 - 00:00:57:16
Yet the time will come when it must leave

00:00:57:17 - 00:00:59:11
the cradle of the dream...

00:01:02:02 - 00:01:05:17
and take its place in our world.

00:01:06:20 - 00:01:09:04
And when it does,

00:01:09:05 - 00:01:12:12
its protection will fall to us.

00:01:15:23 - 00:01:18:14
My beloved Kaldorei.

00:01:19:14 - 00:01:21:14
All you have suffered,

00:01:21:15 - 00:01:23:23
all you have given,

00:01:24:20 - 00:01:27:17
will not be in vain.

00:01:28:12 - 00:01:32:17
This I swear to you.

00:01:48:23 - 00:01:50:18
What is it, my love?

00:01:52:12 - 00:01:53:23
Just a feeling...

00:01:55:16 - 00:02:00:08
that this time will be different.


]],
	["dragonflight_100_ike"] = [[
00:00:02:00 - 00:00:03:00
[electric crackling]

00:00:03:02 - 00:00:05:08
[heavy breathing]

00:00:05:10 - 00:00:06:13
It is done.

00:00:07:14 - 00:00:08:14
We stopped her.

00:00:10:01 - 00:00:12:09
[electric crackling intensifies]

00:00:13:07 - 00:00:17:03
No... the damage is too great!

00:00:17:05 - 00:00:18:08
They're about to...

00:00:20:14 - 00:00:21:22
[roars]

00:00:26:22 - 00:00:28:20
[Vyrannoth] Sister.

00:00:28:22 - 00:00:32:12
What have they done to you?

00:00:34:07 - 00:00:39:06
[Fyrrak] Her death demands vengeance!

00:00:39:07 - 00:00:40:11
[blast]

00:00:41:02 - 00:00:44:18
[Iridikron] All who betrayed dragonkind

00:00:44:19 - 00:00:46:19
to the titans

00:00:47:00 - 00:00:51:08
will face our wrath.

00:00:51:10 - 00:00:54:14
Khadgar, we cannot win this fight.

00:00:54:16 - 00:00:56:04
We have to get out of here!


]],
	["dragonflight_1007_coi"] = [[
00:00:02:00 - 00:00:03:23
[thunder rumbling]

00:00:05:06 - 00:00:07:09
[rain pattering]

00:00:09:02 - 00:00:12:03
The storm is receding.

00:00:13:02 - 00:00:16:10
The reach is ours once again.

00:00:16:12 - 00:00:17:12
[distant gust]

00:00:17:14 - 00:00:18:22
[faint roar]

00:00:18:24 - 00:00:20:06
[creature roars]

00:00:20:08 - 00:00:21:12
[dramatic music plays]

00:00:21:29 - 00:00:23:06
Take cover!

00:00:27:24 - 00:00:30:05
[Dezran] Who are they, Sarkareth?

00:00:30:07 - 00:00:33:09
Is it the Aspects?

00:00:33:11 - 00:00:34:19
No.

00:00:35:16 - 00:00:38:07
Raszageth's kin.

00:00:44:26 - 00:00:45:26
[thud]

00:00:45:28 - 00:00:47:05
[music fades out]

00:00:47:07 - 00:00:48:25
[thunder crashing]

00:00:50:17 - 00:00:54:18
The last echoes of her storm are fading.

00:00:55:27 - 00:00:57:18
She is truly gone.

00:00:57:20 - 00:00:59:27
We should be devouring

00:00:59:29 - 00:01:02:16
her murderers' hearts.

00:01:02:18 - 00:01:06:25
Do not underestimate them, Fyrakk.

00:01:07:19 - 00:01:10:17
Our sister's overconfidence

00:01:10:19 - 00:01:12:15
was her downfall.

00:01:13:27 - 00:01:16:25
While the Aspects' power has waned,

00:01:17:19 - 00:01:20:08
their forces grow stronger.

00:01:21:12 - 00:01:25:23
And we must even the scales.

00:01:25:25 - 00:01:29:10
[fizzing energy intensifying]

00:01:29:12 - 00:01:30:12
[blast]

00:01:30:14 - 00:01:31:16
[debris clatters]

00:01:31:18 - 00:01:33:11
[dramatic music plays]

00:01:34:09 - 00:01:36:17
They kept so many secrets…

00:01:37:21 - 00:01:39:14
from us,

00:01:40:04 - 00:01:42:14
and even from each other.

00:01:42:16 - 00:01:43:21
[lava bubbling]

00:01:43:23 - 00:01:45:20
[rumbling]

00:01:45:22 - 00:01:47:11
[dramatic music continues]

00:01:52:05 - 00:01:54:05
[heavy thudding]

00:02:03:14 - 00:02:04:14
[grunts]

00:02:05:05 - 00:02:06:28
[laughs menacingly]

00:02:12:12 - 00:02:14:04
[energy crackling]

00:02:14:29 - 00:02:16:08
[debris clatters]

00:02:18:12 - 00:02:20:03
It is here.

00:02:23:26 - 00:02:26:17
Neltharion's betrayal

00:02:26:19 - 00:02:29:09
shattered their unity…

00:02:30:20 - 00:02:33:27
left fissures in their hearts.

00:02:33:29 - 00:02:35:17
[rumbling]

00:02:41:27 - 00:02:42:27
[clank]

00:02:43:23 - 00:02:46:21
Yet the pain he inflicted

00:02:47:13 - 00:02:51:01
was only the beginning.

00:02:51:03 - 00:02:53:02
[energy blasts, whirs]

00:02:53:04 - 00:02:54:13
Aberrus…

00:02:55:08 - 00:02:57:13
his hidden laboratory.

00:02:58:06 - 00:03:03:15
One last secret, deep within the earth.

00:03:04:16 - 00:03:05:23
[music fades out]

00:03:08:02 - 00:03:10:10
[Vyranoth] The location of Aberrus

00:03:10:12 - 00:03:13:10
must lie within this vessel.

00:03:13:25 - 00:03:16:08
I will decipher its knowledge.

00:03:16:10 - 00:03:17:11
[scoffs]

00:03:17:13 - 00:03:19:09
What use are Neltharion's

00:03:19:11 - 00:03:22:13
twisted experiments to us?

00:03:22:15 - 00:03:24:17
The laboratory itself

00:03:24:19 - 00:03:26:21
is of no consequence.

00:03:26:23 - 00:03:27:23
[crunch]

00:03:27:25 - 00:03:31:00
But the molten fire that powers it…

00:03:31:28 - 00:03:34:05
that we can use.

00:03:35:06 - 00:03:37:16
Keep eyes on them, Dezran.

00:03:38:20 - 00:03:41:16
Whatever remains of Neltharion's legacy…

00:03:42:17 - 00:03:44:25
belongs to us.

00:03:44:27 - 00:03:46:15
[dramatic music continues]

00:03:47:26 - 00:03:49:25
[music crescendos, fades out]


]],
	["dragonflight_101_otw"] = [[
00:00:42:09 - 00:00:43:23
Halt!

00:00:43:25 - 00:00:46:13
You trespass in Shikaar territory!

00:00:46:15 - 00:00:49:21
Explain what you... are...

00:00:49:23 - 00:00:51:28
doing... here.

00:01:07:24 - 00:01:10:12
Can we get on with it?

00:01:10:29 - 00:01:13:20
You said we'd find it here.

00:01:13:22 - 00:01:15:12
We have.

00:01:15:29 - 00:01:17:24
From what I have transcribed,

00:01:17:26 - 00:01:21:14
Neltharion had a hidden path to Aberrus

00:01:21:16 - 00:01:23:26
just below this ridge.

00:01:24:14 - 00:01:28:16
Sealed beneath earth and water,

00:01:28:18 - 00:01:33:24
undisturbed for thousands of years.

00:01:33:26 - 00:01:37:10
Then let us open the way.

00:01:44:09 - 00:01:48:08
Fyrakk, you will feast

00:01:48:10 - 00:01:51:10
upon the elemental power below.

00:01:51:12 - 00:01:54:21
Wake the Elders from their slumber

00:01:55:08 - 00:02:00:29
and incinerate any who stand in our way.

00:02:31:01 - 00:02:32:28
Exquisite.

00:02:33:21 - 00:02:36:06
In his wake, the dracthyr will succumb

00:02:36:08 - 00:02:38:18
to the temptation of Aberrus

00:02:39:05 - 00:02:40:05
and unleash

00:02:40:07 - 00:02:43:19
the Aspects' darkest nightmares.

00:02:44:07 - 00:02:45:09
Come.

00:02:45:26 - 00:02:47:24
We have much to do.

00:02:48:25 - 00:02:51:20
Let the children of Neltharion

00:02:52:06 - 00:02:54:25
claim their birthright.


]],
	["dragonflight_101_mol"] = [[
00:00:08:02 - 00:00:10:02
[suspenseful music]

00:00:12:26 - 00:00:14:20
[sinister orchestral music]

00:00:20:28 - 00:00:21:28
[roars]


]],
	["dragonflight_101_wtr"] = [[
00:00:00:15 - 00:00:01:28
[Alexstrasza] For soon,

00:00:02:00 - 00:00:06:01
Azeroth will welcome from the dream

00:00:06:03 - 00:00:08:22
a symbol of hope,

00:00:08:24 - 00:00:13:09
and together, we shall protect it.


]],
	["dragonflight_1015_nfi"] = [[
1
00:00:02,000 --> 00:00:05,100
# MELANCHOLIC ORCHESTRAL MUSIC PLAYING

2
00:00:08,500 --> 00:00:09,933
ALEXSTRASZA: My friend...

3
00:00:11,067 --> 00:00:14,600
do the clouds still accost your mind?

4
00:00:14,667 --> 00:00:16,233
# EERIE MUSIC PLAYING

5
00:00:16,300 --> 00:00:19,833
NOZDORMU: Something much more terrifying.

6
00:00:21,333 --> 00:00:24,100
A moment of clarity.

7
00:00:24,167 --> 00:00:25,800
# DRAMATIC MUSIC PLAYING

8
00:00:25,867 --> 00:00:27,000
# ORCHESTRAL CRESCENDO

9
00:00:27,067 --> 00:00:28,067
# EERIE MUSIC PLAYING

10
00:00:28,133 --> 00:00:31,500
I have lived a million lives

11
00:00:31,900 --> 00:00:35,433
and witnessed
their endless unfolding threads.

12
00:00:36,367 --> 00:00:37,733
Was it a vision,

13
00:00:38,433 --> 00:00:40,400
a memory, or a dream?

14
00:00:41,200 --> 00:00:43,400
Is there any difference?

15
00:00:43,467 --> 00:00:44,900
Nozdormu,

16
00:00:45,333 --> 00:00:47,567
what did you see?

17
00:00:48,833 --> 00:00:50,733
My hour grows late.

18
00:00:51,900 --> 00:00:55,133
Those who broke their oaths
to the timeways -

19
00:00:55,533 --> 00:00:57,033
the Infinites -

20
00:00:57,433 --> 00:00:59,900
have struck a bargain.

21
00:01:02,967 --> 00:01:06,900
I do not know
what Iridikron has promised them,

22
00:01:07,767 --> 00:01:08,767
and yet...

23
00:01:09,267 --> 00:01:12,467
We have defeated each of them before.

24
00:01:12,933 --> 00:01:13,900
NOZDORMU: Yes.

25
00:01:13,967 --> 00:01:15,000
But together...

26
00:01:15,067 --> 00:01:16,367
# THUNDER ROLLING

27
00:01:16,433 --> 00:01:20,500
NOZDORMU: ...the infinite horizon
is all but inevitable.

28
00:01:21,633 --> 00:01:23,533
# THUNDER ROLLING

29
00:01:23,600 --> 00:01:28,533
NOZDORMU: And once I become
what they desperately want me to be...

30
00:01:29,900 --> 00:01:33,533
the darkest version of myself...

31
00:01:36,167 --> 00:01:38,400
the future will be lost...

32
00:01:40,200 --> 00:01:41,467
and so will I.

33
00:01:45,267 --> 00:01:48,367
I am not giving up on you, my friend.

34
00:01:49,900 --> 00:01:53,733
We are not giving up on you.

35
00:01:54,367 --> 00:01:56,933
# THUNDER ROLLING AND FADING OUT


]],
	["dragonflight_1015_mda"] = [[
1
00:00:02,000 --> 00:00:03,633
# DRAMATIC MUSIC PLAYING

2
00:00:03,700 --> 00:00:07,733
[GROANS] Here… goes… nothing!

3
00:00:10,367 --> 00:00:12,767
Yes! We did it!

4
00:00:12,833 --> 00:00:15,033
# THUNDER ROLLING

5
00:00:15,100 --> 00:00:16,533
Oh no… [GASPS]

6
00:00:17,233 --> 00:00:18,367
Nozdormu?

7
00:00:18,433 --> 00:00:20,433
# EERIE MUSIC PLAYING

8
00:00:21,733 --> 00:00:25,133
MUROZOND [GROWLS]: Nozdormu is gone.

9
00:00:25,633 --> 00:00:31,033
Only Murozond remains.

10
00:00:32,067 --> 00:00:33,200
No.

11
00:00:33,867 --> 00:00:36,367
I won't give up on you.

12
00:00:36,933 --> 00:00:39,767
# DRAMATIC MUSIC SWELLS AND FADES OUT


]],
	["dragonflight_1015_mdb"] = [[
1
00:00:02,000 --> 00:00:03,133
# DRAMATIC MUSIC PLAYING

2
00:00:03,200 --> 00:00:04,767
We did it!

3
00:00:04,833 --> 00:00:08,267
Our future is secured!

4
00:00:08,333 --> 00:00:09,267
# THUNDER ROLLING

5
00:00:09,333 --> 00:00:11,667
IRIDIKRON: Tell me, little one,

6
00:00:12,333 --> 00:00:14,500
have you ever questioned

7
00:00:14,567 --> 00:00:19,033
why the titans preserve this timeline?

8
00:00:19,500 --> 00:00:23,000
The titans safeguard our world

9
00:00:23,067 --> 00:00:25,600
from monsters like you!

10
00:00:26,467 --> 00:00:28,067
Your faith

11
00:00:28,733 --> 00:00:31,333
means nothing to them.

12
00:00:31,900 --> 00:00:36,500
As you burn in the flames
of my brother's wrath,

13
00:00:36,900 --> 00:00:39,100
they will not come.

14
00:00:39,733 --> 00:00:41,600
All they wanted

15
00:00:42,133 --> 00:00:44,467
was our world.

16
00:00:45,067 --> 00:00:46,167
With this,

17
00:00:46,567 --> 00:00:51,067
the harbinger will pry it
from their grasp.

18
00:00:51,467 --> 00:00:56,167
And when the titans come
to reclaim their prize,

19
00:00:56,967 --> 00:01:00,100
I will be waiting.

20
00:01:00,167 --> 00:01:03,500
# DRAMATIC MUSIC SWELLS AND FADES OUT


]],
	["dragonflight_1017_fi"] = [[
1
00:00:02,433 --> 00:00:04,433
[ragged breathing]

2
00:00:05,500 --> 00:00:09,767
[Fyrakk] Little green dragon.

3
00:00:10,633 --> 00:00:13,467
All alone.

4
00:00:14,433 --> 00:00:18,400
I was hunting the Aspect of your kind.

5
00:00:18,967 --> 00:00:21,500
Your dear mother.

6
00:00:22,067 --> 00:00:24,800
But you will have to do.

7
00:00:25,567 --> 00:00:26,800
[Gerithus] What... [inhales sharply]

8
00:00:27,533 --> 00:00:30,100
What do you want?

9
00:00:30,733 --> 00:00:34,233
I know what your flight is hiding.

10
00:00:34,733 --> 00:00:37,167
A fledgling World Tree,

11
00:00:37,833 --> 00:00:42,367
locked away in your Emerald Dream.

12
00:00:43,233 --> 00:00:48,900
And you are going to take me there.

13
00:00:49,567 --> 00:00:54,300
I will never betray my kin.

14
00:00:54,367 --> 00:00:56,333
[tuts]

15
00:00:56,400 --> 00:00:59,667
Let me be clear.

16
00:01:00,367 --> 00:01:04,333
I will kill every dragon

17
00:01:04,400 --> 00:01:07,200
who stands between me

18
00:01:07,267 --> 00:01:12,767
and the power in that great tree's heart.

19
00:01:13,533 --> 00:01:16,267
You can save them.

20
00:01:16,333 --> 00:01:20,167
Just let me in.

21
00:01:20,233 --> 00:01:22,200
[Vyranoth] Calm yourself, brother.

22
00:01:23,033 --> 00:01:27,700
We are meant to break
the Titans' iron grip on this world,

23
00:01:27,767 --> 00:01:30,433
not steal their children's future,

24
00:01:30,500 --> 00:01:32,633
as they did ours.

25
00:01:32,700 --> 00:01:37,300
I was just offering this whelp
a chance to serve our cause

26
00:01:37,367 --> 00:01:41,100
and spare his people a gruesome...

27
00:01:41,733 --> 00:01:44,200
yet delightful,

28
00:01:44,267 --> 00:01:46,733
massacre.

29
00:01:46,800 --> 00:01:49,633
-[groaning]
-[Fyrakk cackles]

30
00:01:49,700 --> 00:01:51,567
[cackles]

31
00:01:51,633 --> 00:01:52,733
Fyrakk.

32
00:01:52,800 --> 00:01:54,567
[cackles]

33
00:01:55,300 --> 00:01:56,300
Fyrakk!

34
00:01:56,367 --> 00:01:57,700
[cackling stops]

35
00:02:03,100 --> 00:02:04,100
[bellows]

36
00:02:05,467 --> 00:02:07,467
[dramatic orchestral music]

37
00:02:12,467 --> 00:02:13,533
Brother,

38
00:02:14,133 --> 00:02:18,367
remember what we are fighting for.

39
00:02:21,433 --> 00:02:22,533
[scoffs]

40
00:02:22,600 --> 00:02:23,833
So be it.

41
00:02:24,533 --> 00:02:29,900
I'll find another way
into their precious Dream.

42
00:02:30,533 --> 00:02:35,033
And then the power that grows within...

43
00:02:38,600 --> 00:02:42,000
...will be ours.

44
00:02:45,233 --> 00:02:46,433
[ragged breathing]

45
00:02:46,933 --> 00:02:48,133
Thank you.

46
00:02:59,500 --> 00:03:01,433
[heavy thud echoes]


]],
	["dragonflight_102_fdi"] = [[
1
00:00:04,400 --> 00:00:05,433
[metallic thud]

2
00:00:05,500 --> 00:00:10,633
[Fyrakk] My brother believed
he could control me,

3
00:00:11,433 --> 00:00:15,933
this rage inside my heart.

4
00:00:17,667 --> 00:00:23,333
My sister believed she could tame me.

5
00:00:24,167 --> 00:00:29,200
My fury will not be sated.

6
00:00:30,267 --> 00:00:36,900
The Aspects believed
they could imprison me,

7
00:00:38,433 --> 00:00:45,233
but my hatred cannot be contained.

8
00:00:47,467 --> 00:00:50,500
They know what is coming.

9
00:00:51,300 --> 00:00:57,033
That the unyielding flame draws closer,

10
00:00:57,533 --> 00:01:00,133
ever closer.

11
00:01:01,000 --> 00:01:02,033
Even now,

12
00:01:02,600 --> 00:01:06,933
they cling to one another in the dark...

13
00:01:07,222 --> 00:01:10,849
lost in their "dream".

14
00:01:15,967 --> 00:01:17,567
Deceived

15
00:01:17,633 --> 00:01:24,100
by those who squandered our birthright.

16
00:01:31,100 --> 00:01:33,600
Betrayers,

17
00:01:34,167 --> 00:01:36,767
all of them.

18
00:01:37,867 --> 00:01:41,267
So it falls to me

19
00:01:41,333 --> 00:01:46,233
to make them pay.

20
00:01:46,300 --> 00:01:48,333
[grunts violently]

21
00:01:48,400 --> 00:01:50,000
[energy whooshing]

22
00:01:50,567 --> 00:01:54,167
[cackles menacingly]

23
00:01:56,300 --> 00:01:59,067
Their suffering

24
00:01:59,867 --> 00:02:03,600
has just begun.


]],
	["dragonflight_102_fra"] = [[
1
00:00:00,000 --> 00:00:02,000
[soaring orchestral music]

2
00:00:22,267 --> 00:00:23,767
[music crescendos]

]],
	["dragonflight_1025_ivp"] = [[
1
00:00:03,667 --> 00:00:06,267
[Vyranoth] I had received a missive
from Iridikron.

2
00:00:07,367 --> 00:00:10,533
He wished to speak with me, and me alone.

3
00:00:10,600 --> 00:00:11,567
[whoosh]

4
00:00:14,200 --> 00:00:15,633
[thunder rumbles]

5
00:00:15,700 --> 00:00:17,233
I am here.

6
00:00:20,600 --> 00:00:24,733
[Iridikron] It seems your courage
has not faltered,

7
00:00:24,800 --> 00:00:28,567
despite abandoning our war.

8
00:00:29,867 --> 00:00:32,733
That war is over, Iridikron.

9
00:00:32,800 --> 00:00:35,400
It was you who abandoned our cause,

10
00:00:35,467 --> 00:00:38,633
who abandoned Fyrakk
to his own destruction.

11
00:00:39,367 --> 00:00:43,100
All for some trinket
Neltharion left behind.

12
00:00:44,067 --> 00:00:49,033
[Iridikron] The Dark Heart
is no mere trinket.

13
00:00:50,333 --> 00:00:55,233
Its power now lies
in the Harbinger's hands.

14
00:00:59,767 --> 00:01:02,800
The Void cannot be trusted.

15
00:01:02,867 --> 00:01:03,933
[whoosh]

16
00:01:04,667 --> 00:01:08,033
I trust its hunger.

17
00:01:08,100 --> 00:01:12,700
You know the Titans infected our world,

18
00:01:12,767 --> 00:01:15,967
and I will see them extinguished.

19
00:01:16,800 --> 00:01:19,767
The question is, sister,

20
00:01:19,833 --> 00:01:21,300
will you?

21
00:01:22,400 --> 00:01:25,900
I will have no part of this.

22
00:01:26,533 --> 00:01:27,800
[Iridikron] Hmm.

23
00:01:27,867 --> 00:01:32,733
Then the bond of the Incarnates
is truly ended.

24
00:01:34,100 --> 00:01:36,633
You will not see me again

25
00:01:36,700 --> 00:01:40,167
until the Titans face their reckoning.

26
00:01:40,700 --> 00:01:43,767
But to you, Vyranoth,

27
00:01:43,833 --> 00:01:47,200
I offer one final warning.

28
00:01:47,600 --> 00:01:49,233
[whoosh]

29
00:01:51,067 --> 00:01:54,200
Stay out of my way.

30
00:01:54,267 --> 00:01:56,400
[dramatic music builds, fades out]


]],
	["tww_110_ta"] = [[
1
00:00:00,017 --> 00:00:02,017
[serene orchestral music]

2
00:00:02,100 --> 00:00:04,100
[wind gusting]

3
00:00:28,725 --> 00:00:30,517
[inhales]

4
00:00:30,600 --> 00:00:31,850
[exhales]

5
00:00:33,225 --> 00:00:34,642
[World Soul] Anduin...

6
00:00:46,403 --> 00:00:47,695
[whooshing]

7
00:00:48,767 --> 00:00:50,725
[approaching footsteps]

8
00:01:01,308 --> 00:01:03,392
You're here to tell me
we don't get to hide.

9
00:01:05,683 --> 00:01:06,683
Is that it?

10
00:01:07,683 --> 00:01:09,267
You needed time.

11
00:01:10,392 --> 00:01:11,725
We stayed away.

12
00:01:13,058 --> 00:01:16,892
But time by itself heals nothing.

13
00:01:26,517 --> 00:01:28,517
You didn't just come here for me.

14
00:01:30,183 --> 00:01:31,475
It's the visions.

15
00:01:33,850 --> 00:01:34,933
You've seen them.

16
00:01:36,475 --> 00:01:39,308
I suspect many have, lately.

17
00:01:51,058 --> 00:01:52,183
Something,

18
00:01:53,183 --> 00:01:54,600
someone,

19
00:01:55,100 --> 00:01:58,058
is calling out
from the heart of the world.

20
00:02:00,100 --> 00:02:02,308
Like a voice from a dream.

21
00:02:03,308 --> 00:02:05,308
[ominous orchestral music]

22
00:02:09,017 --> 00:02:12,308
Something dark is coming, Anduin.

23
00:02:14,642 --> 00:02:17,975
The world needs your Light again.

24
00:02:19,767 --> 00:02:21,433
[Varian] My son...

25
00:02:24,142 --> 00:02:25,850
[breathing heavily]

26
00:02:26,642 --> 00:02:27,642
[yells]

27
00:02:30,433 --> 00:02:32,517
I am not that person anymore!

28
00:02:35,183 --> 00:02:36,808
I have no Light.

29
00:02:39,058 --> 00:02:40,683
Not after what I've seen.

30
00:02:42,975 --> 00:02:44,850
Not after what I've done.

31
00:02:53,933 --> 00:02:56,933
You are not your past, Anduin.

32
00:03:04,850 --> 00:03:06,183
I trust you.

33
00:03:07,392 --> 00:03:09,392
[majestic orchestral music]

34
00:03:24,725 --> 00:03:26,433
[high-pitched screeching]

35
00:03:26,517 --> 00:03:27,642
[World Soul] Hear me!

36
00:03:33,892 --> 00:03:35,142
They're getting worse.

37
00:03:47,642 --> 00:03:48,642
Look,

38
00:03:49,642 --> 00:03:50,850
whatever's coming,

39
00:03:51,475 --> 00:03:52,725
I'll stand with you.

40
00:03:53,600 --> 00:03:54,767
Of course I will.

41
00:03:56,517 --> 00:03:58,517
But we were drawn here by the voice.

42
00:03:59,433 --> 00:04:00,850
Who is it, Thrall?

43
00:04:01,517 --> 00:04:03,100
Who's calling out to us?

44
00:04:05,308 --> 00:04:06,767
I'm not sure yet.

45
00:04:12,558 --> 00:04:14,183
But that sword

46
00:04:15,183 --> 00:04:18,142
was aimed at someone.

47
00:04:18,225 --> 00:04:20,225
[ominous orchestral music]

48
00:04:25,725 --> 00:04:27,350
[rumbling]


]],
	["tww_110_ssf"] = [[
1
00:00:00,067 --> 00:00:02,733
[narrator] From the moment
the Dark Titan Sargeras

2
00:00:02,800 --> 00:00:05,933
plunged his colossal blade into our world,

3
00:00:06,000 --> 00:00:08,300
crucial events were set in motion.

4
00:00:08,867 --> 00:00:12,267
Magni Bronzebeard heard
the cries of Azeroth,

5
00:00:12,333 --> 00:00:15,067
giving up everything to answer her call.

6
00:00:15,133 --> 00:00:18,433
Since being wounded by the Mad Titan,

7
00:00:18,500 --> 00:00:21,400
Azeroth has been crying out in pain.

8
00:00:21,900 --> 00:00:23,667
[narrator] As her dutiful Speaker,

9
00:00:23,733 --> 00:00:27,633
he rallied the champions to her aid,
and ultimately,

10
00:00:27,700 --> 00:00:32,300
to confront the return
of the Old God N'Zoth.

11
00:00:32,800 --> 00:00:35,933
It was during this conflict
that Xal'atath,

12
00:00:36,000 --> 00:00:38,167
a mysterious entity of the Void,

13
00:00:38,233 --> 00:00:40,467
made a deal with N'Zoth,

14
00:00:40,533 --> 00:00:44,700
freeing her from the cursed blade
that bound her essence within.

15
00:00:44,767 --> 00:00:46,700
[Xal'atath] Honor our bargain.

16
00:00:46,767 --> 00:00:49,833
Free me to find my own fate.

17
00:00:50,500 --> 00:00:52,733
[narrator] After she vanished
into the darkness,

18
00:00:52,800 --> 00:00:55,900
N'Zoth was confronted
by the mortal champions

19
00:00:55,967 --> 00:00:57,233
and destroyed,

20
00:00:57,300 --> 00:01:00,600
ending the Old Gods' reign of terror.

21
00:01:01,100 --> 00:01:03,633
But they were not
the only malevolent force

22
00:01:03,700 --> 00:01:06,300
with its eyes set on Azeroth.

23
00:01:08,000 --> 00:01:10,500
For soon, the sky was sundered,

24
00:01:10,567 --> 00:01:12,600
the Shadowlands split open,

25
00:01:12,667 --> 00:01:17,400
and our heroes were pulled
into the realm of Death itself.

26
00:01:17,467 --> 00:01:19,600
Go, champion. Go!

27
00:01:20,100 --> 00:01:24,533
[narrator] It was there
that Anduin Wrynn endured the worst.

28
00:01:25,033 --> 00:01:26,933
Captured, tortured,

29
00:01:27,000 --> 00:01:29,300
and through dark Domination magics

30
00:01:29,367 --> 00:01:31,400
forced to commit terrible acts

31
00:01:31,467 --> 00:01:33,100
against his will.

32
00:01:33,167 --> 00:01:35,700
I'm afraid that if I call on the Light,

33
00:01:36,733 --> 00:01:37,800
it won't answer.

34
00:01:37,867 --> 00:01:41,333
[narrator] Scarred and shaken
by his experience,

35
00:01:41,400 --> 00:01:44,700
he vanished, his whereabouts unknown.

36
00:01:46,167 --> 00:01:49,067
After the threat of the Shadowlands
had been quelled,

37
00:01:49,133 --> 00:01:54,033
the dragons of Azeroth returned
to their ancestral homeland.

38
00:01:54,833 --> 00:01:58,400
It was here that
the Primal dragon Iridikron

39
00:01:58,467 --> 00:02:00,100
broke free of his prison.

40
00:02:00,167 --> 00:02:03,433
And in pursuit of vengeance
upon the Titans,

41
00:02:03,500 --> 00:02:06,100
who he felt had stolen our world,

42
00:02:06,167 --> 00:02:09,733
he secured an ancient, powerful artifact -

43
00:02:09,800 --> 00:02:11,633
the Dark Heart.

44
00:02:11,700 --> 00:02:16,200
When the Titans come
to reclaim their prize,

45
00:02:16,833 --> 00:02:20,167
I will be waiting.

46
00:02:21,900 --> 00:02:25,233
[narrator] As word of this new threat
started to spread,

47
00:02:25,300 --> 00:02:28,733
people began experiencing strange visions.

48
00:02:28,800 --> 00:02:29,967
[high-pitched screech]

49
00:02:30,033 --> 00:02:31,967
The Radiant Song.

50
00:02:32,033 --> 00:02:34,900
[Khadgar] It's being heard
all across Azeroth.

51
00:02:34,967 --> 00:02:37,633
The Council doesn't know
what to make of it.

52
00:02:37,700 --> 00:02:40,333
[narrator] It was then
that Alleria Windrunner,

53
00:02:40,400 --> 00:02:43,067
a deadly huntress
who had harnessed the powers of the Void

54
00:02:43,133 --> 00:02:45,633
as a weapon against the darkness,

55
00:02:45,700 --> 00:02:47,833
was summoned to investigate.

56
00:02:47,900 --> 00:02:52,367
We still don't know
what this Dark Heart relic is capable of,

57
00:02:52,433 --> 00:02:57,100
but we do know it's in the hands
of someone called the Harbinger.

58
00:02:59,300 --> 00:03:04,033
[narrator] It was not long before Alleria
discovered the Harbinger's true identity -

59
00:03:04,933 --> 00:03:05,967
Xal'atath.

60
00:03:06,033 --> 00:03:09,933
The mysterious figure
was once again on the move.

61
00:03:10,433 --> 00:03:14,400
While neither Xal'atath
nor the Dark Heart could be found,

62
00:03:14,467 --> 00:03:15,667
her mentor,

63
00:03:15,733 --> 00:03:17,733
the enigmatic Locus-Walker,

64
00:03:17,800 --> 00:03:20,600
issued Alleria a dire warning.

65
00:03:20,667 --> 00:03:23,233
[Locus-Walker]
The radiant visions you spoke of

66
00:03:23,300 --> 00:03:26,267
are the very same my people had

67
00:03:26,333 --> 00:03:31,933
before our world was consumed
by the Void Lord Dimensius.

68
00:03:32,000 --> 00:03:36,300
Could Xal'atath be seeking
that same fate for Azeroth?

69
00:03:36,367 --> 00:03:40,000
[Locus-Walker]
You must find a way to stop her.

70
00:03:40,067 --> 00:03:41,400
If you cannot,

71
00:03:42,333 --> 00:03:46,733
then Azeroth is already doomed.


]],
	["wow_ani_als"] = [[
[roars]
[somber piano music]
[Alleria] When we are young, we are taught to revere the Light.
But when I turn to it, I see only fire.
-[flames whooshing] -[orc snarls]
The fire of pain, of loss, the choices I made.
[epic orchestral music]
Quel'Thalas.
Home.
Until the Horde threatened everything.
My family was sworn to protect it.
[dramatic orchestral music]
[orc roars]
And protect it we did.
[orcs groan]
-When Sylvanas and I fought together... -[orc roars]
...we fought as one.
[both gasp]
But the conflict here was growing,
pulling my sister and I apart.
[Alleria grunts]
[thunder crashes]
[somber orchestral music]
[Sylvanas] How can you leave?
You would choose the Alliance over Quel'Thalas, our home?
[Alleria] It's not just our kingdom at risk.
If the Horde isn't beaten back, others will fall.
I have to go.
But you're abandoning your family.
I am doing this for our family.
[thunder rumbling]
[Alleria] I lost a sister that day.
Had I known that my actions would curse Sylvanas to her fate,
would I have chosen differently?
I left my home to fight this war to the end.
I had no idea how far away that fight would take me.
-[whooshing] -[baby wails]
Yet, despite the war,
I found my life's true love,
Turalyon.
And together, we fought side by side
until we became three.
But beyond the boundaries of our world,
our enemies grew powerful.
You can make your stand here.
Why risk marching into the unknown?
Our only choice is to take the fight to them,
before it's too late.
Should we not succeed...
I will keep him safe.
Just come back.
We'll return before you know it,
Arator.
[Arator coos]
[Arator grizzles]
[Alleria] Had I known that I would not see my son again until he was a man himself,
would I have still left?
[fire crackling]
I had given everything for this fight.
[dramatic orchestral music]
The only thing left to give
was myself.
[fighting grunts]
There was no other way.
-[demon snarls] -[Turalyon grunts]
In order to defeat the darkness...
[demons snarling]
...I had to embrace it.
[whooshing]
[demons snarling]
So embrace it I did.
[Alleria screams]
[demons snarling]
[guttural panting]
[demons snarling]
[Alleria yells]
[Alleria grunts]
But at what cost?
Turalyon, who had known me, loved me,
fought beside me,
now saw me differently.
What have you done?
The Shadow, it saved us.
No.
[Turalyon groans]
I would rather have died than see you fall to evil.
[Alleria] Turalyon didn't understand,
but I could not fault him.
If I had known that embracing the Shadow would push him away,
would I have sought another path?
[Alleria exhales shakily]
[thud in distance]
No.
All of the things I did,
I did for a reason.
[demon snarls]
War is sacrifice.
And I have sacrificed everything
to protect those I love.
To keep them safe.
And if it takes sacrificing myself to protect our world...
I will not hesitate.
[soaring orchestral music]
I am a soldier of Azeroth.
]],
	["tww_110_tod"] = [[
1
00:00:02,000 --> 00:00:03,833
[soaring orchestral music]

2
00:00:15,500 --> 00:00:18,433
It's even more amazing than I'd imagined!

3
00:00:19,067 --> 00:00:22,700
But my visions were of fire

4
00:00:23,367 --> 00:00:24,567
and war.

5
00:00:25,100 --> 00:00:26,067
[Alleria groans]

6
00:00:29,567 --> 00:00:30,633
Something's wrong.

7
00:00:31,733 --> 00:00:33,333
I need to find Khadgar.

8
00:00:41,133 --> 00:00:41,967
[sighs]

9
00:00:42,533 --> 00:00:43,467
Drenden.

10
00:00:43,967 --> 00:00:46,033
Where's the rest of the Council?

11
00:00:46,600 --> 00:00:47,867
[Drenden chuckles]

12
00:00:48,367 --> 00:00:51,633
[Xal'atath] Drenden's been dead for years.

13
00:00:52,300 --> 00:00:55,433
All this time,

14
00:00:55,500 --> 00:00:58,333
and you never once sensed my presence.

15
00:00:59,300 --> 00:01:00,467
[chuckling] Oh.

16
00:01:00,533 --> 00:01:03,100
It's not time for that yet.

17
00:01:03,800 --> 00:01:07,533
But if you're so eager for a fight,

18
00:01:08,167 --> 00:01:11,333
perhaps this can keep you occupied.

19
00:01:12,733 --> 00:01:14,267
[screaming in distance]

20
00:01:14,767 --> 00:01:18,900
[Xal'atath] Until we meet again, Alleria.

]],
	["tww_110_dod"] = [[
1
00:00:02,733 --> 00:00:04,733
[energy crackling]

2
00:00:06,367 --> 00:00:08,933
[dramatic orchestral music]

3
00:00:17,633 --> 00:00:19,333
Khadgar.

4
00:00:20,100 --> 00:00:22,833
We meet at last.

5
00:00:23,800 --> 00:00:27,500
Xal'atath, I presume?

6
00:00:28,200 --> 00:00:32,433
[Xal'atath]
This city is home to such power,

7
00:00:33,167 --> 00:00:36,567
all squandered by the Kirin Tor.

8
00:00:37,933 --> 00:00:41,700
I'll put it to much better use.

9
00:00:41,767 --> 00:00:44,600
Like hell you will!

10
00:00:45,533 --> 00:00:46,600
[grunts]

11
00:00:47,700 --> 00:00:49,067
[Khadgar yells]

12
00:00:49,867 --> 00:00:51,867
[grunts]

13
00:00:54,333 --> 00:00:55,433
[energy whooshes]

14
00:01:03,600 --> 00:01:04,600
[gasps]

15
00:01:05,867 --> 00:01:07,100
[energy whooshing]

16
00:01:10,167 --> 00:01:11,667
[grunts]

17
00:01:12,533 --> 00:01:13,367
[groans]

18
00:01:19,933 --> 00:01:21,733
There you are.

19
00:01:26,400 --> 00:01:27,567
[grunts]

20
00:01:27,633 --> 00:01:29,133
[groans]

21
00:01:29,200 --> 00:01:30,033
Alleria!

22
00:01:30,100 --> 00:01:33,067
[Alleria] Get out of my head!

23
00:01:33,733 --> 00:01:35,300
[Xal'atath chuckles]

24
00:01:41,167 --> 00:01:42,467
[grunts]

25
00:01:43,833 --> 00:01:45,200
Khadgar...

26
00:01:45,267 --> 00:01:49,567
This isn't the real fight.

27
00:01:50,067 --> 00:01:51,100
No!

28
00:01:53,200 --> 00:01:54,367
[gasps]

29
00:01:59,467 --> 00:02:02,800
Goodbye, Guardian.

30
00:02:03,600 --> 00:02:05,600
[energy whooshing]

31
00:02:07,500 --> 00:02:09,433
[groans]

32
00:02:14,467 --> 00:02:16,467
[rumbling]

33
00:02:18,100 --> 00:02:19,267
[gasps]

34
00:02:27,033 --> 00:02:28,233
[energy whooshes]

35
00:02:28,300 --> 00:02:29,533
[explosion]

36
00:02:34,133 --> 00:02:36,133
[suspenseful orchestral music]

]],
	["tww_110_ug"] = [[
1
00:00:08,167 --> 00:00:10,042
[tools clanging in distance]

2
00:00:45,042 --> 00:00:47,625
[heavy metallic thudding]

3
00:00:52,167 --> 00:00:53,750
[screeches]

4
00:00:53,833 --> 00:00:55,417
[dramatic orchestral music]

5
00:01:06,875 --> 00:01:08,750
[heavy metallic thudding]

6
00:01:27,167 --> 00:01:28,167
[screeches]

7
00:01:44,500 --> 00:01:45,958
[music stops abruptly]

8
00:01:46,875 --> 00:01:49,875
[indistinct guttural whispering]

9
00:01:55,458 --> 00:01:57,542
[cauldron bubbling]

10
00:01:58,208 --> 00:02:00,583
[guttural snarling]

11
00:02:00,667 --> 00:02:01,917
[screeches]

12
00:02:02,000 --> 00:02:04,083
[dramatic orchestral music]

13
00:02:16,667 --> 00:02:19,250
[chuckles menacingly]


]],
	["wow_cgi_eoa"] = [[
[brooding orchestral music]
[Xal'atath] In darkness...
she slumbers...
and dreams.
[wind whistling]
And for countless generations,
mortal heroes
have risen to defend her.
They faced monsters,
tyrants,
and beasts of primordial horror.
[Deathwing roars]
[Xal'atath] Though they fought amongst themselves...
their enmity following them
to the most distant shores...
We will never be slaves!
[Xal'atath] ...and even across time...
and space...
their courage never faltered.
-Even upon the very threshold of death. -[Sylvanas screams]
[dragon roars]
[Xal'atath] While new hope blooms on the horizon,
the final battle draws near.
[overlapping ethereal voices]
[Xal'atath] Now, in the darkness...
[dramatic orchestral music]
...at the very heart of the world...
the drums of war thunder
once again.
And Azeroth, at last,
awakens.
The Worldsoul,
so long denied me,
shall be mine.
[rumbling]
[overlapping ethereal voices]
]],
	["tww_110_mag"] = [[
1
00:00:01,967 --> 00:00:03,700
[ominous orchestral music]

2
00:00:04,900 --> 00:00:07,633
It is done!

3
00:00:08,400 --> 00:00:11,733
Now, with this power,

4
00:00:11,800 --> 00:00:13,767
all Earthen

5
00:00:13,833 --> 00:00:16,767
shall awaken.

6
00:00:16,833 --> 00:00:18,067
[chuckles menacingly]

7
00:00:22,133 --> 00:00:23,633
[whooshing]

8
00:00:33,633 --> 00:00:35,500
We've lost them all.

9
00:00:36,700 --> 00:00:37,900
[sighs]

10
00:00:38,500 --> 00:00:39,600
It's over.

11
00:00:41,000 --> 00:00:44,267
Granda, you can stop this.

12
00:00:44,333 --> 00:00:46,867
I've seen you wield Azeroth's gift.

13
00:00:48,167 --> 00:00:49,533
It's you.

14
00:00:49,600 --> 00:00:52,100
You're the only one who can save them.

15
00:00:55,700 --> 00:00:57,033
[whooshing]

16
00:00:57,100 --> 00:00:58,333
[world soul] Magni...

17
00:00:59,500 --> 00:01:00,833
[echoing] ...it is time.

18
00:01:20,267 --> 00:01:22,000
[soaring orchestral music]

19
00:01:27,800 --> 00:01:31,633
Azeroth, let your blessing

20
00:01:31,700 --> 00:01:33,767
pass to them.

21
00:01:43,933 --> 00:01:45,833
[rumbling]

22
00:01:58,567 --> 00:02:00,233
[somber orchestral music]

23
00:02:09,833 --> 00:02:11,633
[Dagran] You did it, Granda.

24
00:02:13,067 --> 00:02:14,467
You saved them.

25
00:02:15,867 --> 00:02:16,867
[sobs]

26
00:02:19,533 --> 00:02:21,500
[sobbing continues]

27
00:02:29,133 --> 00:02:30,633
[whooshing]

28
00:02:31,667 --> 00:02:33,500
[uplifting orchestral music]

29
00:02:43,900 --> 00:02:46,000
[Magni panting]

30
00:02:49,000 --> 00:02:50,800
She let me go.

31
00:02:52,000 --> 00:02:53,533
[approaching footsteps]

32
00:02:55,267 --> 00:02:58,467
You woke me.

33
00:02:59,433 --> 00:03:00,900
Who are you?

34
00:03:02,100 --> 00:03:02,933
I'm...

35
00:03:04,567 --> 00:03:05,733
Magni.

36
00:03:08,300 --> 00:03:09,833
Magni.

37
00:03:10,700 --> 00:03:13,900
But who am I?

38
00:03:15,400 --> 00:03:18,467
Whoever you want to be.

39
00:03:21,533 --> 00:03:24,200
[triumphant orchestral music crescendos]

]],
	["tww_110_tcn"] = [[
1
00:00:02,433 --> 00:00:06,067
[Queen Ansurek]
And this I promise to you all.

2
00:00:06,133 --> 00:00:09,133
With our renewed strength,

3
00:00:09,200 --> 00:00:13,000
our kingdom shall be reborn!

4
00:00:13,067 --> 00:00:14,800
[nerubians chittering]

5
00:00:15,567 --> 00:00:19,800
I can feel the Void's influence upon her.

6
00:00:20,700 --> 00:00:23,067
She's Xal'atath's creature now.

7
00:00:23,633 --> 00:00:25,233
[Anduin] How could you know that?

8
00:00:28,533 --> 00:00:31,100
Alleria, we need to go.

9
00:00:33,200 --> 00:00:35,633
[sighs] Maybe you're right.

10
00:00:38,467 --> 00:00:40,800
-[Alleria groans]
-[distorted whooshing]

11
00:00:41,300 --> 00:00:42,233
Wait.

12
00:00:47,233 --> 00:00:48,967
[Alleria] She's here.

13
00:00:49,533 --> 00:00:50,467
What?

14
00:00:50,533 --> 00:00:52,100
Xal'atath.

15
00:00:53,433 --> 00:00:54,267
No!

16
00:00:56,700 --> 00:00:58,200
For Khadgar.

17
00:01:01,900 --> 00:01:03,467
[Xal'atath chuckles]

18
00:01:04,033 --> 00:01:05,767
[roars]

19
00:01:06,700 --> 00:01:08,933
[nerubian guard] Get the queen to safety!

20
00:01:09,000 --> 00:01:10,533
Move! Now!

21
00:01:10,600 --> 00:01:12,433
[nerubian guard] Repel the intruders!


]],
	["tww_110_lc"] = [[
1
00:00:00,542 --> 00:00:02,542
[eerie music]

2
00:00:07,417 --> 00:00:11,417
[Ansurek] Slender is the strand
that guides our destiny,

3
00:00:12,167 --> 00:00:15,667
known only by true sacrifice.

4
00:00:17,417 --> 00:00:20,292
In our kingdom of Azj-Kahet,

5
00:00:20,375 --> 00:00:25,208
no one understood this sacrifice
more than Queen Neferess...

6
00:00:27,958 --> 00:00:29,292
...my mother.

7
00:00:30,417 --> 00:00:34,000
I saw this when the Black Empire came

8
00:00:34,083 --> 00:00:37,583
to conscript us
for their last stand at Ny'alotha.

9
00:00:38,875 --> 00:00:41,417
My mother refused them.

10
00:00:44,083 --> 00:00:46,167
[minion] For this treachery,

11
00:00:46,250 --> 00:00:49,708
your line will sever itself!

12
00:00:49,792 --> 00:00:53,083
[grunts] This kingdom will wither

13
00:00:53,167 --> 00:00:55,750
with the waning of your will--

14
00:00:56,250 --> 00:00:57,250
[minion groans]

15
00:01:00,125 --> 00:01:03,375
[Ansurek] Our strength defined us
that day.

16
00:01:04,000 --> 00:01:06,125
And in that moment,

17
00:01:06,208 --> 00:01:09,375
we felt destined for greatness.

18
00:01:11,208 --> 00:01:13,875
But in the years that followed,

19
00:01:13,958 --> 00:01:16,500
our greatness was tarnished.

20
00:01:19,542 --> 00:01:20,875
Look at them out there.

21
00:01:20,958 --> 00:01:23,417
-[indistinct yelling]
-[Ansurek] Wretched.

22
00:01:23,500 --> 00:01:24,667
Starving.

23
00:01:24,750 --> 00:01:28,542
[Neferess sighs] I am not immune
to our people's suffering.

24
00:01:28,625 --> 00:01:31,542
I believe better days will come.

25
00:01:31,625 --> 00:01:36,125
[Ansurek] Not if you keep failing
to seize the moment.

26
00:01:36,208 --> 00:01:40,167
What was the point
of you freeing our future,

27
00:01:40,250 --> 00:01:42,958
only to leave us buried in the past?

28
00:01:43,042 --> 00:01:46,667
[Neferess sighs] You comprehend so little.

29
00:01:46,750 --> 00:01:50,750
There is much for you to learn
before you can be queen.

30
00:01:50,833 --> 00:01:53,625
[Ansurek] Mother. Mother! [echoing]

31
00:02:02,625 --> 00:02:04,375
-[Neferess sighs]
-[flame crackling]

32
00:02:04,458 --> 00:02:05,667
[crackling stops]

33
00:02:07,500 --> 00:02:08,667
[Neferess] Ansurek?

34
00:02:10,333 --> 00:02:12,125
Are you seeing this?

35
00:02:14,125 --> 00:02:19,000
[Xal'atath] You have heard my voice
in your dreams, Great Queen.

36
00:02:24,708 --> 00:02:26,500
[Neferess] The Harbinger.

37
00:02:26,583 --> 00:02:31,000
[Xal'atath] Yes, of the empire that was.

38
00:02:31,083 --> 00:02:33,458
But the Old Gods are dead,

39
00:02:34,042 --> 00:02:36,708
the empire lies in ashes,

40
00:02:37,333 --> 00:02:41,000
and a shadow has fallen on your kingdom.

41
00:02:42,083 --> 00:02:46,208
But the blood of the Old Gods...

42
00:02:47,500 --> 00:02:50,750
can make your people powerful again.

43
00:02:51,542 --> 00:02:56,250
Your reign could last for eternity.

44
00:02:56,750 --> 00:03:03,417
All you have to do is take my hand.

45
00:03:06,167 --> 00:03:08,958
[Neferess] Your words are tempting,

46
00:03:09,042 --> 00:03:11,292
but the cost is too great.

47
00:03:11,958 --> 00:03:15,458
I would never risk my kingdom
for such power.

48
00:03:15,542 --> 00:03:18,042
-[flame crackling]
-[Ansurek] Mother.

49
00:03:19,292 --> 00:03:20,833
Who are you talking to?

50
00:03:21,875 --> 00:03:25,083
[Neferess sighs] Ghosts, dearest.

51
00:03:25,750 --> 00:03:29,792
As always, they are my ready counsel.

52
00:03:31,333 --> 00:03:34,042
[Ansurek] I'm not sorry for what I said.

53
00:03:35,083 --> 00:03:38,917
I only want our people
to be great once more.

54
00:03:40,542 --> 00:03:42,750
[Neferess] Greatness is fleeting.

55
00:03:42,833 --> 00:03:46,542
What we must do now is endure.

56
00:03:46,625 --> 00:03:48,958
Your time will come, child,

57
00:03:49,042 --> 00:03:51,208
but only when you are rea-- [gasps]

58
00:03:51,292 --> 00:03:52,375
[blade plunges]

59
00:03:53,292 --> 00:03:54,917
[Neferess groans]

60
00:03:55,000 --> 00:03:58,958
-[dagger clangs]
-[weakly] What have you done?

61
00:03:59,042 --> 00:04:01,042
[Ansurek panting]

62
00:04:01,125 --> 00:04:04,333
[Ansurek] You are not
the only one seeing ghosts,

63
00:04:04,417 --> 00:04:05,417
Mother.

64
00:04:06,792 --> 00:04:08,625
[Xal'atath] How sad,

65
00:04:08,708 --> 00:04:11,375
to have a queen so wise,

66
00:04:11,458 --> 00:04:17,083
and yet so ignorant
to the call of destiny.

67
00:04:17,167 --> 00:04:18,375
[Neferess gasps]

68
00:04:18,875 --> 00:04:20,708
[Neferess] You...

69
00:04:21,542 --> 00:04:25,083
[Ansurek] Her name is Xal'atath.

70
00:04:27,833 --> 00:04:30,458
You had your chance, Mother.

71
00:04:31,375 --> 00:04:33,583
With this power,

72
00:04:33,667 --> 00:04:37,083
Azj-Kahet is unbound.

73
00:04:37,917 --> 00:04:40,542
We will rise.

74
00:04:40,625 --> 00:04:42,750
We will conquer.

75
00:04:43,417 --> 00:04:45,333
And together,

76
00:04:45,417 --> 00:04:51,417
we will finally claim our destiny!

77
00:04:51,917 --> 00:04:57,000
[Xal'atath] Long live Queen Ansurek.

78
00:04:57,083 --> 00:04:59,083
[dramatic orchestral music crescendos]


]],
	["tww_110_xef"] = [[
1
00:00:02,000 --> 00:00:04,733
[dark, dramatic music playing]

2
00:00:08,567 --> 00:00:10,233
You know, Alleria,

3
00:00:10,700 --> 00:00:15,200
you mortals are the most
wrathful creatures in existence.

4
00:00:15,733 --> 00:00:19,933
I've watched you break worlds,
overthrow gods.

5
00:00:20,467 --> 00:00:23,833
Even the realm of death couldn't hold you.

6
00:00:25,133 --> 00:00:28,467
Your hunger for violence

7
00:00:28,933 --> 00:00:30,900
is insatiable.

8
00:00:32,433 --> 00:00:34,133
You lured us here,

9
00:00:35,067 --> 00:00:37,367
unleashed us upon the Nerubians.

10
00:00:38,767 --> 00:00:42,533
[Xal'atath] All to fuel
the Black Blood's power.

11
00:00:43,600 --> 00:00:45,633
My power.

12
00:00:47,233 --> 00:00:49,533
This stops now.

13
00:00:50,033 --> 00:00:51,600
[Xal'atath cackles]

14
00:00:51,667 --> 00:00:55,100
Your determination delights me.

15
00:00:55,733 --> 00:01:00,300
But I have risen from the ashes
of countless empires.

16
00:01:00,367 --> 00:01:04,533
I have survived ordeals
you cannot comprehend.

17
00:01:05,233 --> 00:01:08,233
You cannot kill me.

18
00:01:08,300 --> 00:01:10,200
I'm not aiming at you.

19
00:01:10,267 --> 00:01:11,233
-[music stops]
-[clank]

20
00:01:11,300 --> 00:01:12,500
[whizzing]

21
00:01:13,067 --> 00:01:14,633
[dramatic music plays]

22
00:01:16,800 --> 00:01:19,567
[roars]

23
00:01:20,667 --> 00:01:23,967
[Xal'atath] This changes nothing!

24
00:01:28,000 --> 00:01:29,500
[squawks]

25
00:01:31,600 --> 00:01:32,967
[music softens]

26
00:01:34,200 --> 00:01:35,600
Khadgar!

27
00:01:36,633 --> 00:01:37,667
Oh no.

28
00:01:38,333 --> 00:01:39,967
No. No, no, no!

29
00:01:41,067 --> 00:01:43,033
-I heard your voice.
-[melancholy music plays]

30
00:01:43,633 --> 00:01:45,000
This can't be.

31
00:01:45,067 --> 00:01:47,233
[coughing wheezily]

32
00:01:48,800 --> 00:01:52,067
[breathlessly] You... did well.

33
00:01:52,133 --> 00:01:53,700
[coughs]

34
00:01:53,767 --> 00:01:55,800
I knew… you...

35
00:01:57,033 --> 00:01:58,900
would stop her.

36
00:01:59,467 --> 00:02:01,233
Stay with me, Khadgar.

37
00:02:02,233 --> 00:02:03,867
Don't let go.

38
00:02:06,100 --> 00:02:07,600
[breathes shakily]

39
00:02:07,667 --> 00:02:08,833
[sobs]

40
00:02:09,767 --> 00:02:10,900
[sighs]

41
00:02:17,500 --> 00:02:20,200
[soft ethereal choral music plays]

42
00:02:39,667 --> 00:02:41,833
[soft shimmering thrum]

43
00:02:41,900 --> 00:02:43,967
[hopeful music stirs]

44
00:02:44,767 --> 00:02:46,067
[thrum continues]

45
00:02:48,933 --> 00:02:50,067
[gasps]

46
00:02:50,967 --> 00:02:52,633
[Khadgar breathes softly]

47
00:02:53,333 --> 00:02:54,200
[sighs]

48
00:02:55,500 --> 00:02:56,633
[sighs]

49
00:02:58,867 --> 00:03:00,433
[hopeful music continues]

50
00:03:13,300 --> 00:03:15,200
[music rises, fades out]

]],
	["tww_1107_owv"] = [[
1
00:00:03,067 --> 00:00:06,233
Goddess, where must I go?

2
00:00:14,300 --> 00:00:15,633
Orweyna...

3
00:00:18,067 --> 00:00:19,167
Show me.

4
00:00:37,800 --> 00:00:39,467
I understand.

]],
	["tww_111_bri"] = [[
1
00:00:02,000 --> 00:00:04,000
[sinister orchestral music]

2
00:00:07,367 --> 00:00:09,633
[Lazlo Overbite, muffled]
Undermine deserves better.

3
00:00:09,700 --> 00:00:12,433
Gallywix has got to go.

4
00:00:12,500 --> 00:00:13,500
Who's with me?

5
00:00:17,067 --> 00:00:18,067
[gasping]

6
00:00:24,067 --> 00:00:25,267
All right.

7
00:00:25,767 --> 00:00:26,967
I'm busy.

8
00:00:27,467 --> 00:00:29,633
Meaning, if I'm here with you,

9
00:00:29,700 --> 00:00:32,600
something more lucrative isn't being done.

10
00:00:33,167 --> 00:00:34,867
-[chair scraping]
-So...

11
00:00:34,933 --> 00:00:37,467
[sighs] ...what is it you want?

12
00:00:39,500 --> 00:00:41,800
I'll tell you what we want, Gallywix.

13
00:00:41,867 --> 00:00:43,800
We've had enough of your meddlin',

14
00:00:43,867 --> 00:00:45,867
and you as boss.

15
00:00:45,933 --> 00:00:47,867
We want a new deal.

16
00:00:50,000 --> 00:00:51,933
[laughs]

17
00:00:52,000 --> 00:00:53,400
Hear that, Ug?

18
00:00:53,467 --> 00:00:55,333
"A new deal."

19
00:00:55,900 --> 00:00:59,000
And you all feel the same way, huh?

20
00:00:59,067 --> 00:01:00,367
You, Revilgaz?

21
00:01:01,867 --> 00:01:03,033
Nikki?

22
00:01:03,100 --> 00:01:04,367
[cackles]

23
00:01:04,433 --> 00:01:05,867
[Gallywix] Noggenfogger?

24
00:01:07,000 --> 00:01:08,767
[sighs] Marin...

25
00:01:10,433 --> 00:01:11,667
No?

26
00:01:11,733 --> 00:01:14,400
So, really, it's just...

27
00:01:14,467 --> 00:01:15,700
you.

28
00:01:16,933 --> 00:01:19,533
Lazlo Overbite.

29
00:01:19,600 --> 00:01:24,333
Just a little guy
from my former operation,

30
00:01:24,400 --> 00:01:26,700
a long time ago.

31
00:01:26,767 --> 00:01:29,400
Gazlowe put you up to this?

32
00:01:29,467 --> 00:01:31,400
That dirty, stinkin' rat!

33
00:01:35,567 --> 00:01:39,400
I'd ask you to stick around,
but we got real business.

34
00:01:39,467 --> 00:01:40,533
You understand.

35
00:01:41,267 --> 00:01:43,867
Ug, show our guest...

36
00:01:44,400 --> 00:01:45,233
out.

37
00:01:46,000 --> 00:01:47,833
[weapon whirring]

38
00:01:48,767 --> 00:01:49,567
[gasps]

39
00:01:51,433 --> 00:01:52,867
[chair creaking]

40
00:01:52,933 --> 00:01:53,933
[gasping]

41
00:01:54,000 --> 00:01:55,567
[screaming]

42
00:01:58,167 --> 00:01:59,367
[chuckles]

43
00:01:59,867 --> 00:02:01,667
Meeting adjourned.

44
00:02:03,167 --> 00:02:04,133
[gasps]

45
00:02:04,200 --> 00:02:09,367
I see you are already
making good use of the Black Blood.

46
00:02:09,433 --> 00:02:11,567
Uh... Xal'atath.

47
00:02:11,633 --> 00:02:13,400
Nice to see ya.

48
00:02:13,467 --> 00:02:15,433
What brings you here?

49
00:02:15,500 --> 00:02:17,767
It has been some time.

50
00:02:17,833 --> 00:02:20,833
Is everything proceeding as planned?

51
00:02:20,900 --> 00:02:25,367
The repairs have been more challenging
than expected.

52
00:02:25,433 --> 00:02:27,467
The costs alone...

53
00:02:28,833 --> 00:02:30,733
...are irrelevant.

54
00:02:31,233 --> 00:02:32,767
Of course.

55
00:02:32,833 --> 00:02:34,000
I, uh...

56
00:02:34,067 --> 00:02:35,867
I just need more time.

57
00:02:35,933 --> 00:02:39,567
Do not disappoint me.

58
00:02:41,667 --> 00:02:43,767
Don't you worry.

59
00:02:44,467 --> 00:02:46,033
I won't.

]],
	["tww_111_bro"] = [[
1
00:00:02,033 --> 00:00:04,033
[languid piano music]

2
00:00:11,833 --> 00:00:16,167
[Monte Gazlowe] The truth is,
I never thought that much of Undermine.

3
00:00:16,233 --> 00:00:19,567
The rough streets, the dirty dealings,

4
00:00:19,633 --> 00:00:24,400
the mob bosses squeezing everyone
for their last copper coin.

5
00:00:26,567 --> 00:00:29,867
And while Gallywix is gone for good,

6
00:00:29,933 --> 00:00:32,700
that's not what's gonna change this city.

7
00:00:34,000 --> 00:00:37,900
It'll be the people
who defy its reputation

8
00:00:37,967 --> 00:00:41,500
and stick around to fight for each other.

9
00:00:41,567 --> 00:00:43,667
That's what Renzik did.

10
00:00:44,300 --> 00:00:46,200
And that's what we all gotta do

11
00:00:46,267 --> 00:00:50,500
to build a new tomorrow for Undermine.

12
00:00:52,600 --> 00:00:56,000
So, let's get to work.

13
00:00:59,433 --> 00:01:01,033
[ethereal whooshing]

14
00:01:02,167 --> 00:01:04,167
[suspenseful orchestral music]

]],
	["tww_112_kid"] = [[
1
00:00:02,000 --> 00:00:04,000
[ethereal whooshing]

2
00:00:05,600 --> 00:00:10,667
[Phase-Thief Azir]
After so long, Master... it is time.

3
00:00:13,067 --> 00:00:15,433
The Harbinger's failure

4
00:00:15,500 --> 00:00:17,633
has opened the way.

5
00:00:19,133 --> 00:00:21,467
The vast power she placed

6
00:00:21,533 --> 00:00:24,200
within this Dark Heart

7
00:00:24,267 --> 00:00:27,400
will give you new life.

8
00:00:27,967 --> 00:00:29,433
So come,

9
00:00:29,500 --> 00:00:31,367
Lord Dimensius.

10
00:00:31,933 --> 00:00:35,967
Come feast upon this universe.

11
00:00:36,033 --> 00:00:41,100
Let your darkness reign forevermore.

12
00:00:42,000 --> 00:00:44,067
[Dimensius cackling menacingly]

13
00:00:47,667 --> 00:00:49,667
[Dimensius] Soon...

14
00:00:50,200 --> 00:00:51,600
[Locus-Walker gasps]

15
00:00:52,333 --> 00:00:53,567
[Locus-Walker sighs]

16
00:00:54,533 --> 00:00:57,033
[Ve'nari] We've all heard it, old friend.

17
00:00:58,133 --> 00:01:01,433
The voice of our greatest fear.

18
00:01:02,933 --> 00:01:05,800
[Locus-Walker]
Dimensius is rising, Ve'nari.

19
00:01:06,367 --> 00:01:09,500
And should he assume his full power...

20
00:01:10,000 --> 00:01:13,933
[Ve'nari]
...he will devour all that exists.

21
00:01:14,000 --> 00:01:17,900
[Locus-Walker] Just as he did
to our beloved homeworld...

22
00:01:19,167 --> 00:01:20,367
K'aresh.

23
00:01:21,900 --> 00:01:23,900
[sinister orchestral music]

]],
	["tww_112_lws"] = [[
1
00:00:04,999 --> 00:00:06,609
(breathless)

2
00:00:06,634 --> 00:00:07,579
We did it.

3
00:00:08,021 --> 00:00:09,520
Dimensius is gone.

4
00:00:10,655 --> 00:00:12,056
Not gone...

5
00:00:12,698 --> 00:00:16,155
But contained
within the Dark Heart.

6
00:00:17,553 --> 00:00:19,154
As is Xal'atath.

7
00:00:19,579 --> 00:00:20,391
<small chuckle>

8
00:00:20,416 --> 00:00:22,457
A fitting end for her.

9
00:00:23,895 --> 00:00:27,101
<playful, evil laughter>
<painful grunts>

10
00:00:27,126 --> 00:00:27,946
No!

11
00:00:28,353 --> 00:00:29,053
Wait!

12
00:00:31,056 --> 00:00:37,554
<screams in agony>

13
00:00:37,579 --> 00:00:39,345
<surprised gasps>

14
00:01:05,902 --> 00:01:08,053
You...

15
00:01:08,078 --> 00:01:11,846
What did you do?!

16
00:01:12,054 --> 00:01:14,207
I kept my promise.

17
00:01:14,811 --> 00:01:19,020
Together, we
vanquished Dimensius.

18
00:01:20,029 --> 00:01:25,967
And I now have all I
need to claim what is mine.

19
00:01:26,834 --> 00:01:27,887
<laughs>

20
00:01:28,306 --> 00:01:31,528
Oh, this has been
a delight, Alleria.

21
00:01:32,573 --> 00:01:35,328
But our little game is over.

22
00:01:35,353 --> 00:01:36,053
<Exertion>

23
00:01:40,233 --> 00:01:42,253
When next we meet...

24
00:01:42,770 --> 00:01:46,986
I will take everything you love.


]],
	["tww_1127_unk"] = [[

]],
	["wow_cgi_int"] = [[
[Liadrin] The Light guides my steps and illuminates my path.
The Light flows through me,
and by its grace am I made one with all that is sacred.
The Light guides my steps and illuminates my path.
The Light flows through me,
and by its grace am I made one with all that is sacred.
-The Light guides-- -Liadrin, it has begun.
I need you with me on the wall.
[foreboding operatic music plays]
[Liadrin] Lor'themar, the void will envelop us soon.
-[thunder crashes] -Only the Light can save us now.
[Lor'themar] No. The time for prayer has passed.
[elves yelling battle cry]
The Sunwell will not fall,
not while I draw breath.
[music abates]
-[elf screams] -[dramatic music plays]
[creature roars]
[both grunting]
[Xal'atath] Little elves…
[rumbling]
…I can see you grow weary.
How much longer can you hold out?
Flee and save yourselves.
[Liadrin huffs]
Liadrin, don't.
Light be with you.
[Xal'atath] You see?
She understands it's hopeless.
-[music intensifying] -Soon, you all will.
-[music abates] -[Liadrin panting]
The Light guides my steps and illuminates my path.
The Light flows through me,
and by its grace am I made one with all that is sacred.
The Light guides my steps and illuminates my path.
The Light flows through…
[breathes heavily]
[exhales softly]
[suspenseful orchestral music playing]
I…
I know that I am unworthy.
[sighs] I don't know
if I deserve your help,
but I know my people do.
Please, give them strength.
-[creature snarls] -[Lor'themar grunts]
[creature groans]
I admire your spirit,
but that will not save you.
-Soon, I will break your world. -[music intensifying]
-[music halts] -[scoffs] You can't even break one elf.
[drums pounding]
-[ominous music plays] -[elf groans]
[yells]
[groans in agony]
This Darkness comes to devour everything.
And when it is finished, there will be no more Light.
[screams]
Without your aid,
we will perish.
[whispers] I beg you,
help us.
[music intensifies]
[music swells]
[music halts]
[flurrying, dramatic string music plays]
[straining yell]
[rousing ethereal vocalizing]
[Liadrin grunts]
The Sunwell will not fall.
Not while we draw breath.
[creatures growling]
[yells]
[music abates]
[soft, ethereal vocalizing]
[music fades out]
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

local Subtitles = {
	-- Spanish subs here
};

local Descriptions = {
	-- Spanish cinematic titles here
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

if LOCALE == "esES" then
	-- Spanish (Spain) text data goes here

local Subtitles = {
	-- Spanish subs here
};

local Descriptions = {
	-- Spanish cinematic titles here
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

if LOCALE == "deDE" then
	-- German text data go here

local Subtitles = {
	-- German subs here
};

local Descriptions = {
	-- German cinematic titles here
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

if LOCALE == "frFR" then
	-- French text data go here

local Subtitles = {
	-- French subs here
};

local Descriptions = {
	-- French cinematic titles here
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

if LOCALE == "itIT" then
	-- French text data go here

local Subtitles = {
	-- Italian subs here
};

local Descriptions = {
	-- Italian cinematic titles here
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

if LOCALE == "ptBR" then
	-- Brazilian Portuguese text data go here

local Subtitles = {
	-- Portuguese subs here
};

local Descriptions = {
	-- Portuguese cinematic titles here
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

-- Note that the EU Portuguese WoW client also
-- uses the Brazilian Portuguese locale code.
return end

if LOCALE == "ruRU" then
	-- Russian text data go here

local Subtitles = {
	-- Russian subs here
};

local Descriptions = {
	-- Russian cinematic titles here
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

if LOCALE == "koKR" then
	-- Korean text data go here

local Subtitles = {

	["bfa_800_ltc_h"] = [[
00:00:11:21 - 00:00:14:28
어찌 사울팽을 사지에 버려둘 수 있소!

00:00:15:23 - 00:00:17:14
본인이 바랐던 죽음이오

00:00:18:13 - 00:00:19:15
마음에 걸리면

00:00:20:06 - 00:00:21:13
함께하든지요

00:00:23:11 - 00:00:25:10
산 자를 지켜도 되고

00:00:26:02 - 00:00:27:16
선택은 자유요

00:00:31:18 - 00:00:33:09
호드를 위하여

00:00:39:07 - 00:00:42:19
할 일은... 알고 있겠지

00:00:47:24 - 00:00:48:24
가라...

00:00:49:20 - 00:00:51:05
나의 용사여

00:01:14:25 - 00:01:16:19
이런, 이런

00:01:17:06 - 00:01:19:21
전쟁 놀이 중인 꼬마시군

00:01:19:23 - 00:01:22:29
네 군대는 우리 국왕이 쓸어버렸다!

00:01:24:11 - 00:01:26:09
애완견이 너무 짖는군요

00:01:26:10 - 00:01:27:13
"폐하 나으리"

00:01:30:04 - 00:01:31:14
실바나스 윈드러너

00:01:32:06 - 00:01:34:02
넌 호드를 명예 없는 길로

00:01:34:03 - 00:01:35:08
이끌었다

00:01:36:04 - 00:01:38:18
로데론은 우리 것이다

00:01:39:19 - 00:01:40:19
다 끝났다

00:01:41:11 - 00:01:44:23
네 아비가 참 자랑스러워 하겠어

00:01:45:29 - 00:01:48:20
그것도... 물려받은 거니?

00:01:49:00 - 00:01:51:07
피로 물들고 말았네

00:01:51:20 - 00:01:54:19
이건 일방적으로 시작된 전쟁이다

00:01:54:29 - 00:01:56:01
툭하면

00:01:56:01 - 00:01:57:28
평화 타령하던 새끼 사자가

00:01:58:06 - 00:02:00:13
손에 피는 잘도 묻히는군

00:02:00:24 - 00:02:04:10
지난번에 만났을 때, 널 죽였어야 했어

00:02:05:00 - 00:02:06:25
참 무례하기도 하지

00:02:07:14 - 00:02:09:21
내 집에 온 손님 주제에!

00:02:09:29 - 00:02:10:29
네 집이라고?

00:02:11:13 - 00:02:15:05
감히 네까짓게 더럽힐 만한 왕좌가 아니다!

00:02:15:05 - 00:02:16:05
그만!

00:02:18:28 - 00:02:21:11
텔드랏실을 불태운 건 너지만

00:02:22:25 - 00:02:24:28
지켜내지 못한 건 나다

00:02:26:23 - 00:02:28:25
다시는 그런 실수를 하지 않을 것이다

00:02:30:07 - 00:02:31:07
항복하거나...

00:02:32:15 - 00:02:33:15
죽어라

00:02:57:00 - 00:02:58:30
네가 이겼다...

00:02:59:10 - 00:03:00:10
생각하느냐!

00:03:12:29 - 00:03:14:04
내게 맡겨요!


]],

	["bfa_800_ltc_a"] = [[
00:00:24:11 - 00:00:26:06
이런, 이런

00:00:26:23 - 00:00:29:07
전쟁 놀이 중인 꼬마시군

00:00:29:09 - 00:00:32:19
네 군대는 우리 국왕이 쓸어버렸다!

00:00:33:26 - 00:00:35:20
애완견이 너무 짖는군요

00:00:35:26 - 00:00:37:02
"폐하 나으리"

00:00:39:21 - 00:00:41:06
실바나스 윈드러너

00:00:41:24 - 00:00:43:12
넌 호드를 명예 없는 길로

00:00:43:13 - 00:00:44:24
이끌었다

00:00:45:21 - 00:00:48:04
로데론은 우리 것이다

00:00:49:05 - 00:00:50:05
다 끝났다

00:00:50:29 - 00:00:54:10
네 아비가 참 자랑스러워 하겠어

00:00:55:16 - 00:00:57:15
그것도... 물려받은 거니?

00:00:58:16 - 00:01:00:25
피로 물들고 말았네

00:01:01:06 - 00:01:04:06
이건 일방적으로 시작된 전쟁이다

00:01:04:16 - 00:01:05:17
툭하면

00:01:05:18 - 00:01:07:15
평화 타령하던 새끼 사자가

00:01:08:01 - 00:01:10:01
손에 피는 잘도 묻히는군

00:01:10:10 - 00:01:13:24
지난번에 만났을 때, 널 죽였어야 했어

00:01:14:19 - 00:01:16:09
참 무례하기도 하지

00:01:17:00 - 00:01:19:07
내 집에 온 손님 주제에!

00:01:19:13 - 00:01:20:14
네 집이라고?

00:01:20:29 - 00:01:24:21
감히 네까짓게 더럽힐 만한 왕좌가 아니다!

00:01:24:21 - 00:01:25:28
그만!

00:01:28:14 - 00:01:30:28
텔드랏실을 불태운 건 너지만

00:01:32:13 - 00:01:34:16
지켜내지 못한 건 나다

00:01:36:09 - 00:01:38:18
다시는 그런 실수를 하지 않을 것이다

00:01:39:24 - 00:01:40:24
항복하거나...

00:01:42:01 - 00:01:43:01
죽어라

00:02:06:18 - 00:02:07:25
네가 이겼다...

00:02:08:28 - 00:02:09:28
생각하느냐!

00:02:22:19 - 00:02:23:19
내게 맡겨요!


]],

};

local Descriptions = {
	-- Korean cinematic titles here
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

if LOCALE == "zhCN" then
	-- Simplified Chinese text data go here

local Subtitles = {
	-- Simplified Chinese subs here
};

local Descriptions = {
	-- Simplified Chinese cinematic titles here
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

if LOCALE == "zhTW" then
	-- Traditional Chinese text data go here

local Subtitles = {
	-- Traditional Chinese subs here
};

local Descriptions = {
	-- Traditional Chinese cinematic titles here
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

