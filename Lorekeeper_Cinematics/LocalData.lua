local _, LK = ...


local LK = Lorekeeper_API.LK


local PLACEHOLDER_VALUE

local LOCALE = GetLocale()



local PATH = "Interface\\AddOns\\Lorekeeper_Cinematics\\Assets\\Textures\\" -- batch



LK["LocalData"] = {
	["cinematics"] = {
		[10] = {
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
		--[[

		[20] = {
			["name"] = "logo",
			["id"] = 1,
			--["YouTube"] = "",
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
			--["YouTube"] = "",
			["description"] = "The Burning Crusade Cinematic Trailer",
			["expansion"] = 1,
			["patch"] = "2.0.0",
			["thumb"] = {
				["batch"] = 1,
				["coords"] = 9,
			},
		},
		[40] = {
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
		[50] = {
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
		[60] = {
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
		[70] = {
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
		[80] = {
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
		[90] = {
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
		[100] = {
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
		[110] = {
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
		[120] = {
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
		[130] = {
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
		[140] = {
			["name"] = "wow_intro_mop",
			["id"] = 115,
			--["YouTube"] = "",
			["description"] = "Mists of Pandaria Cinematic Trailer",
			["expansion"] = 4,
			["patch"] = "5.0.4",
			["thumb"] = {
				["batch"] = 1,
				["coords"] = 14,
			},
		},
		[150] = {
			["name"] = "mop_gse",
			["id"] = 117,
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
			["description"] = "Pandaria Alliance Intro",
			["expansion"] = 4,
			["patch"] = "5.0.4",
			["thumb"] = {
				["batch"] = 1,
				["coords"] = 18,
			},
		},
		[180] = {
			["name"] = "mop_wrh",
			["id"] = 120,
			--["YouTube"] = "",
			["description"] = "Pandaria Horde Intro",
			["expansion"] = 4,
			["patch"] = "5.0.4",
			["thumb"] = {
				["batch"] = 1,
				["coords"] = 19,
			},
		},
		[190] = {
			["name"] = "mop_jade_crash",
			["id"] = 121,
			--["YouTube"] = "",
			["description"] = "Hellscream's Fist Crashes in Honeydew Village",
			["expansion"] = 4,
			["patch"] = "5.0.4",
			["thumb"] = {
				["batch"] = 1,
				["coords"] = 20,
			},
		},
		[200] = {
			["name"] = "mop_jade",
			["id"] = 118,
			--["YouTube"] = "",
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
			--["YouTube"] = "",
			["description"] = "Arrival of the Alliance Fleet",
			["expansion"] = 4,
			["patch"] = "5.1.0",
			["thumb"] = {
				["batch"] = 1,
				["coords"] = 21,
			},
		},
		[220] = {
			["name"] = "mop_hsl",
			["id"] = 128,
			--["YouTube"] = "",
			["description"] = "Arrival of the Horde Fleet",
			["expansion"] = 4,
			["patch"] = "5.1.0",
			["thumb"] = {
				["batch"] = 1,
				["coords"] = 22,
			},
		},
		[230] = {
			["name"] = "oro_horde",
			["id"] = 151,
			--["YouTube"] = "",
			["description"] = "Horde Siege of Orgrimmar Finale",
			["expansion"] = 4,
			["patch"] = "5.4.0",
			["thumb"] = {
				["batch"] = 1,
				["coords"] = 23,
			},
		},
		[240] = {
			["name"] = "oro_alliance",
			["id"] = 152,
			--["YouTube"] = "",
			["description"] = "Alliance Siege of Orgrimmar Finale",
			["expansion"] = 4,
			["patch"] = "5.4.0",
			["thumb"] = {
				["batch"] = 1,
				["coords"] = 24,
			},
		},
		[250] = {
			["name"] = "wod_mainintro",
			["id"] = 195,
			--["YouTube"] = "",
			["description"] = "Warlords of Draenor Cinematic Intro",
			["expansion"] = 5,
			["patch"] = "6.0.2",
			["thumb"] = {
				["batch"] = 2,
				["coords"] = 9,
			},
		},
		[260] = {
			["name"] = "wod_dpi",
			["id"] = 185,
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
			["description"] = "Horde Garrison construction #1",
			["expansion"] = 5,
			["patch"] = "6.0.3",
			["thumb"] = {
				["batch"] = 2,
				["coords"] = 3,
			},
		},
		[290] = {
			["name"] = "wod_gar_horde_tier1-2",
			["id"] = 190,
			--["YouTube"] = "",
			["description"] = "Horde Garrison construction #2",
			["expansion"] = 5,
			["patch"] = "6.0.3",
			["thumb"] = {
				["batch"] = 2,
				["coords"] = 4,
			},
		},
		[300] = {
			["name"] = "wod_gar_horde_tier2-3",
			["id"] = 191,
			--["YouTube"] = "",
			["description"] = "Horde Garrison construction #3",
			["expansion"] = 5,
			["patch"] = "6.0.3",
			["thumb"] = {
				["batch"] = 2,
				["coords"] = 5,
			},
		},
		[310] = {
			["name"] = "wod_gar_alliance_tier0-1",
			["id"] = 192,
			--["YouTube"] = "",
			["description"] = "Alliance Garrison construction #1",
			["expansion"] = 5,
			["patch"] = "6.0.3",
			["thumb"] = {
				["batch"] = 2,
				["coords"] = 6,
			},
		},
		[320] = {
			["name"] = "wod_gar_alliance_tier1-2",
			["id"] = 193,
			--["YouTube"] = "",
			["description"] = "Alliance Garrison construction #2",
			["expansion"] = 5,
			["patch"] = "6.0.3",
			["thumb"] = {
				["batch"] = 2,
				["coords"] = 7,
			},
		},
		[330] = {
			["name"] = "wod_gar_alliance_tier2-3",
			["id"] = 194,
			--["YouTube"] = "",
			["description"] = "Alliance Garrison construction #3",
			["expansion"] = 5,
			["patch"] = "6.0.3",
			["thumb"] = {
				["batch"] = 2,
				["coords"] = 8,
			},
		},

		[340] = {
			["name"] = "wod_vel",
			["id"] = 167,
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
			["description"] = "Horde Garrison: Shipyard Construction",
			["expansion"] = 5,
			["patch"] = "6.2.0",
			["thumb"] = {
				["batch"] = 2,
				["coords"] = 11,
			},
		},
		[400] = {
			["name"] = "wod_gar_shipyard_lj_a",
			["id"] = 293,
			--["YouTube"] = "",
			["description"] = "Alliance Garrison: Shipyard Construction",
			["expansion"] = 5,
			["patch"] = "6.2.0",
			["thumb"] = {
				["batch"] = 2,
				["coords"] = 12,
			},
		},
		[410] = {
			["name"] = "wod_hfi",
			["id"] = 294,
			--["YouTube"] = "",
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
			--["YouTube"] = "",
			["description"] = "Victory on Draenor",
			["expansion"] = 5,
			["patch"] = "6.2.0",
			["thumb"] = {
				["batch"] = 2,
				["coords"] = 14,
			},
		},
		[430] = {
			["name"] = "legion_intro",
			["id"] = 470,
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
			["description"] = "Harbingers:Khadgar",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
			["description"] = "Alliance Broken Shore Cinematic",
			["expansion"] = 6,
			["patch"] = "PLACEHOLDER_VALUE",
			["thumb"] = {
				["batch"] = 3,
				["coords"] = 1,
			},
		},
		[510] = {
			["name"] = "legion_bs_h",
			["id"] = 488,
			--["YouTube"] = "",
			["description"] = "Horde Broken Shore Cinematic",
			["expansion"] = 6,
			["patch"] = "PLACEHOLDER_VALUE",
			["thumb"] = {
				["batch"] = 3,
				["coords"] = 2,
			},
		},
		[520] = {
			["name"] = "legion_org_vs",
			["id"] = 474,
			--["YouTube"] = "",
			["description"] = "The Fate of the Horde",
			["expansion"] = 6,
			["patch"] = "PLACEHOLDER_VALUE",
			["thumb"] = {
				["batch"] = 2,
				["coords"] = 20,
			},
		},
		[530] = {
			["name"] = "legion_val_yx",
			["id"] = 473,
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
			["description"] = "Alliance A Found Memento: Raising a King",
			["expansion"] = 6,
			["patch"] = "PLACEHOLDER_VALUE",
			["thumb"] = {
				["batch"] = 3,
				["coords"] = 7,
			},
		},
		[650] = {
			["name"] = "legion_72_tsf",
			["id"] = 656,
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
			["description"] = "Defeat of the Burning Legion: Alliance Epilogue",
			["expansion"] = 6,
			["patch"] = "PLACEHOLDER_VALUE",
			["thumb"] = {
				["batch"] = 3,
				["coords"] = 15,
			},
		},
		[720] = {
			["name"] = "legion_735_eph",
			["id"] = 717,
			--["YouTube"] = "",
			["description"] = "Defeat of the Burning Legion: Horde Epilogue",
			["expansion"] = 6,
			["patch"] = "PLACEHOLDER_VALUE",
			["thumb"] = {
				["batch"] = 3,
				["coords"] = 16,
			},
		},
		[730] = {
			["name"] = "bfa_800_sv",
			["id"] = 853,
			--["YouTube"] = "",
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
			--["YouTube"] = "",
			["description"] = "Warbringers: Jaina",
			["expansion"] = 7,
			["patch"] = "PLACEHOLDER_VALUE",
			["thumb"] = {
				["batch"] = 3,
				["coords"] = 26,
			},
		},
		[750] = {
			["name"] = "bfa_800_rb",
			["id"] = 852,
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
			["description"] = "Lordaeron Throne Room Confrontation - Horde",
			["expansion"] = 7,
			["patch"] = "PLACEHOLDER_VALUE",
			["thumb"] = {
				["batch"] = 3,
				["coords"] = 20,
			},
		},
		[780] = {
			["name"] = "bfa_800_ltc_a",
			["id"] = 854,
			--["YouTube"] = "",
			["description"] = "Lordaeron Throne Room Confrontation - Alliance",
			["expansion"] = 7,
			["patch"] = "PLACEHOLDER_VALUE",
			["thumb"] = {
				["batch"] = 3,
				["coords"] = 19,
			},
		},
		[790] = {
			["name"] = "bfa_800_stz",
			["id"] = 857,
			--["YouTube"] = "",
			["description"] = "Arrival to Zandalar - Horde",
			["expansion"] = 7,
			["patch"] = "PLACEHOLDER_VALUE",
			["thumb"] = {
				["batch"] = 3,
				["coords"] = 22,
			},
		},
		[800] = {
			["name"] = "bfa_800_zia",
			["id"] = 858,
			--["YouTube"] = "",
			["description"] = "Arrival to Zandalar - Alliance",
			["expansion"] = 7,
			["patch"] = "PLACEHOLDER_VALUE",
			["thumb"] = {
				["batch"] = 3,
				["coords"] = 23,
			},
		},
		[810] = {
			["name"] = "bfa_800_jnm",
			["id"] = 860,
			--["YouTube"] = "",
			["description"] = "Alliance Jaina's Nightmare",
			["expansion"] = 7,
			["patch"] = "PLACEHOLDER_VALUE",
			["thumb"] = {
				["batch"] = 3,
				["coords"] = 25,
			},
		},
		[820] = {
			["name"] = "bfa_800_kta",
			["id"] = 859,
			--["YouTube"] = "",
			["description"] = "Alliance Arrival to Kul Tiras",
			["expansion"] = 7,
			["patch"] = "PLACEHOLDER_VALUE",
			["thumb"] = {
				["batch"] = 3,
				["coords"] = 24,
			},
		},
		[830] = {
			["name"] = "bfa_800_rot",
			["id"] = 865,
			--["YouTube"] = "",
			["description"] = "Alliance Realm of Torment",
			["expansion"] = 7,
			["patch"] = "PLACEHOLDER_VALUE",
			["thumb"] = {
				["batch"] = 4,
				["coords"] = 2,
			},
		},
		[840] = {
			["name"] = "bfa_800_ktf",
			["id"] = 864,
			--["YouTube"] = "",
			["description"] = "Alliance The Return of Hope: Kul Tiras",
			["expansion"] = 7,
			["patch"] = "PLACEHOLDER_VALUE",
			["thumb"] = {
				["batch"] = 4,
				["coords"] = 1,
			},
		},
		[850] = {
			["name"] = "bfa_800_bar",
			["id"] = 862,
			--["YouTube"] = "",
			["description"] = "Horde Rastakhan's Deal with Bwonsamdi",
			["expansion"] = 7,
			["patch"] = "PLACEHOLDER_VALUE",
			["thumb"] = {
				["batch"] = 3,
				["coords"] = 27,
			},
		},
		[860] = {
			["name"] = "bfa_800_zcf",
			["id"] = 863,
			--["YouTube"] = "",
			["description"] = "Horde The Threat Within: Zandalar",
			["expansion"] = 7,
			["patch"] = "PLACEHOLDER_VALUE",
			["thumb"] = {
				["batch"] = 3,
				["coords"] = 28,
			},
		},
		[870] = {
			["name"] = "bfa_810_tod",
			["id"] = 874,
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
			["description"] = "Horde The Death of Rastakhan",
			["expansion"] = 7,
			["patch"] = "PLACEHOLDER_VALUE",
			["thumb"] = {
				["batch"] = 4,
				["coords"] = 5,
			},
		},
		[900] = {
			["name"] = "bfa_815_dpr",
			["id"] = 879,
			--["YouTube"] = "",
			["description"] = "An Unexpected Reunion",
			["expansion"] = 7,
			["patch"] = "PLACEHOLDER_VALUE",
			["thumb"] = {
				["batch"] = 4,
				["coords"] = 7,
			},
		},
		[910] = {
			["name"] = "bfa_820_az",
			["id"] = 884,
			--["YouTube"] = "",
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
			--["YouTube"] = "",
			["description"] = "Alliance Rise of Azshara Now Live",
			["expansion"] = 7,
			["patch"] = "PLACEHOLDER_VALUE",
			["thumb"] = {
				["batch"] = 4,
				["coords"] = 13,
			},
		},
		[930] = {
			["name"] = "bfa_820_enc_262_h",
			["id"] = 894,
			--["YouTube"] = "",
			["description"] = "Horde Rise of Azshara Now Live",
			["expansion"] = 7,
			["patch"] = "PLACEHOLDER_VALUE",
			["thumb"] = {
				["batch"] = 4,
				["coords"] = 14,
			},
		},
		[940] = {
			["name"] = "bfa_820_enc_261",
			["id"] = 886,
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
			["description"] = "Exile's Reach Alliance Intro",
			["expansion"] = 8,
			["patch"] = "PLACEHOLDER_VALUE",
			["thumb"] = {
				["batch"] = 4,
				["coords"] = 12,
			},
		},
		[1002] = {
			["name"] = "shadowlands_901_nph",
			["id"] = 931,
			--["YouTube"] = "",
			["description"] = "Exile's Reach Horde Intro",
			["expansion"] = 8,
			["patch"] = "PLACEHOLDER_VALUE",
			["thumb"] = {
				["batch"] = 4,
				["coords"] = 20,
			},
		},
		[1010] = {
			["name"] = "shadowlands_901_si",
			["id"] = 936,
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "https://youtu.be/o03STclgxSc",
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
			--["YouTube"] = "https://youtu.be/SUj34OWkjXU",
			["description"] = "The Story So Far",
			["expansion"] = 10,
			["patch"] = "PLACEHOLDER_VALUE",
			["thumb"] = {
				["batch"] = 6,
				["coords"] = 18,
			},
		},
		[1470] = {
			["name"] = "tww_110_tod",
			["id"] = 1010,
			--["YouTube"] = "https://youtu.be/1XmNNDU00Q0",
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
			--["YouTube"] = "https://youtu.be/wzLWovRyp5Y",
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
			--["YouTube"] = "https://youtu.be/zYdFLUBjwCU",
			["description"] = "Shadows Beneath",
			["expansion"] = 10,
			["patch"] = "PLACEHOLDER_VALUE",
			["thumb"] = {
				["batch"] = 6,
				["coords"] = 17,
			},
		},
		[1500] = {
			["name"] = "tww_110_mag",
			["id"] = 1013,
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "https://youtu.be/brOSi_rpGj4",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "https://youtu.be/4AgvDK5IczU",
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
			--["YouTube"] = "https://youtu.be/se17Aw_BXE4",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			--["YouTube"] = "",
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
			["name"] = "PLACEHOLDER_VALUE",
			["id"] = 1040,
			--["YouTube"] = "",
			["description"] = "The Eleventh Hour",
			["expansion"] = 10,
			["patch"] = "PLACEHOLDER_VALUE",
			["thumb"] = {
				["batch"] = 6,
				["coords"] = 24,
			},
		},

		--[[
		
		[PLACEHOLDER_VALUE] = {
			["name"] = "PLACEHOLDER_VALUE",
			["id"] = PLACEHOLDER_VALUE,
			--["YouTube"] = "",
			["description"] = "PLACEHOLDER_VALUE",
			["expansion"] = 10,
			["patch"] = "PLACEHOLDER_VALUE",
			["thumb"] = {
				["batch"] = 6,
				["coords"] = PLACEHOLDER_VALUE,
			},
		},

		--]]

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