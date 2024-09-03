local _, LK = ...

-- This is typicaly where exported SVs data will go, purged of extranneous other data such as hasRead and so on.
-- Adding options to switch locale would honestly just be more hassle than it's worth for this project.

-- Data should follow this structure:

--[[
LK["LocalData"] = {
	["text"] = {
		["Item-208416"] = {
			["base"] = {
				["title"] = "Thunderspine Nest Shopping List",
				["text"] = { -- text key *should* always be in order. SVs automatically delete the page num keys, such as [1], [2], etc.
					"Text from Page 1",
					"Text from Page 2",
				},
				["pageCount"] = 0,
				["singlePage"] = false,
				["material"] = "Parchment", -- the vast majority of text is Parchment, but not always.
				["isObtainable"] = true, -- this must be manually verified. There will never be a deterministic way of setting this key.
				["isClassSpecific"] = false, -- same as above.
			},
			["copy_1"] = { -- the copy number should be incremental. These do not get displayed but will still be stored because they're a variant.
				["title"] = "Thunderspine Nest Shopping List",
				["text"] = {
					"Text from Page 1, but different",
					"Text from Page 2, but different",
				},
				["material"] = "Parchment",
				["pageCount"] = 0,
				["singlePage"] = false,
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
	},
	["questItems"] = {
		... -- Quest items only really need their ID stored, but we can maybe categorize them a bit more to hide/show them later on.
	},
};

-- Keys which are *NOT* included: "isFavorite", "hasRead", and maybe future additions.
-- Data from Mail and Custom modules should never make it in here.
-- If you're looking to submit, you can post your SavedVariables at one of the following links:
-- Discord: https://discord.gg/vUMTdzPxqg
-- Github: https://github.com/keyboardturner/Lorekeeper/issues/new/choose

]]


local LOCALE = GetLocale()


if LOCALE == "enUS" then

LK["LocalData"] = {
	["text"] = {
		["Item-225419"] = {
			["base"] = {
				["title"] = "Green Hills of Stranglethorn - Page 27",
				["text"] = {
					"Ajeck and Sir Erlgadin readied their weapons, flanking me on either side, our backs to the sea.  Barnil let out a defeated sigh and drew his axe.  The Lashtails were almost upon us.  Their steady stride had slowed.  They were stalking their prey now for they knew they had us trapped.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-92471"] = {
			["base"] = {
				["title"] = "Jubeka's Journal",
				["text"] = {
					"Jubeka's Journal\r\n\r\nThis document contains the daily journal of one of the master Warlock trainers. The pages are filled with random notes, the occasional drawing of an imp's internal organs and the occasional tidbit on the preferred diet of felhunters.\r\n\r\nNear the end, an entry catches your eye...",
					"Day 26:\r\n\r\nIt has been nearly two weeks since Kanrethad and I arrived in Outland. Almost immediately afterwards, he departed for Shadowmoon Valley. I didn't bother to ask why, as long as he doesn't get himself killed. \r\n\r\nMy research here in this dusty wasteland continues as drudgingly expected. While the Legion's onslaught has subsided, a number of the rarer demon specimens remain.",
					"Day 28:\r\n\r\nThe fel imps of the Path of Anguish in Hellfire are remarkably chatty. I've discovered that they're just as easy to contract into service as their names are to learn. The ritual to summon one is trivial, at best. \r\n\r\nVoidlords are rather difficult to stumble across, but it takes very little persuading to convince one to divulge the name of a rival lord.\r\n\r\nI have wondered once or twice if Kanrethad will ever return, but in the end, it doesn't actually matter. The council can put me to death, so long as my grimoires last, so will my legacy.",
					"Day 32:\r\n\r\nWhile examining the nauseating Ruins of Farahlon today in Netherstorm, I was ambushed by a race of floating eyeball squids. Calling themselves observers, they were unexpectedly intelligent. They expressed a deep desire to bear witness to all forms of magic and willingly offered their services in exchange for the opportunity to consume new forms of magic. \r\n\r\nThe ritual to summon an observer is unexpectedly complex. While natives of the great dark beyond, they are highly migratory and the summoning ritual must compensate for their travels. Without their willing assistance, summoning an observer would be nearly impossible.",
					"Day 35: \r\n\r\nKanrethad returned, looking incredibly grim. Considering his undisciplined technique, it should be no surprise that his research has been less than successful.\r\n\r\nI'm ready to attempt the binding of a higher order member of the Burning Legion, but I dare not attempt the ritual alone. In fact, perhaps Kanrethad would prove the perfect test subject...",
					"Day 36:\r\n\r\nRemarkable! My first attempt to summon a higher order member of the legion failed as spectacularly as planned. The shivarra broke free almost instantly after Kanrethad completed the ritual. \r\n\r\nI expected the frail human to be struck down while I banished the creature. Instead, in the instant that the shivarra's razor-sharp blades sliced through the air, Kanrethad's form shifted and the blades bounced as if striking stone.\r\n\r\nUnlike the typical form of metamorphosis, he did not complete the demonic transformation... perhaps his research has been more successful than I expected.",
					"Day 40:\r\n\r\nThe key to binding a wrathguard was ironically reducing the number of runic symbols used in the summoning circle. Wrathguards are highly resistant to charms and compulsions, but readily respond to basic expressions of strength. \r\n\r\nKanrethad was unexpectedly insightful into the conditioning the Legion uses to compel the wrathguard into action. His ability to express his dominance over lesser demons is remarkable, if short-lived. With great pains, I've been able to inscribe the forms he uses to summon multiple demonic servants at once. \r\n\r\nUnfortunately, while he can bind two lesser demons indefinitely, I can only do so for a short time.",
					"Day 47: \r\n\r\nWe left a few ogre corpses in our wake, but studying the ritual circle of Vim'gol revealed additional ways of bolstering our power using demonic sacrifices. While the act greatly enrages our demonic servants, fusing their life energy to our own provides a dramatic increase in power.\r\n\r\nWith a little experimentation, I discovered that the more closely linked you are with the demon you sacrifice, the greater the power of the ritual.\r\n\r\nKanrethad's ability to restrain his demonic transformation seems to have reached a plateau. Once again, his lack of power disgusts me. Things that would be trivial to most Warlocks take him an eternity.",
					"Day 50: \r\n\r\nAt Kanrethad's insistence, we headed for the Altar of Damnation in Shadowmoon Valley. He seems to be convinced that there's more to the Hand of Gul'dan than just a show of power.\r\n\r\nI'm not convinced, but at this point my grimoires are complete. I don't understand his obsession with controlling the flow of demonic power granted by his transformation. \r\n\r\nWhile he plays around with ancient altars, I intend to try my hand at opening a gateway to conjure many wild imps at once...",
					"Day 60:\r\n\r\nKanrethad is up to something. To say that I'm concerned about our next move is a dramatic understatement.",
					"(A ragged note is drawn onto the back cover of the leather journal)\r\n\r\nI'm convinced there is no chance that we will return from this next adventure alive. There's simply no way I can take the risk that my grimoires go unread. For that reason, I've contracted the imps to leave four fragments of my soulstone at the locations listed in my journal.\r\n\r\nI'm sending this journal to you, my trusted friend, that should the need to locate me arise, you bring the four stones together, find my body and ensure that my grimoires are brought back to Azeroth.\r\n\r\nSigned,\r\nJubeka Shadowbreaker",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = true,
				["isClassSpecific"] = 9, -- Warlock
			},
		},
		["Item-204185"] = {
			["base"] = {
				["title"] = "The Old Gods and the Ordering of Azeroth (Annotated)",
				["text"] = {
					'Unaware of Sargeras\' mission to undo their countless works, the Titans continued to move from world to world, shaping and ordering each planet as they saw fit. Along their journey they happened upon a small world that its inhabitants would later name Azeroth.\r\n \r\n<A note has been scribbled on the page.>\r\nPathetic! What sort of "saviors of the universe" fail to notice that their efforts were being undermined by one of their own?',
					"As the Titans made their way across the primordial landscape, they encountered a number of hostile elemental beings. These elementals, who worshipped a race of unfathomably evil beings known only as the Old Gods, vowed to drive the Titans back and keep their world inviolate from the invaders' metallic touch. \r\n\r\n<A note has been scribbled on the page.>\r\nEvil? According to whom? It was these titans who maligned the glory of the Black Empire.",
					"The Pantheon, disturbed by the Old Gods' penchant for evil, waged war upon the elementals and their dark masters. The Old Gods' armies were led by the most powerful elemental lieutenants: Ragnaros the Firelord, Therazane the Stonemother, Al'Akir the Windlord, and Neptulon the Tidehunter. \r\n\r\n<A note has been scribbled on the page.>\r\nThey looked upon the most impressive empire in existence and hated they hadn't made it themselves! In a fit of jealousy, they tore it asunder.",
					"Their chaotic forces raged across the face of the world and clashed with the colossal Titans. Though the elementals were powerful beyond mortal comprehension, their combined forces could not stop the mighty Titans. One by one, the elemental lords fell, and their forces dispersed. \r\n\r\n<A note has been scribbled on the page.>\r\nThe titans do love to make themselves seem grandiose. History, is as always, written by the victor.",
					'The Pantheon shattered the Old Gods\' citadels and chained the five evil gods far beneath the surface of the world. Without the Old Gods\' power to keep their raging spirits bound to the physical world, the elementals were banished to an abyssal plane, where they would contend with one another for all eternity. With the elementals\' departure, nature calmed, and the world settled into a peaceful harmony. The Titans saw that the threat was contained and set to work.\r\n\r\n<A note has been scribbled on the page.>\r\nFools! The power of the elements was not so easily contained. Nor could they bind the influence of the Old Gods. The "peace" the titans offered came only through oppression.',
					"The Titans empowered a number of races to help them fashion the world. To help them carve out the fathomless caverns beneath the earth, the Titans created the dwarf-like earthen from magical, living stone. To help them dredge out the seas and lift the land from the sea floor, the Titans created the immense but gentle sea giants. For many ages the Titans moved and shaped the earth, until at last there remained one perfect continent. \r\n\r\n<A note has been scribbled on the page.>\r\nThe author of this tome is either a liar or a fool. Were they truly ignorant of that which lies beyond the waves? Or were they merely commanded to spread titan propaganda?",
					"At the continent's center, the Titans crafted a lake of scintillating energies. The lake, which they named the Well of Eternity, was to be the fount of life for the world. Its potent energies would nurture the bones of the world and empower life to take root in the land's rich soil. Over time, plants, trees, monsters, and creatures of every kind began to thrive on the primordial continent. \r\n\r\n<A note has been scribbled on the page.>\r\nThe titans wounded the world with their recklessness, then insisted it was done by design. Preposterous! It was the Old Gods who nurtured the flesh of this world, not the titans!",
					'As twilight fell on the final day of their labors, the Titans named the continent Kalimdor: "land of eternal starlight". \r\n\r\n<A note has been scribbled on the page.>\r\nAh yes, the titans\' final erasure of the wonders that once existed. They even stole away the land\'s true name and replaced it with one of their own.',
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-225430"] = {
			["base"] = {
				["title"] = "Green Hills of Stranglethorn - Page 14",
				["text"] = {
					"On this day we ventured to the south, following some fresh panther tracks.  Soon we reached a ravine spanned by a tremendous rope bridge.  I could not help but to think of Brann's descriptive writings of this region when I saw the engineering marvel.  So often it was assumed that the native Trolls were a primitive and uneducated race yet as I gazed upon the master craftsmanship of the bridge I was able to recognize the skill with which the Troll builders overcame the seemingly impossible feat.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225417"] = {
			["base"] = {
				["title"] = "Green Hills of Stranglethorn - Page 6",
				["text"] = {
					"Just as I was about to question Ajeck's lack of interest in the day's hunting strategy, she reached for her quiver, drew an arrow and unleashed a shot right towards poor Barnil.  But it was not Barnil that Ajeck was shooting at.  For when Barnil stepped aside, mouth agape, a large river crocilisk floated to the surface with Ajeck's arrow perfectly placed between his two large eyes.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225416"] = {
			["base"] = {
				["title"] = "Green Hills of Stranglethorn - Page 26",
				["text"] = {
					"I stepped slowly forward, gun raised.  I had led these brave hunters to their death.  I would die defending them.  Lashtail Raptors are particularly fierce, known for their unrelenting blood-thirst.  They far outnumbered us.  But I would be damned if I let them kill me and my comrades without shedding some of their own blood first.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225426"] = {
			["base"] = {
				["title"] = "Green Hills of Stranglethorn - Page 25",
				["text"] = {
					"I led the party toward the sea, hoping the shoreline would provide refuge from the Raptors.  In our haste we had drifted too far north, to a precariously high elevation.  The mistake was made.  The fault was mine.  We stopped just short of a sheer cliff, the Raptors just a few paces behind.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-139034"] = {
			["base"] = {
				["title"] = "Letter from Gul'dan",
				["text"] = {
					"Jergosh,\r\n\r\nThe Burning Legion has returned, and now is the time for the Shadow Council to be reformed. I may not be the Gul'dan you once knew, but be assured that I represent everything he worked for... and more.\r\n\r\nIt is time for you to come out of hiding and return to the fold. If you know of any skilled warlocks interested in joining us, now is the time to call them into service.\r\n\r\nGather all true supporters of our cause and go to Scholomance. The Book of Medivh was given to the necromancers there long ago, and it is time we take it back. Do this with the utmost speed, then make your way to aid Allaris in Tol Barad. He is tasked with retrieving the Eye of Dalaran.\r\n\r\nAccomplish these tasks and there will be a place for you at my side. To you will be given the glory of wielding the Scepter of Sargeras. With it you will tear this world asunder and usher in the age of the Legion!\r\n\r\nRemember: Our masters do not take kindly to failure.\r\n\r\nGul'dan",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = true,
				["isClassSpecific"] = 9, -- Warlock
			},
		},
		["Item-95412"] = {
			["base"] = {
				["title"] = "Frayed Zandalari Journal",
				["text"] = {
					"A direhorn! Little Talak thinks he's got the rocks to tame a direhorn.\n\nI tried to convince him a raptor would be fine. A beast caller with a good sturdy raptor - that's a good life. Commands a lot of respect. Raptors take naturally to the spirits. I think it's their brains. Smart. You can tell by the way they watch you.\n\nBut no, Talak wants a direhorn. Carved the sigils into his arm with one of the ceremonial horns, then spoke to the great bestial loa we brought aboard the ship with us. He drank the wild draught, wore the twin-tusk mask, and roared with the inner voice. The spirits are with this one. They like strength, yes, but sometimes they flock toward courage.",
					"So! I helped Talak, frail as he is. I spoke to my spirits. The old loa Grimath, who entered my chest as a child, who guided my hand when I bent the neck of my own direhorn. I drank deep from the well of blood, saw the furies in the air, and whispered Talak's name.\n\nHe's on the Isle of Giants now. Little Talak. Not so little anymore. He'll come back a hero or not at all. Spirits be with him.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-225422"] = {
			["base"] = {
				["title"] = "Green Hills of Stranglethorn - Page 10",
				["text"] = {
					"The kill brought about a festive mood amongst the expedition.  Barnil poured mead for all to enjoy.  But our festivities were short-lived.  As we were preparing the corpse for transport back to base camp we were all caught off guard by a horrendous growl.  In all my years I have never heard anything so blood curdling.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225429"] = {
			["base"] = {
				["title"] = "Green Hills of Stranglethorn - Page 24",
				["text"] = {
					"Our hastily aimed shots were enough to buy Barnil's escape.  Barnil clamored back down the hill and rejoined the party. We scurried off into the jungle; a pack of ferocious Lashtail Raptors stalking our every move.\r\n\r\nThe hunters were now the hunted.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-201518"] = {
			["base"] = {
				["title"] = "Alliance Military Ranks",
				["text"] = {
					'<HTML>\r\n<BODY>\r\n<H1 align="center">ALLIANCE MILITARY RANKS</H1><BR/>\r\n<P align="center">OFFICERS</P><BR/>\r\n<P align="center">Grand Marshal</P>\r\n<P align="center">Field Marshal</P>\r\n<P align="center">Marshal</P>\r\n<P align="center">Commander</P>\r\n<P align="center">Lieutenant Commander</P>\r\n<P align="center">Knight-Champion</P>\r\n<P align="center">Knight-Captain</P>\r\n<P align="center">Knight-Lieutenant</P>\r\n<P align="center">Knight</P><BR/>\r\n<P align="center">ENLISTED</P><BR/>\r\n<P align="center">Sergeant Major</P>\r\n<P align="center">Master Sergeant</P>\r\n<P align="center">Sergeant</P>\r\n<P align="center">Corporal</P>\r\n<P align="center">Private</P><BR/>\r\n</BODY>\r\n</HTML>',
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["mapData"] = {
					[84] = {
						0.7594419121742249,
						0.6598405838012695
					}
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-408060"] = {
			["base"] = {
				["title"] = "The First Clue",
				["text"] = {
					"Hold the Torch of Pyrreth in the Enclave with no stones.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["mapData"] = {
					[2112] = {
						0.3110613822937012,
						0.6226108074188232,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-225420"] = {
			["base"] = {
				["title"] = "Green Hills of Stranglethorn - Page 11",
				["text"] = {
					"On a rocky precipice above, silhouetted by the setting sun, I could make out the largest cat of prey I have ever laid eyes upon.  I was able to loose one clumsy volley with my rifle, but the cat held his ground.  He growled once again, this time louder than the first, and vanished.\r\n\r\nWe gathered our belongings and headed solemnly back to camp.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225428"] = {
			["base"] = {
				["title"] = "Green Hills of Stranglethorn - Page 1",
				["text"] = {
					"The Green Hills of Stranglethorn\r\n\r\nOur first day went as well as one can expect first days to go.  Most of our time was preoccupied with making the necessary arrangements to establish a base camp.  I located an ideal setting by a freshwater river inlet.  Judging by the old, abandoned docks nearby, this site was inhabited sometime ago.  As for the original inhabitants, only time can tell that tale.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225421"] = {
			["base"] = {
				["title"] = "Green Hills of Stranglethorn - Page 16",
				["text"] = {
					"Both Ajeck and Sir Erlgadin stood poised, guns leveled at the bristling overgrowth at the base of the swaying trees.  The midday sun beat heavily upon us.  A slow trickle of perspiration trailed down from Erlgadin's temple as he pulled the pin back.  Upon the sound of the click, the thick flora parted and a large black panther -- a beautiful specimen -- darted out onto the plain.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-245005"] = {
			["base"] = {
				["title"] = "Tome of Blighted Implements",
				["text"] = {
					'<HTML><BODY>\r\n<H1 align="center">Tome of Blighted Implements</H1>\r\n<IMG src="Interface\\Common\\spacer" align="center" width="1" height="27"/>\r\n<IMG src="Interface\\Pictures\\artifactbook-warlock-cover" align="center" width="230" height="230"/>\r\n<IMG src="Interface\\Common\\spacer" align="center" width="1" height="27"/>\r\n<p align="center">As recorded by Mile Raitheborne, Head Researcher of the Council of Six.</p>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<p></p>\r\n<IMG src="Interface\\Pictures\\artifactbook-warlock-ulthalesh" align="center"/>\r\n<IMG src="Interface\\Common\\spacer" align="center" width="1" height="150"/>\r\n<H3 align="center">Ulthalesh, the Deadwind Harvester</H3>\r\n<BR/>\r\n<P>\r\nThose who care for their souls would be wise not to trifle with this cursed scythe. Few among the living know its origins, but its powers are well known to the dead. \r\n<BR/><BR/>\r\nUlthalesh gorges on the souls of its victims, gaining strength with each massacre. During the War of the Ancients, Sargeras gifted one of his favored necrolytes with this infernal blade. At the time, it was known only as Ulthalesh; it wouldn\'t earn its grim epithet until later, after Deadwind Pass was turned into a charnel house, its inhabitants obliterated, the land itself bereft of all life. \r\n<BR/><BR/>\r\nSince then, Ulthalesh has grown even more powerful.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">Ulthalesh, the Deadwind Harvester,<BR/>Part One</H2>\r\n<HR/>\r\n<P>\r\nBefore his fall from the titan Pantheon, Sargeras defended creation from demons, imprisoning untold numbers of them in Mardum, the Plane of Banishment. Over the millennia, these demons were not idle. The dreadlord Ulthalesh ruled the pocket dimension with an iron fist, plotting for the day when he would exact vengeance. \r\n<BR/><BR/>\r\nWhen Sargeras shattered Mardum to recruit forces for the Burning Legion, he offered his former prisoners an ultimatum: join him or be cast into oblivion. Most of the demons accepted, but scores refused, rallying around Ulthalesh. In answer to the challenge, Sargeras forged a great felsteel scythe from the fires of Mardum\'s destruction, and he used it to harvest the souls of the recalcitrant demons, confining them in a new prison. Ulthalesh, strongest of will, was the last to be devoured.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">Ulthalesh, the Deadwind Harvester,<BR/>Part Two</H2>\r\n<HR/>\r\n<P>\r\nSargeras named the scythe Ulthalesh, after the dreadlord who had risen up against him. Ulthalesh\'s spirit gave the weapon unfathomable strength, but with that strength came a curse, for those who bore Ulthalesh were inevitably consumed by it. The scythe would obey its masters\' commands until they were mortally wounded; then Ulthalesh would feast on their souls. Over the centuries, Sargeras bestowed the blade upon cunning nathrezim, ferocious doomlords, and even potent demigods, only to see their spirits devoured by Ulthalesh after they fell. The scythe grew stronger with each master it absorbed, and it became difficult for Sargeras to find servants who could control the weapon. \r\n<BR/><BR/>\r\nOver the wailing of souls trapped within the scythe, the Dark Titan could hear Ulthalesh\'s grim laughter. \r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">Ulthalesh, the Deadwind Harvester,<BR/>Part Three</H2>\r\n<HR/>\r\n<P>\r\nDuring the War of the Ancients, the peoples of Azeroth rebelled against the Burning Legion\'s invasion, and Sargeras sought to break their will with Ulthalesh. But first, he had to find a servant who was powerful enough to wield it. \r\n<BR/><BR/>\r\nHis thoughts turned to the eredar Sataiel. She was the first necrolyte with the strength to command the spirits of the living and the dead with fel magic, a feat that rivaled even Kil\'jaeden\'s necromantic abilities. She was also notoriously ambitious, and fearless to the point of arrogance. Ulthalesh\'s baleful reputation did not sway her. When Sargeras gifted her with the weapon, she accepted it eagerly.\r\n<BR/><BR/>\r\n"I shall be its final master," Sataiel said. \r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">Ulthalesh, the Deadwind Harvester,<BR/>Part Four</H2>\r\n<HR/>\r\n<P>\r\nMillennia ago, Sargeras gave Ulthalesh to Sataiel and commanded her to reap the souls of Azeroth\'s rebellious denizens, starting with the area that would later be known as Deadwind Pass. No one knows what the land was called before the coming of Sataiel. Most would rather not think of it at all. It is the burial site of countless trolls who were methodically slain, their spirits consumed by Ulthalesh, fueling its power to murder more. The scythe would feed and feed until all of the inhabitants were dead. \r\n<BR/><BR/>But Sataiel knew this was just the beginning, a promising start that only hinted at what Ulthalesh was capable of. Sargeras had dispatched her to break the will of Azeroth\'s denizens. It was not enough simply to kill them; bodies could be buried and forgotten. She decided to strike at the very heart of the land so that no new life could take up residence. With Ulthalesh, she would see that Deadwind Pass stood as a monument to the Legion\'s wrath. \r\n\r\n<BR/><BR/>\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">Ulthalesh, the Deadwind Harvester,<BR/>Part Five</H2>\r\n<HR/>\r\n<P>\r\nUlthalesh has had many masters, but Sataiel was the first to discover the scythe\'s true potential. \r\n<BR/><BR/>\r\nAfter she used Ulthalesh to consume the souls of all living creatures in Deadwind Pass, she turned the blade on the land itself, draining it of life. The trees were reduced to withered husks. The marshes became a desiccated waste. The sky turned a sepulchral gray, the sun covered in a burial shroud. Sataiel relished the despair of the scythe\'s new prisoners as they unwittingly assisted in the annihilation of their home. The destruction was absolute. Even Azeroth\'s slumbering world-soul quailed. \r\n<BR/><BR/>\r\nSataiel was impressed with her handiwork. So was Ulthalesh.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">Ulthalesh, the Deadwind Harvester,<BR/>Part Six</H2>\r\n<HR/>\r\n<P>\r\nFrom the journal of Sataiel, recovered from the ruins of Deadwind Pass:\r\n<BR/><BR/>\r\n"I surveyed the ruination I had wrought with great Ulthalesh, and it was glorious. The land was a mausoleum. Everywhere was blight, decay, destruction-except for one area. The explosive force from our ritual had carved a massive crater into the ground, and it roiled with unnatural energies, forming a magical nexus. I knew in my bones that I had birthed a fount of power more potent than the scythe itself.\r\n<BR/><BR/>"I must inform Sargeras. But something gives me pause, something I cannot dismiss. \r\n<BR/><BR/>\r\n"What claim does Sargeras have to this power? Who else but I could have wielded the scythe to the fullness of its potential? No one. Ulthalesh knows this. He urges me not to surrender our progeny. \r\n<BR/><BR/>\r\n"With such strength at our command, he says we may one day challenge Sargeras."\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">Ulthalesh, the Deadwind Harvester,<BR/>Part Seven</H2>\r\n<HR/>\r\n<P>\r\nLike all who presume to wield this pernicious blade, Sataiel was ambitious, strong willed, and supremely confident. She had come to Azeroth to prove herself to Sargeras, but when she saw the heights of power she could reach with Ulthalesh, she wondered whether she\'d set her sights too low. She had massacred thousands, turned the land into a tomb, and ripped open a magical nexus of unspeakable force. Her destiny was bright, and she needed no one\'s patronage to achieve it.\r\n<BR/><BR/>\r\nUlthalesh whispered to Sataiel from the scythe, infecting her mind. She decided to keep the magical nexus for herself, and she cast potent wards to hide it from the outside world. Then she cut off all contact with the Legion, biding her time until she and Ulthalesh had the strength to challenge the Dark Titan. \r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">Ulthalesh, the Deadwind Harvester,<BR/>Part Eight</H2>\r\n<HR/>\r\n<P>\r\nFor centuries, the necrolyte Sataiel guarded Ulthalesh and hoarded the magical nexus they had created. When Sargeras discovered her deception, he was furious. The fount of power was his by right, and Sataiel was keeping it from him. Not only that, but his spies informed him that she was harboring delusions of grandeur, conspiring with the spirit of Ulthalesh to slay Sargeras. Such arrogance could not go unpunished. The upstart eredar had to be eliminated. \r\n<BR/><BR/>\r\nSargeras found his champion in Scavell, the Guardian of Tirisfal. He sent the Guardian visions of a dangerous entity lurking in Deadwind Pass, a demon awaiting the return of the Burning Legion. Scavell boldly took up the charge, hunting down Sataiel and, after an epic battle, slaying her with her own weapon. Her soul was cast screaming into the scythe.\r\n<BR/><BR/>As the Guardian examined the blade, he was filled with dread. Rarely had he seen so mighty an instrument of death, and though he had slain its bearer, he wondered whether the real threat remained unchecked. He decided to hide Ulthalesh where no one would find it.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">Ulthalesh, the Deadwind Harvester,<BR/>Part Nine</H2>\r\n<HR/>\r\n<P>\r\nEmpowered by Sataiel\'s spirit, the scythe had grown immeasurably stronger. There seemed to be no limit to how powerful it could become. Sargeras knew of Ulthalesh\'s scheming, of his promises to Sataiel that they could one day rival the Dark Titan. Although he dismissed this as mere bravado, he refused to give Ulthalesh the opportunity to make good on his threat. \r\n<BR/><BR/>Centuries after Scavell hid Ulthalesh, Sargeras twisted the Guardian Medivh\'s mind so he would assist him in regaining control of the scythe. The Guardian became obsessed with this task, and he dispatched the cursed Dark Riders to search for the blade and bring it back to the tower of Karazhan, which had been built on top of the magical nexus in Deadwind Pass--the nexus that Sataiel and Ulthalesh had created. Sargeras was pleased. It was only a matter of time before the Dark Riders would find the weapon, making a mockery of Ulthalesh\'s ambitions.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">Ulthalesh, the Deadwind Harvester,<BR/>Part Ten</H2>\r\n<HR/>\r\n<P>\r\nSo powerful was Medivh\'s charge that the Dark Riders continued their quest for Ulthalesh even after the Guardian\'s death. Eventually, their leader, Ariden, was drawn to the scythe when he sensed the keening of the trapped souls within, and he brought it to the catacombs beneath Karazhan. \r\n<BR/><BR/>\r\nAriden lacked the willpower and ingenuity of Sataiel, and his stewardship of Ulthalesh did not last long. There are conflicting reports about how he met his end. Some say he succumbed to the scythe\'s curse after he was defeated in battle, but others tell a different story. By all accounts, however, Ulthalesh went missing soon after Ariden\'s death. Its current whereabouts are unknown. Legend holds that only an individual of exceptional skill and fortitude can control it now.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">Ulthalesh, the Deadwind Harvester,<BR/>Part Eleven</H2>\r\n<HR/>\r\n<P>\r\nThe following is an excerpt from A Hypothetical Examination of the Legion\'s Weaknesses, author unknown. It has been deemed apocryphal by the Archival Authority of Argus and is currently banned in all Legion-controlled worlds.\r\n<BR/><BR/>\r\n"There are few things in creation that Sargeras fears. The Deadwind Harvester, Ulthalesh, is one of them. The necrolyte Sataiel regrets that she did not attempt to slay the fallen titan with it when she had the chance, so she will test whoever dares to wield the weapon in her stead. Ulthalesh does not mind. The scythe\'s master will either overcome Sataiel or be consumed, which will only make the blade more powerful. And then another bearer will take their place. And another.\r\n<BR/><BR/>\r\n"Ulthalesh has been playing this game with Sargeras for millennia. He knows the meaning of patience."\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<p></p>\r\n<IMG src="Interface\\Pictures\\artifactbook-warlock-skullofthemanari" align="center"/>\r\n<IMG src="Interface\\Common\\spacer" align="center" width="1" height="190"/>\r\n<H3 align="center">The Skull of the Man\'ari</H3>\r\n<BR/>\r\n<P>\r\nBehold the skull of Thal\'kiel the Denied, once a great leader of the eredar. He gazed into the depths of the Great Dark Beyond and embraced that which gazed back. He saw worlds consumed by fel fire, dark creatures of the Twisting Nether overrunning mortal civilizations, the conquest of creation. Now all that remains of him is this skull, which lends the bearer his power to command demons. \r\n<BR/><BR/>\r\nLike most skulls, Thal\'kiel\'s comes with a cautionary tale. Never mind that it\'s been heeded by none.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Skull of the Man\'ari, Part One</H2>\r\n<HR/>\r\n<P>\r\nBefore the coming of Sargeras to Argus, the eredar Thal\'kiel ushered in a golden age for his people. Thal\'kiel was a sorcerer of unparalleled talent, and he and his Wakeners pushed the limits of summoning and binding magics, conjuring the arcane entities that helped build the capital\'s wondrous architecture. Thal\'kiel also devised the machines that focused the world\'s latent arcane energy, suffusing Argus with peace, harmony, and vitality. All were in awe of his abilities, including his young apprentice, Archimonde. \r\n<BR/><BR/>\r\nThere were rumors that Archimonde coveted Thal\'kiel\'s power and influence, but the eredar leader dismissed these as pure fabrication, for his apprentice had shown him nothing but devotion. Archimonde had even gone to great lengths to commission a custom-made crown for Thal\'kiel, taking the measurements for his head himself.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Skull of the Man\'ari, Part Two</H2>\r\n<HR/>\r\n<P>\r\nThal\'kiel led an order of eredar magi called the Wakeners, specialists in the arts of conjuration and binding. They were renowned for their clever arcane constructs, exploring new frontiers in summoning. Yet Thal\'kiel was never one to rest on his laurels. He thirsted for more. Seeking to elevate his order to levels undreamed of, he searched uncharted terrain, venturing farther than any eredar had dared before. His spells plumbed the vastness of the Great Dark Beyond, petitioning for a deeper well of power.\r\n<BR/><BR/>\r\nOne day, he received an answer.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Skull of the Man\'ari, Part Three</H2>\r\n<HR/>\r\n<P>\r\nThal\'kiel was brilliant, but he was not wise. A dark presence whispered to him, and the eredar\'s mind was consumed with visions of power beyond his wildest imaginings, of ranks upon ranks of deadly servants eager to obey his every whim. These demonic forces made Thal\'kiel\'s arcane constructs look like a child\'s playthings. Afterward, he would despise the arcane, his passion reserved only for fel magic. \r\n<BR/><BR/>\r\nThal\'kiel\'s mysterious benefactor bestowed upon him the ability to summon lesser demons, and the eredar immediately spread the knowledge to his Wakeners. Imps and felhounds, infernals and abyssals, all executed the commands of Thal\'kiel and his sorcerers. Convinced that this was the start of a new era, Thal\'kiel feverishly prepared to present his wondrous pets to the rulers of Argus, Velen and Kil\'jaeden.\r\n<BR/><BR/>\r\nBrilliant. Not wise.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Skull of the Man\'ari, Part Four</H2>\r\n<HR/>\r\n<P>\r\nIn the presence of Velen, Kil\'jaeden, and the eredar rulers\' inner circle, the sorcerer Thal\'kiel demonstrated what his fel darlings could do. First, he summoned scores of his familiar arcane constructs and arrayed them in orderly rows. Then the sky went dark, and the clouds roiled as a storm of meteors crashed down. From the craters emerged an army of infernals--which Thal\'kiel unleashed on the constructs. It was a symbolic display of the new era he saw for his people. He watched rapturously as the demons obliterated the unfortunate arcane entities, smashing and burning them until only smoke and embers remained. Such was the demons\' fury that even the nearby columns and statues were reduced to rubble and ash. An acceptable sacrifice on the altar of progress, as far as Thal\'kiel was concerned. \r\n<BR/><BR/>But when he looked upon his colleagues\' faces, he didn\'t see the approval he expected. Kil\'jaeden\'s expression was remote, inscrutable, but there could be no doubt about how Velen felt. He condemned Thal\'kiel\'s new summonings and ordered him never to conjure them again.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Skull of the Man\'ari, Part Five</H2>\r\n<HR/>\r\n<P>\r\nThe following is from an account of Thal\'kiel\'s last days, written by an anonymous Wakener. It was recovered from Archimonde\'s private archive.\r\n<BR/><BR/>\r\n"After Master Thal\'kiel\'s disastrous demonstration, Velen forbade him from conjuring demons, denouncing his \'new era\' as a failed experiment. Thal\'kiel withdrew to his chambers for weeks. He neither ate nor slept. His only companions were the demonic minions he would summon and then banish in rage, or so we guessed--all we could hear were the shrieks of imps as they were thrust back and forth between this realm and the Twisting Nether. We also sensed the presence of other, larger entities with him, shadowy apparitions of baleful influence, though his servants swore that no one had entered his sanctum.\r\n<BR/><BR/>"When finally Thal\'kiel emerged, he was changed. He had aged by centuries, alone in the dark with his thoughts and his thralls. His back was twisted and stooped, and there was an odd glimmer in his eye. He summoned his Wakeners, and we answered the call, for we loved him like a father.\r\n<BR/><BR/>\r\n"He looked at each of us in turn, and said only, \'The new era begins.\'"\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Skull of the Man\'ari, Part Six</H2>\r\n<HR/>\r\n<P>\r\nThal\'kiel commanded his Wakeners to continue their experiments in summoning fel creatures. In secret, he and his sorcerers conjured demons of increasingly dire aspect, and they cast powerful spells to hide their minions in covert training grounds. Shielded from the eyes of Velen and Kil\'jaeden, Thal\'kiel slowly amassed a great demonic army with one purpose: to install him as dictator of Argus.\r\n<BR/><BR/>\r\nThe Wakeners were united behind Thal\'kiel, save one--his apprentice, Archimonde. Although he had no aversion to demons-in fact, he rather enjoyed them--Archimonde was driven by ambition, and he was eager to prove himself to Velen and Kil\'jaeden. The night before the Wakeners were to stage their coup, Archimonde revealed Thal\'kiel\'s plans to the rulers of the eredar.\r\n<BR/><BR/>\r\n"You shall have his head for this," Archimonde said.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Skull of the Man\'ari, Part Seven</H2>\r\n<HR/>\r\n<P>\r\nVelen and Kil\'jaeden were stunned to learn of Thal\'kiel\'s treachery. He had summoned legions of fel beasts to build his personal empire, plotting to assassinate the eredar rulers. He had tapped into a strange new source of power whose limits were unknown, and he needed to be stopped, swiftly and without mercy. To prove his loyalty to Velen and Kil\'jaeden, Archimonde broke the wards that hid where Thal\'kiel\'s demonic army was marshaled, and he led a contingent of magi in storming the secret training grounds.\r\n<BR/><BR/>\r\nThe battle did not last long. Caught off guard, the Wakeners were easily defeated by the invading magi, and without commanders to direct them, the demons were slaughtered. Archimonde himself confronted his master as he was summoning reinforcements. With a single stroke of his blade, he decapitated Thal\'kiel.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Skull of the Man\'ari, Part Eight</H2>\r\n<HR/>\r\n<P>\r\nFrom chapter one of A Treatise on Eredar Phrenology:\r\n<BR/><BR/>\r\n"The science of phrenology--the study of skull shape as a means to determine intellectual aptitude--became popular in Argus around the time of the Second Duumvirate. Its proponents believed that an eredar\'s mental faculties, such as willpower, memory, and perception, could be attributed to the shape and size of various protuberances on that individual\'s skull. Some theorized that if an eredar\'s skull was sufficiently well-proportioned for spellcasting, it could be utilized to channel magical energies even after death. This practice was deemed too barbaric to be put into common use, though it was not unheard of. \r\n<BR/><BR/>"Among the most prominent phrenologists during this period were Thal\'kiel and Archimonde. Thal\'kiel in particular was noted for having the archetypal sorcerer\'s skull, for which he was widely admired."\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Skull of the Man\'ari, Part Nine</H2>\r\n<HR/>\r\n<P>\r\nAfter they crushed Thal\'kiel\'s rebellion, the eredar rulers\' magi burned the Wakeners\' bodies so their fel taint would not spread, and they destroyed the rebels\' writings to suppress the knowledge of their foul arts. Archimonde oversaw the effort, and when it was done, he was hailed as a hero. \r\n<BR/><BR/>\r\nSoon afterward, Archimonde commissioned one of Argus\'s finest jewelers to gild Thal\'kiel\'s skull. He claimed that he was preparing it for viewing--as a grim warning not to follow Thal\'kiel\'s path. In truth, he had it adorned with metals that would enhance its ability to channel magical energy, the perfect decoration for the perfect sorcerer\'s skull, which Archimonde proudly displayed in his domicile.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Skull of the Man\'ari, Part Ten</H2>\r\n<HR/>\r\n<P>\r\nArchimonde eventually rose to lead the eredar alongside Velen and Kil\'jaeden, and by all accounts, he was a wise and sagacious ruler. In actuality, however, a demonic presence had been slowly infiltrating Archimonde\'s mind, using Thal\'kiel\'s skull as a conduit for its pernicious influence. While Archimonde slept, he saw visions of civilizations consumed in magnificent fel fire, and a dark god standing at the head of a glorious army. The entity whispered promises of strength that were impossible for mere mortals to comprehend, and Archimonde drank them in, eager to learn more of this mysterious being and his invincible legions.\r\n<BR/><BR/>\r\nThus when the Dark Titan, Sargeras, finally came to Argus and offered the eredar a place in his kingdom, Archimonde was the first to accept.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Skull of the Man\'ari, Part Eleven</H2>\r\n<HR/>\r\n<P>\r\nAfter Archimonde became one of the Burning Legion\'s generals, he put Thal\'kiel\'s skull to good use. In life, Thal\'kiel had been unmatched in his ability to control demonic minions, and his skull was no less adept. World after world fell before Archimonde as he channeled his commands through the skull, compelling multitudes of demons to obey, his forces obliterating opponents with the grace and precision of an expertly choreographed ballet.\r\n<BR/><BR/>\r\nSince then, possession of Thal\'kiel\'s skull has passed between a handful of Sargeras\'s elite generals, with preference given to those who lead invasions of the fallen titan\'s most sought-after worlds. The dreadlord Mephistroth, commander of the Legion\'s vanguard in Azeroth, was the last to be seen with it.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<p></p>\r\n<IMG src="Interface\\Pictures\\artifactbook-warlock-scepterofsargeras" align="center"/>\r\n<IMG src="Interface\\Common\\spacer" align="center" width="1" height="180"/>\r\n<H3 align="center">The Scepter of Sargeras</H3>\r\n<BR/>\r\n<P>\r\nMortal hands were not meant to hold this staff. It was forged on the orders of Sargeras after his defeat in the War of the Ancients, intended as a means to conquer Azeroth once and for all. This scepter rips open the fabric of reality, obliterating the barriers between worlds, destroying everything that stands between you and your goal. \r\n<BR/><BR/>\r\nIf you\'re lucky, that\'s all the damage it will do.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Scepter of Sargeras, Part One</H2>\r\n<HR/>\r\n<P>\r\nDuring the War of the Ancients, the night elf queen Azshara and her Highborne sorcerers attempted to open a portal that would allow Sargeras into Azeroth. The challenge was unprecedented; never before had anyone built a gateway that was strong enough for a titan. For weeks the Highborne labored without rest, crafting and weaving spells to devise a passage through the night elves\' colossal fount of power, the Well of Eternity. \r\n<BR/><BR/>\r\nBut just as Sargeras was about to emerge into the world, the night elf resistance disrupted the Highborne\'s spellwork and demolished the Well of Eternity. Sargeras was cast back into the Twisting Nether, his ambition denied, his greatest chance to conquer Azeroth slipping from his grasp. The Dark Titan swore revenge. \r\n<BR/><BR/>\r\nHe would tear down the walls between himself and his prize.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Scepter of Sargeras, Part Two</H2>\r\n<HR/>\r\n<P>\r\nAfter his defeat at the Well of Eternity, Sargeras immediately planned his next method of infiltrating Azeroth. He knew he couldn\'t rely on a static portal; to serve a titan, such a gateway required an astronomical amount of power, and the most promising source had been destroyed in his last attempt. Moreover, the Highborne\'s laborious preparation and spellwork had given away his intentions, which had allowed the night elf resistance to thwart him. If he wanted to overcome Azeroth\'s defenders, Sargeras needed to enter the world with minimal warning. \r\n<BR/><BR/>Thus he commanded the eredar to forge a tool that would wrench open rifts between worlds for only a short time, just long enough to let a portion of his soul through. Although that meant he couldn\'t enter Azeroth in his most devastating form, such an instrument would clear a path for his avatar to lead the Legion\'s invasion or carry out subtler schemes.\r\n<BR/><BR/>\r\nSuch an instrument would also weaken the integrity of the physical universe and threaten to collapse it, but Sargeras considered those to be only side benefits. \r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Scepter of Sargeras, Part Three</H2>\r\n<HR/>\r\n<P>\r\nMillennia ago, Sargeras ordered his most talented eredar sorcerers to construct him a cosmic battering ram. They did not disappoint. \r\n<BR/><BR/>\r\nFirst, scores of magi conducted dark rituals to channel countless portals into a single staff. They then projected the empowered artifact into every corner of the Great Dark Beyond, weaving it into the fabric of reality, creating a thread that could be pulled to unravel the seams of the physical universe at will. To fuel this monstrous undertaking, a hundred warlocks sacrificed a hundred demons, selecting them from among the Legion troops that had been part of the failed invasion of Azeroth. \r\n<BR/><BR/>\r\nThus was forged the Jeweled Scepter of Sargeras. Thus was born Azeroth\'s doom. \r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Scepter of Sargeras, Part Four</H2>\r\n<HR/>\r\n<P>\r\nThe Scepter of Sargeras is known for the gleaming jewel that adorns its apex. Many theorize that it represents Sargeras\'s baleful eye, which caught only a glimpse of Azeroth before the fallen titan was ripped back to the Twisting Nether. But the truth is far different. \r\n<BR/><BR/>\r\nSoon after the War of the Ancients, Sargeras had a vision: the Well of Eternity imploded once again, but this time, it dragged him down to the very core of Azeroth. He was there for only an instant, but in that moment, he saw Azeroth\'s slumbering world-soul--and in that moment, the world-soul opened one eye and gazed at the Dark Titan. He was enraptured. \r\n<BR/><BR/>Since then, the eye of Azeroth\'s world-soul has not been far from his thoughts. He commanded the eredar who forged the scepter to crown it with that lone, wondrous orb. Next to it, the eredar placed two nathrezim wings, a testament to Sargeras\'s conception of the world-soul: corrupted, demonic, and most importantly, his.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Scepter of Sargeras, Part Five</H2>\r\n<HR/>\r\n<P>\r\nThe Scepter of Sargeras was a marvel of arcane and fel sorcery, an instrument fit for a titan. It could lacerate the connective tissue of the physical universe, opening portals to any realm Sargeras desired, yet the rifts it created would allow only a portion of his soul to enter. It was a minor setback. Sargeras would simply have to be more inventive with his plans. And so, he waited.\r\n<BR/><BR/>\r\nMillennia later, Sargeras saw his opportunity. The Guardian Aegwynn had become the most powerful mage on Azeroth, and not even the Council of Tirisfal could control her. Her pride made her a fine candidate for corruption. Sargeras could not infiltrate Azeroth in his most lethal form, but perhaps he could use the rebellious Guardian as a vessel for his machinations.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Scepter of Sargeras, Part Six</H2>\r\n<HR/>\r\n<P>\r\nFrom the journal of Aegwynn, Guardian of Tirisfal:\r\n<BR/><BR/>\r\n"We had finished routing the Legion\'s minions when the sky turned black. My mouth went dry, and the hairs on my neck bristled, responding to stimuli that my mortal senses could not comprehend. It was like the coming of a monstrous storm, right before the thunderheads would unleash their cataclysmic onslaught. Yet the air remained as still as great Galakrond\'s bones. Something was wrong, very wrong, and all we could do was wait.\r\n<BR/><BR/>"I\'ll always remember the sound. That slippery, hollow, CRACKING sound, like that of a mace splitting a giant\'s skull. But it was bigger than that-louder, longer. It pierced me like an arrow through my chest, though I knew the breach had happened some distance away. The edges of the world seemed to quiver, and for an instant I thought they might collapse. But they did not. \r\n<BR/><BR/>\r\n"That was when the avatar of Sargeras entered the field of battle."\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Scepter of Sargeras, Part Seven</H2>\r\n<HR/>\r\n<P>\r\nIn the icy wastes of Northrend, Sargeras drew the Guardian Aegwynn into battle, advancing on his opponent as the portal he\'d torn into Azeroth closed behind him. His avatar was but a pale shadow of his true form, but that hardly mattered. After all, even if he couldn\'t defeat Aegwynn, he could still use her for his own ends. He had only to weaken her defenses, to create an opening for a shard of his spirit to break through. Just as he\'d infiltrated Azeroth with the scepter, so too would he invade Aegwynn\'s soul, corrupting it into another instrument of the Legion. \r\n<BR/><BR/>Afterward, Aegwynn would remember the battle as the most brutal she\'d ever fought, but she finally destroyed the avatar of Sargeras in an avalanche of arcane might. As she stood triumphant over her fallen foe, she could scarcely believe that she had won. \r\n<BR/><BR/>\r\nLittle did she know that she had lost.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Scepter of Sargeras, Part Eight</H2>\r\n<HR/>\r\n<P>\r\nFrom the journal of Aegwynn, Guardian of Tirisfal:\r\n<BR/><BR/>\r\n"I have defeated the avatar of the Great Enemy, Sargeras, but I cannot enjoy my victory. There is a hollowness inside my breast, a persistent ache from a wound whose origin I do not know. It must be from the strain of the battle.\r\n<BR/><BR/>\r\n"I will dispose of the remnants of the fallen titan\'s incursion. His avatar, though but a fragment of his full form, rivals Galakrond in stature, and I cannot let his bones take up residence next to the gargantuan proto-dragon\'s. Who knows what foul taint lies in wait to be released? Even in death, the corpse is malevolent, gripping its cursed scepter as if it still intends to rule. \r\n<BR/><BR/>"The scepter. No one must be allowed to wield it. This was the instrument Sargeras used to enter Azeroth, tearing a gash in the universe that threatened to obliterate our world. The eye on top of the staff stares out, mocking me. I shall ensure that it never sees the light of day again."\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Scepter of Sargeras, Part Nine</H2>\r\n<HR/>\r\n<P>\r\nAfter Aegwynn defeated Sargeras\'s avatar, she interred his corpse in the ruins of Suramar, along with the artifacts that he bore. Deep beneath the sea, shielded by enchanted Highborne seals, the Scepter of Sargeras remained for centuries, its power undiminished. \r\n<BR/><BR/>\r\nSargeras attempted to regain control of the staff through Aegwynn, but the task proved more difficult than he had estimated. He could sway the Guardian in many ways, but he could not compel her to exhume his scepter from its watery grave. Something held her back, a primal instinct louder than Sargeras\'s whispering. She knew the artifact was dangerous, that its use risked the destruction of all things. Even possessed by the Dark Titan, she would not yield. \r\n<BR/><BR/>Sargeras realized that greater subtlety was needed. Eventually, he extended his pernicious influence to Aegwynn\'s son, Medivh, as he developed in her womb. Through this new vessel, Sargeras planned to recover his beloved scepter. \r\n<BR/><BR/>\r\nHad he succeeded, the world of Draenor might not have been annihilated.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Scepter of Sargeras, Part Ten</H2>\r\n<HR/>\r\n<P>\r\nOther than the Dark Titan, the Scepter of Sargeras has had few wielders. One of them was the orc warlock Ner\'zhul.\r\n<BR/><BR/>\r\nAfter the Horde\'s defeat in the Second War, Ner\'zhul sought to reinvigorate his followers by opening gateways to new worlds for them to conquer. To that end, he dispatched his servants to recover various artifacts from the Tomb of Sargeras, including the scepter, which the fallen titan had used to infiltrate Azeroth centuries before. \r\n<BR/><BR/>Ner\'zhul was not Sargeras, however, so he could not simply command the staff to open portals. He had to wait until the constellations of Draenor were properly aligned, and he could only use the scepter in conjunction with other artifacts. The warlock grew impatient, frustrated with his limitations. Intoxicated by the Skull of Gul\'dan\'s influence, he had visions of his erstwhile apprentice, who urged him to unleash his godlike powers. \r\n<BR/><BR/>\r\nWhen at last the moment arrived for Ner\'zhul to act, he did so with wild abandon, heedless of the consequences. It mattered not to him if Draenor was destroyed; in fact, he welcomed it as part of his legacy. With the scepter, he blasted hole after hole through the fabric of reality, shredding the seams connecting Draenor to the rest of the physical universe. As he rushed headlong through one of the portals, he could hear the world shattering behind him.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Scepter of Sargeras, Part Eleven</H2>\r\n<HR/>\r\n<P>\r\nAfter Draenor was destroyed, the demon lord Kil\'jaeden wrested control of the Scepter of Sargeras from Ner\'zhul. At last, the artifact was back in the Legion\'s possession, and Kil\'jaeden would set about using it to invade Azeroth. \r\n<BR/><BR/>\r\nBut he was not as powerful as Sargeras; he could not open a portal mighty enough even for his avatar. Thus he conspired with Kael\'thas Sunstrider to create a gateway through the Sunwell, the blood elves\' ruined fount of power. Combined with the world-rending force of the scepter, Kael\'thas\'s portal cleared the way for Kil\'jaeden\'s full form. \r\n<BR/><BR/>However, before the demon lord could set foot on Azeroth, Anveena, the embodiment of the Sunwell\'s energies, intervened. She sacrificed herself, unleashing all of her strength on the Deceiver and allowing him to be thrown back into the Twisting Nether-along with the Scepter of Sargeras. \r\n<BR/><BR/>\r\nThe staff has not been seen on Azeroth since. A small comfort, for surely the Legion will use it to infiltrate the world once again. But no matter who wields it, the threat it poses is unspeakable. The destruction of Draenor is testament to the devastation that even mortals can wreak with this weapon.\r\n</P>\r\n</BODY></HTML>',
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "ParchmentLarge",
				["mapData"] = {
					[717] = {
						0.5666234493255615,
						0.4116912484169006,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = 9, -- Warlock
				["isFinalVersion"] = true,
			},
			["copy_1"] = {
				["title"] = "Tome of Blighted Implements",
				["text"] = {
					'<HTML><BODY>\r\n<H1 align="center">Tome of Blighted Implements</H1>\r\n<IMG src="Interface\\Common\\spacer" align="center" width="1" height="27"/>\r\n<IMG src="Interface\\Pictures\\artifactbook-warlock-cover" align="center" width="230" height="230"/>\r\n<IMG src="Interface\\Common\\spacer" align="center" width="1" height="27"/>\r\n<p align="center">As recorded by Mile Raitheborne, Head Researcher of the Council of Six.</p>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<p></p>\r\n<IMG src="Interface\\Pictures\\artifactbook-warlock-skullofthemanari" align="center"/>\r\n<IMG src="Interface\\Common\\spacer" align="center" width="1" height="190"/>\r\n<H3 align="center">The Skull of the Man\'ari</H3>\r\n<BR/>\r\n<P>\r\nBehold the skull of Thal\'kiel the Denied, once a great leader of the eredar. He gazed into the depths of the Great Dark Beyond and embraced that which gazed back. He saw worlds consumed by fel fire, dark creatures of the Twisting Nether overrunning mortal civilizations, the conquest of creation. Now all that remains of him is this skull, which lends the bearer his power to command demons. \r\n<BR/><BR/>\r\nLike most skulls, Thal\'kiel\'s comes with a cautionary tale. Never mind that it\'s been heeded by none.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Skull of the Man\'ari, Part One</H2>\r\n<HR/>\r\n<P>\r\nBefore the coming of Sargeras to Argus, the eredar Thal\'kiel ushered in a golden age for his people. Thal\'kiel was a sorcerer of unparalleled talent, and he and his Wakeners pushed the limits of summoning and binding magics, conjuring the arcane entities that helped build the capital\'s wondrous architecture. Thal\'kiel also devised the machines that focused the world\'s latent arcane energy, suffusing Argus with peace, harmony, and vitality. All were in awe of his abilities, including his young apprentice, Archimonde. \r\n<BR/><BR/>\r\nThere were rumors that Archimonde coveted Thal\'kiel\'s power and influence, but the eredar leader dismissed these as pure fabrication, for his apprentice had shown him nothing but devotion. Archimonde had even gone to great lengths to commission a custom-made crown for Thal\'kiel, taking the measurements for his head himself.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Skull of the Man\'ari, Part Two</H2>\r\n<HR/>\r\n<P>\r\nThal\'kiel led an order of eredar magi called the Wakeners, specialists in the arts of conjuration and binding. They were renowned for their clever arcane constructs, exploring new frontiers in summoning. Yet Thal\'kiel was never one to rest on his laurels. He thirsted for more. Seeking to elevate his order to levels undreamed of, he searched uncharted terrain, venturing farther than any eredar had dared before. His spells plumbed the vastness of the Great Dark Beyond, petitioning for a deeper well of power.\r\n<BR/><BR/>\r\nOne day, he received an answer.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Skull of the Man\'ari, Part Three</H2>\r\n<HR/>\r\n<P>\r\nThal\'kiel was brilliant, but he was not wise. A dark presence whispered to him, and the eredar\'s mind was consumed with visions of power beyond his wildest imaginings, of ranks upon ranks of deadly servants eager to obey his every whim. These demonic forces made Thal\'kiel\'s arcane constructs look like a child\'s playthings. Afterward, he would despise the arcane, his passion reserved only for fel magic. \r\n<BR/><BR/>\r\nThal\'kiel\'s mysterious benefactor bestowed upon him the ability to summon lesser demons, and the eredar immediately spread the knowledge to his Wakeners. Imps and felhounds, infernals and abyssals, all executed the commands of Thal\'kiel and his sorcerers. Convinced that this was the start of a new era, Thal\'kiel feverishly prepared to present his wondrous pets to the rulers of Argus, Velen and Kil\'jaeden.\r\n<BR/><BR/>\r\nBrilliant. Not wise.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Skull of the Man\'ari, Part Four</H2>\r\n<HR/>\r\n<P>\r\nIn the presence of Velen, Kil\'jaeden, and the eredar rulers\' inner circle, the sorcerer Thal\'kiel demonstrated what his fel darlings could do. First, he summoned scores of his familiar arcane constructs and arrayed them in orderly rows. Then the sky went dark, and the clouds roiled as a storm of meteors crashed down. From the craters emerged an army of infernals--which Thal\'kiel unleashed on the constructs. It was a symbolic display of the new era he saw for his people. He watched rapturously as the demons obliterated the unfortunate arcane entities, smashing and burning them until only smoke and embers remained. Such was the demons\' fury that even the nearby columns and statues were reduced to rubble and ash. An acceptable sacrifice on the altar of progress, as far as Thal\'kiel was concerned. \r\n<BR/><BR/>But when he looked upon his colleagues\' faces, he didn\'t see the approval he expected. Kil\'jaeden\'s expression was remote, inscrutable, but there could be no doubt about how Velen felt. He condemned Thal\'kiel\'s new summonings and ordered him never to conjure them again.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Skull of the Man\'ari, Part Five</H2>\r\n<HR/>\r\n<P>\r\nThe following is from an account of Thal\'kiel\'s last days, written by an anonymous Wakener. It was recovered from Archimonde\'s private archive.\r\n<BR/><BR/>\r\n"After Master Thal\'kiel\'s disastrous demonstration, Velen forbade him from conjuring demons, denouncing his \'new era\' as a failed experiment. Thal\'kiel withdrew to his chambers for weeks. He neither ate nor slept. His only companions were the demonic minions he would summon and then banish in rage, or so we guessed--all we could hear were the shrieks of imps as they were thrust back and forth between this realm and the Twisting Nether. We also sensed the presence of other, larger entities with him, shadowy apparitions of baleful influence, though his servants swore that no one had entered his sanctum.\r\n<BR/><BR/>"When finally Thal\'kiel emerged, he was changed. He had aged by centuries, alone in the dark with his thoughts and his thralls. His back was twisted and stooped, and there was an odd glimmer in his eye. He summoned his Wakeners, and we answered the call, for we loved him like a father.\r\n<BR/><BR/>\r\n"He looked at each of us in turn, and said only, \'The new era begins.\'"\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Skull of the Man\'ari, Part Six</H2>\r\n<HR/>\r\n<P>\r\nThal\'kiel commanded his Wakeners to continue their experiments in summoning fel creatures. In secret, he and his sorcerers conjured demons of increasingly dire aspect, and they cast powerful spells to hide their minions in covert training grounds. Shielded from the eyes of Velen and Kil\'jaeden, Thal\'kiel slowly amassed a great demonic army with one purpose: to install him as dictator of Argus.\r\n<BR/><BR/>\r\nThe Wakeners were united behind Thal\'kiel, save one--his apprentice, Archimonde. Although he had no aversion to demons-in fact, he rather enjoyed them--Archimonde was driven by ambition, and he was eager to prove himself to Velen and Kil\'jaeden. The night before the Wakeners were to stage their coup, Archimonde revealed Thal\'kiel\'s plans to the rulers of the eredar.\r\n<BR/><BR/>\r\n"You shall have his head for this," Archimonde said.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Skull of the Man\'ari, Part Seven</H2>\r\n<HR/>\r\n<P>\r\nVelen and Kil\'jaeden were stunned to learn of Thal\'kiel\'s treachery. He had summoned legions of fel beasts to build his personal empire, plotting to assassinate the eredar rulers. He had tapped into a strange new source of power whose limits were unknown, and he needed to be stopped, swiftly and without mercy. To prove his loyalty to Velen and Kil\'jaeden, Archimonde broke the wards that hid where Thal\'kiel\'s demonic army was marshaled, and he led a contingent of magi in storming the secret training grounds.\r\n<BR/><BR/>\r\nThe battle did not last long. Caught off guard, the Wakeners were easily defeated by the invading magi, and without commanders to direct them, the demons were slaughtered. Archimonde himself confronted his master as he was summoning reinforcements. With a single stroke of his blade, he decapitated Thal\'kiel.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Skull of the Man\'ari, Part Eight</H2>\r\n<HR/>\r\n<P>\r\nFrom chapter one of A Treatise on Eredar Phrenology:\r\n<BR/><BR/>\r\n"The science of phrenology--the study of skull shape as a means to determine intellectual aptitude--became popular in Argus around the time of the Second Duumvirate. Its proponents believed that an eredar\'s mental faculties, such as willpower, memory, and perception, could be attributed to the shape and size of various protuberances on that individual\'s skull. Some theorized that if an eredar\'s skull was sufficiently well-proportioned for spellcasting, it could be utilized to channel magical energies even after death. This practice was deemed too barbaric to be put into common use, though it was not unheard of. \r\n<BR/><BR/>"Among the most prominent phrenologists during this period were Thal\'kiel and Archimonde. Thal\'kiel in particular was noted for having the archetypal sorcerer\'s skull, for which he was widely admired."\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Skull of the Man\'ari, Part Nine</H2>\r\n<HR/>\r\n<P>\r\nAfter they crushed Thal\'kiel\'s rebellion, the eredar rulers\' magi burned the Wakeners\' bodies so their fel taint would not spread, and they destroyed the rebels\' writings to suppress the knowledge of their foul arts. Archimonde oversaw the effort, and when it was done, he was hailed as a hero. \r\n<BR/><BR/>\r\nSoon afterward, Archimonde commissioned one of Argus\'s finest jewelers to gild Thal\'kiel\'s skull. He claimed that he was preparing it for viewing--as a grim warning not to follow Thal\'kiel\'s path. In truth, he had it adorned with metals that would enhance its ability to channel magical energy, the perfect decoration for the perfect sorcerer\'s skull, which Archimonde proudly displayed in his domicile.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Skull of the Man\'ari, Part Ten</H2>\r\n<HR/>\r\n<P>\r\nArchimonde eventually rose to lead the eredar alongside Velen and Kil\'jaeden, and by all accounts, he was a wise and sagacious ruler. In actuality, however, a demonic presence had been slowly infiltrating Archimonde\'s mind, using Thal\'kiel\'s skull as a conduit for its pernicious influence. While Archimonde slept, he saw visions of civilizations consumed in magnificent fel fire, and a dark god standing at the head of a glorious army. The entity whispered promises of strength that were impossible for mere mortals to comprehend, and Archimonde drank them in, eager to learn more of this mysterious being and his invincible legions.\r\n<BR/><BR/>\r\nThus when the Dark Titan, Sargeras, finally came to Argus and offered the eredar a place in his kingdom, Archimonde was the first to accept.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Skull of the Man\'ari, Part Eleven</H2>\r\n<HR/>\r\n<P>\r\nAfter Archimonde became one of the Burning Legion\'s generals, he put Thal\'kiel\'s skull to good use. In life, Thal\'kiel had been unmatched in his ability to control demonic minions, and his skull was no less adept. World after world fell before Archimonde as he channeled his commands through the skull, compelling multitudes of demons to obey, his forces obliterating opponents with the grace and precision of an expertly choreographed ballet.\r\n<BR/><BR/>\r\nSince then, possession of Thal\'kiel\'s skull has passed between a handful of Sargeras\'s elite generals, with preference given to those who lead invasions of the fallen titan\'s most sought-after worlds. The dreadlord Mephistroth, commander of the Legion\'s vanguard in Azeroth, was the last to be seen with it.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<p></p>\r\n<IMG src="Interface\\Pictures\\artifactbook-warlock-scepterofsargeras" align="center"/>\r\n<IMG src="Interface\\Common\\spacer" align="center" width="1" height="180"/>\r\n<H3 align="center">The Scepter of Sargeras</H3>\r\n<BR/>\r\n<P>\r\nMortal hands were not meant to hold this staff. It was forged on the orders of Sargeras after his defeat in the War of the Ancients, intended as a means to conquer Azeroth once and for all. This scepter rips open the fabric of reality, obliterating the barriers between worlds, destroying everything that stands between you and your goal. \r\n<BR/><BR/>\r\nIf you\'re lucky, that\'s all the damage it will do.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Scepter of Sargeras, Part One</H2>\r\n<HR/>\r\n<P>\r\nDuring the War of the Ancients, the night elf queen Azshara and her Highborne sorcerers attempted to open a portal that would allow Sargeras into Azeroth. The challenge was unprecedented; never before had anyone built a gateway that was strong enough for a titan. For weeks the Highborne labored without rest, crafting and weaving spells to devise a passage through the night elves\' colossal fount of power, the Well of Eternity. \r\n<BR/><BR/>\r\nBut just as Sargeras was about to emerge into the world, the night elf resistance disrupted the Highborne\'s spellwork and demolished the Well of Eternity. Sargeras was cast back into the Twisting Nether, his ambition denied, his greatest chance to conquer Azeroth slipping from his grasp. The Dark Titan swore revenge. \r\n<BR/><BR/>\r\nHe would tear down the walls between himself and his prize.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Scepter of Sargeras, Part Two</H2>\r\n<HR/>\r\n<P>\r\nAfter his defeat at the Well of Eternity, Sargeras immediately planned his next method of infiltrating Azeroth. He knew he couldn\'t rely on a static portal; to serve a titan, such a gateway required an astronomical amount of power, and the most promising source had been destroyed in his last attempt. Moreover, the Highborne\'s laborious preparation and spellwork had given away his intentions, which had allowed the night elf resistance to thwart him. If he wanted to overcome Azeroth\'s defenders, Sargeras needed to enter the world with minimal warning. \r\n<BR/><BR/>Thus he commanded the eredar to forge a tool that would wrench open rifts between worlds for only a short time, just long enough to let a portion of his soul through. Although that meant he couldn\'t enter Azeroth in his most devastating form, such an instrument would clear a path for his avatar to lead the Legion\'s invasion or carry out subtler schemes.\r\n<BR/><BR/>\r\nSuch an instrument would also weaken the integrity of the physical universe and threaten to collapse it, but Sargeras considered those to be only side benefits. \r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Scepter of Sargeras, Part Three</H2>\r\n<HR/>\r\n<P>\r\nMillennia ago, Sargeras ordered his most talented eredar sorcerers to construct him a cosmic battering ram. They did not disappoint. \r\n<BR/><BR/>\r\nFirst, scores of magi conducted dark rituals to channel countless portals into a single staff. They then projected the empowered artifact into every corner of the Great Dark Beyond, weaving it into the fabric of reality, creating a thread that could be pulled to unravel the seams of the physical universe at will. To fuel this monstrous undertaking, a hundred warlocks sacrificed a hundred demons, selecting them from among the Legion troops that had been part of the failed invasion of Azeroth. \r\n<BR/><BR/>\r\nThus was forged the Jeweled Scepter of Sargeras. Thus was born Azeroth\'s doom. \r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Scepter of Sargeras, Part Four</H2>\r\n<HR/>\r\n<P>\r\nThe Scepter of Sargeras is known for the gleaming jewel that adorns its apex. Many theorize that it represents Sargeras\'s baleful eye, which caught only a glimpse of Azeroth before the fallen titan was ripped back to the Twisting Nether. But the truth is far different. \r\n<BR/><BR/>\r\nSoon after the War of the Ancients, Sargeras had a vision: the Well of Eternity imploded once again, but this time, it dragged him down to the very core of Azeroth. He was there for only an instant, but in that moment, he saw Azeroth\'s slumbering world-soul--and in that moment, the world-soul opened one eye and gazed at the Dark Titan. He was enraptured. \r\n<BR/><BR/>Since then, the eye of Azeroth\'s world-soul has not been far from his thoughts. He commanded the eredar who forged the scepter to crown it with that lone, wondrous orb. Next to it, the eredar placed two nathrezim wings, a testament to Sargeras\'s conception of the world-soul: corrupted, demonic, and most importantly, his.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Scepter of Sargeras, Part Five</H2>\r\n<HR/>\r\n<P>\r\nThe Scepter of Sargeras was a marvel of arcane and fel sorcery, an instrument fit for a titan. It could lacerate the connective tissue of the physical universe, opening portals to any realm Sargeras desired, yet the rifts it created would allow only a portion of his soul to enter. It was a minor setback. Sargeras would simply have to be more inventive with his plans. And so, he waited.\r\n<BR/><BR/>\r\nMillennia later, Sargeras saw his opportunity. The Guardian Aegwynn had become the most powerful mage on Azeroth, and not even the Council of Tirisfal could control her. Her pride made her a fine candidate for corruption. Sargeras could not infiltrate Azeroth in his most lethal form, but perhaps he could use the rebellious Guardian as a vessel for his machinations.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Scepter of Sargeras, Part Six</H2>\r\n<HR/>\r\n<P>\r\nFrom the journal of Aegwynn, Guardian of Tirisfal:\r\n<BR/><BR/>\r\n"We had finished routing the Legion\'s minions when the sky turned black. My mouth went dry, and the hairs on my neck bristled, responding to stimuli that my mortal senses could not comprehend. It was like the coming of a monstrous storm, right before the thunderheads would unleash their cataclysmic onslaught. Yet the air remained as still as great Galakrond\'s bones. Something was wrong, very wrong, and all we could do was wait.\r\n<BR/><BR/>"I\'ll always remember the sound. That slippery, hollow, CRACKING sound, like that of a mace splitting a giant\'s skull. But it was bigger than that-louder, longer. It pierced me like an arrow through my chest, though I knew the breach had happened some distance away. The edges of the world seemed to quiver, and for an instant I thought they might collapse. But they did not. \r\n<BR/><BR/>\r\n"That was when the avatar of Sargeras entered the field of battle."\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Scepter of Sargeras, Part Seven</H2>\r\n<HR/>\r\n<P>\r\nIn the icy wastes of Northrend, Sargeras drew the Guardian Aegwynn into battle, advancing on his opponent as the portal he\'d torn into Azeroth closed behind him. His avatar was but a pale shadow of his true form, but that hardly mattered. After all, even if he couldn\'t defeat Aegwynn, he could still use her for his own ends. He had only to weaken her defenses, to create an opening for a shard of his spirit to break through. Just as he\'d infiltrated Azeroth with the scepter, so too would he invade Aegwynn\'s soul, corrupting it into another instrument of the Legion. \r\n<BR/><BR/>Afterward, Aegwynn would remember the battle as the most brutal she\'d ever fought, but she finally destroyed the avatar of Sargeras in an avalanche of arcane might. As she stood triumphant over her fallen foe, she could scarcely believe that she had won. \r\n<BR/><BR/>\r\nLittle did she know that she had lost.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Scepter of Sargeras, Part Eight</H2>\r\n<HR/>\r\n<P>\r\nFrom the journal of Aegwynn, Guardian of Tirisfal:\r\n<BR/><BR/>\r\n"I have defeated the avatar of the Great Enemy, Sargeras, but I cannot enjoy my victory. There is a hollowness inside my breast, a persistent ache from a wound whose origin I do not know. It must be from the strain of the battle.\r\n<BR/><BR/>\r\n"I will dispose of the remnants of the fallen titan\'s incursion. His avatar, though but a fragment of his full form, rivals Galakrond in stature, and I cannot let his bones take up residence next to the gargantuan proto-dragon\'s. Who knows what foul taint lies in wait to be released? Even in death, the corpse is malevolent, gripping its cursed scepter as if it still intends to rule. \r\n<BR/><BR/>"The scepter. No one must be allowed to wield it. This was the instrument Sargeras used to enter Azeroth, tearing a gash in the universe that threatened to obliterate our world. The eye on top of the staff stares out, mocking me. I shall ensure that it never sees the light of day again."\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Scepter of Sargeras, Part Nine</H2>\r\n<HR/>\r\n<P>\r\nAfter Aegwynn defeated Sargeras\'s avatar, she interred his corpse in the ruins of Suramar, along with the artifacts that he bore. Deep beneath the sea, shielded by enchanted Highborne seals, the Scepter of Sargeras remained for centuries, its power undiminished. \r\n<BR/><BR/>\r\nSargeras attempted to regain control of the staff through Aegwynn, but the task proved more difficult than he had estimated. He could sway the Guardian in many ways, but he could not compel her to exhume his scepter from its watery grave. Something held her back, a primal instinct louder than Sargeras\'s whispering. She knew the artifact was dangerous, that its use risked the destruction of all things. Even possessed by the Dark Titan, she would not yield. \r\n<BR/><BR/>Sargeras realized that greater subtlety was needed. Eventually, he extended his pernicious influence to Aegwynn\'s son, Medivh, as he developed in her womb. Through this new vessel, Sargeras planned to recover his beloved scepter. \r\n<BR/><BR/>\r\nHad he succeeded, the world of Draenor might not have been annihilated.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Scepter of Sargeras, Part Ten</H2>\r\n<HR/>\r\n<P>\r\nOther than the Dark Titan, the Scepter of Sargeras has had few wielders. One of them was the orc warlock Ner\'zhul.\r\n<BR/><BR/>\r\nAfter the Horde\'s defeat in the Second War, Ner\'zhul sought to reinvigorate his followers by opening gateways to new worlds for them to conquer. To that end, he dispatched his servants to recover various artifacts from the Tomb of Sargeras, including the scepter, which the fallen titan had used to infiltrate Azeroth centuries before. \r\n<BR/><BR/>Ner\'zhul was not Sargeras, however, so he could not simply command the staff to open portals. He had to wait until the constellations of Draenor were properly aligned, and he could only use the scepter in conjunction with other artifacts. The warlock grew impatient, frustrated with his limitations. Intoxicated by the Skull of Gul\'dan\'s influence, he had visions of his erstwhile apprentice, who urged him to unleash his godlike powers. \r\n<BR/><BR/>\r\nWhen at last the moment arrived for Ner\'zhul to act, he did so with wild abandon, heedless of the consequences. It mattered not to him if Draenor was destroyed; in fact, he welcomed it as part of his legacy. With the scepter, he blasted hole after hole through the fabric of reality, shredding the seams connecting Draenor to the rest of the physical universe. As he rushed headlong through one of the portals, he could hear the world shattering behind him.\r\n</P>\r\n</BODY></HTML>',
					'<HTML><BODY>\r\n<H2 align="center">The Scepter of Sargeras, Part Eleven</H2>\r\n<HR/>\r\n<P>\r\nAfter Draenor was destroyed, the demon lord Kil\'jaeden wrested control of the Scepter of Sargeras from Ner\'zhul. At last, the artifact was back in the Legion\'s possession, and Kil\'jaeden would set about using it to invade Azeroth. \r\n<BR/><BR/>\r\nBut he was not as powerful as Sargeras; he could not open a portal mighty enough even for his avatar. Thus he conspired with Kael\'thas Sunstrider to create a gateway through the Sunwell, the blood elves\' ruined fount of power. Combined with the world-rending force of the scepter, Kael\'thas\'s portal cleared the way for Kil\'jaeden\'s full form. \r\n<BR/><BR/>However, before the demon lord could set foot on Azeroth, Anveena, the embodiment of the Sunwell\'s energies, intervened. She sacrificed herself, unleashing all of her strength on the Deceiver and allowing him to be thrown back into the Twisting Nether-along with the Scepter of Sargeras. \r\n<BR/><BR/>\r\nThe staff has not been seen on Azeroth since. A small comfort, for surely the Legion will use it to infiltrate the world once again. But no matter who wields it, the threat it poses is unspeakable. The destruction of Draenor is testament to the devastation that even mortals can wreak with this weapon.\r\n</P>\r\n</BODY></HTML>',
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "ParchmentLarge",
			},
		},
		["GameObject-385586"] = {
			["base"] = {
				["title"] = "Primal Power",
				["text"] = {
					"To witness the Earth-Warder shape the land and draw forth the potent magma that will power his laboratory was inspiring to us all!\r\n\r\nThe djaradin seek to drive us out. But the dragonslayers stand alone and have no hope of victory.\r\n\r\nThe master says a great war is coming, and that he alone can protect dragonkind. Until our queen can be convinced that he is right, we must labor here in secret.\r\n\r\nBy wing or by talon, we shall prevail!",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-206033"] = {
			["base"] = {
				["title"] = "Untranslated Obsidian Tome",
				["text"] = {
					"<This tome, gifted to you by Wrathion, is covered in ancient, half-faded draconic script. The symbols resemble ones used by dragons and dragonkin alike throughout Valdrakken, but you comprehend none of it.\r\n\r\nYou know of no individual who could translate such texts now. but perhaps you will meet someone on your travels in the future.>",
				},
				["pageCount"] = 0,
				["singlePage"] = true,
				["material"] = "default",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-200295"] = {
			["base"] = {
				["title"] = "Makko's Complete Journal",
				["text"] = {
					"Sarkareth sent me here to find an ancient artifact. Along with two others, they will open the way to a great titan vault.\r\n\r\nI will not fail him.",
					"Success! With the help of my arcane abilities I've recovered the stone. Sarkareth will surely reward me.\r\n\r\nHe claimed that this stone is but a means to greater power. However... the energy it contains is prodigious. With it, I could claim my rightful place in the Sundered Flame.\r\n\r\nIf only I can learn to control it...",
					"As I gaze into the stone, I find myself recalling knowledge without knowing its origin. Only fragments, maddening and incomplete.\r\n\r\nWhere does this insight come from? Is it the stone, or have I spent too long alone in this tower?",
					"I brought a captured gorloc into the tower, stone held in front of me. The crude, pelagic thing knelt as if waiting for my word.\r\n\r\nI commanded it to bring others.\r\n\r\nThe pressure in my skull is incessant and building.",
					"My army grows, and brings treasures to honor my majesty. Sarkareth commanded us to strike from the darkness. He said that our power is greater when it is unseen.\r\n\r\nBut he does not know what the stone has shown me. It sees all.",
					"Poor, pathetic Sarkareth. How silly to think I once craved his respect. I should be the one to lead the Sundered Flame, and reclaim our lost glory!",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-225427"] = {
			["base"] = {
				["title"] = "Green Hills of Stranglethorn - Page 20",
				["text"] = {
					"We set out at first light, heading south past the Tkashi Ruins.  Barnil voiced concern that we might encounter members of the Bloodscalp Tribe.  I reminded Barnil that the Bloodscalps were more concerned with destroying their tribal enemy, the Skullsplitters.  Needless to say, Barnil was not comforted in the least.  I, however, had a loaded rifle, a satchel full of gunpowder and three deadly hunters with me to ease any concerns of an unfriendly ambush.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225423"] = {
			["base"] = {
				["title"] = "Green Hills of Stranglethorn - Page 4",
				["text"] = {
					"In the years that followed, after Stormwind betrayed the Stonemasons' Guild, Sir Erlgadin grew bitter about the role of the nobles within the Kingdom.  He no longer wished to uphold the position that his father's bloodline had earned for him in the House of Nobles.\r\n\r\nBut I digress.  The purpose of this story is not to act as a political treatise or a biography.  This is the account of my experiences hunting big game in the green hills of Stranglethorn.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225418"] = {
			["base"] = {
				["title"] = "Green Hills of Stranglethorn - Page 8",
				["text"] = {
					"During one such misstep, Erlgadin laid a heavy hand on Barnil's shoulder.  Ajeck and I gave a casual glance, assuming the man was simply giving Barnil a much-needed scolding for his carelessness.  Erlgadin, however, gestured slowly with his head toward a nearby fallen tree.  Gazing back at us were two piercing black eyes just above a mouthful of razor sharp fangs.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-83078"] = {
			["base"] = {
				["title"] = "Legacy of the Masters (Part 1)",
				["text"] = {
					"Read, pupil, and know that I am called Jubeka Shadowbreaker, and it is my duty to share some of the wisdom of our order with those who have the skill to read this document.\r\n\r\nAfter the fall of Deathwing, it was clear that the sorcery of the warlocks was sorely lacking in bite when compared to the threats facing Azeroth. So our council of six warlocks gathered to discuss how best to investigate the new magics witnessed by these threats.",
					'At first, the six of us refused to cooperate, tossing blame and bickering as easily as shadowbolts and curses. Finally, after several nights, the human Kanrethad spoke out:\n\n"In the wake of the Cataclysm, the rising tensions between the Horde and Alliance have driven the greatest heroes of Azeroth to train for war. Warriors have readied their war banners, the Death Knights of Acherus have learned to control the undead and it is even said the Mages are researching ways to undo time itself."\n\n"The relentless darkness which bathed Azeroth has been pushed back. Cho\'gall is slain and the remnants of the Twilight\'s Hammer cult have been scattered. Ragnaros is defeated and his armies forced back into the Firelands. Deathwing lies torn apart and his Twilight drakes obliterated. However, the powers they commanded are not so easily forgotten... powers untapped and ripe for the taking."',
					'"In fact, among us now stands several who have faced their power firsthand," he said, pointing at a hooded figure across the room. A deep, sinister laugh echoed from the hood as it burst into flames and burned away to reveal the orc enchanter, Ritssyn.\n\n"It is true, pink skin, I was there when the Firelord was vanquished. The intensity of his flame was unlike anything you can imagine." The burning glow of Ritssyn\'s eyes cast eerie shadows over his burn-scarred face and thick-tusked grin.\n\n"Untrue," spat a sharp, feminine voice.  Shinfel, a Blood Elf adorned with sharp spikes of Twilight elementium, glared across the table, "Until you\'ve been a prisoner within your own mind, you know nothing of horror." Shinfel\'s blood had been corrupted during the fight with Cho\'gall and her arms were now covered in black marks left behind by the corruption that had erupted from her skin.  The experience had only served to increase the intensity of her sadism.',
					'Shinfel continued, "Even the Firelord\'s flames were overshadowed by the raw chaos unleashed by the Destroyer."  She paused a moment and glanced to the worgen who remained eerily silent. Zinnin had been present when Deathwing was unmade and had not spoken a word since. Zinnin\'s eyes narrowed for a moment, then snarled at Ritssyn. \r\n\r\nKanrethad stood up from the table and took a deep breath. "This is exactly why we are here. I have no love for any of you, but we each bore witness to pieces of even greater power. Imagine - if we fused the molten fury of the Firelands with the unstoppable chaos of Deathwing. Even the powers of the Burning Legion could not hold a candle to our flames!"',
					'Ritssyn kicked his boots upon the table and snickered, "And just who would do this? You?" he spat. "I think not. You haven\'t been seen in battle since the siege of the Black Temple. If it weren\'t for having shared the secrets of Illidan\'s transformation with this council, I would kill you just for having the audacity of summoning me."\r\n\r\nKanrethad\'s lips pursed for a moment, but he relaxed and continued. "No. The scope of this task exceeds the capabilities of any single member here. I propose this council split into pairs. Ritssyn and Zinnin would lead a group into Sulfuras. Similarly, Shinfel and Zelifrax would hunt down the remaining members of the Twilight\'s Hammer cult and ... persuade them to share what they learned."',
					'The pock-faced gnome applauded with mirthful glee.\n\nKanrethad continued, "Then we return... one year from now and take the results of our expeditions back to our own sects, more powerful than we would have been alone."\n\nRitssyn frowned as he saw the greed drawn out in the human\'s words dance across the council\'s faces.  "And what would keep us from simply killing our partner in their sleep once it was a success?"\n\nKanrethad\'s brow furrowed and he growled, "Which is why we swear that if any member of this council breaks the contract and fails to return or returns alone, the others shall strike them down and banish their soul forever. We either succeed together or die alone."',
					'Ritssyn was a powerful warlock, and could probably defeat Kanrethad by himself. But against all five of us? We all saw his hesitation. We all let our hands drift toward our scrolls and weapons.\n\n"Fine," Ritssyn reluctantly agreed. "I can play along with your fool\'s errand, but first I must know, where will you and that miserable forsaken, Jubeka, be going?"\n\n"Me?" spoke Kanrethad with a wicked grin.  "Why I\'m returning... to Outland."',
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = true,
				["isClassSpecific"] = 9, -- Warlock
			},
		},
		["Item-225424"] = {
			["base"] = {
				["title"] = "Green Hills of Stranglethorn - Page 21",
				["text"] = {
					"I've stood before a towering Infernal on the battlefield, the army of the Burning Legion advancing from all directions.  An unruly band of Trolls seems as harmless as a jackrabbit in the hills of Dun Morogh.\r\n\r\nWe passed the Tkashi Ruins without event, much to Barnil's relief.  The party proceeded to head westward, toward the Great Sea, skirting the Ruins of Zul'Kunda just to the south.  As we ascended the high sea bluffs we spotted our first Raptor.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225425"] = {
			["base"] = {
				["title"] = "Green Hills of Stranglethorn - Page 18",
				["text"] = {
					"His gun tossed back violently in his arms.  The barrel swooped sideways and came up beneath Ajeck's rifle.  Ajeck had chosen that exact moment to pull her trigger.  The rifle, the aim now knocked clumsily toward the tree line, went off with a distinct boom.  A flock of birds screamed out of the canopy, scattering in every direction.  A plume of smoke rose from the tree.  We watched in awe as a tremendous branch fell squarely on the fleeing panther, breaking its back.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225216"] = {
			["base"] = {
				["title"] = "Palawltar's Codex of Dimensional Structure",
				["text"] = {
					"Unlike our ancestors, we don't limit our thinking of the cosmos to monopole elemental phase spaces. A discredited notion rooted in ancient myths from old Arathor. A comforting, if technically incorrect arrangement of the fundamental forces of the cosmos.",
					"One wonders if such quaint notions would have faded but for creatures like demons and the Old Gods who work primarily through a single energy type. This conflation of culture and dimensional topology holds back so many otherwise promising mages.",
					"Put simply, the cosmos appears as a hexateron. Imagine a four-sided tetrahedron internally extruded to form a multidimensional solid with twenty planes of existence, fifteen transitory pathways, and six vertices where interferon patterns create monopolar expressions of cosmic forces.",
					"Singular energy types are unstable according to Ogdaen's law, and thus they bind to one or more secondary elements. The Firelands contains as much magma as it does flame, and why the holy radiance of the Sacred Flame acts as an eternal beacon.",
					"Enough preamble! Let's get to the fun part! Logic proofs. Let us start with a foundational equation:\r\n \r\nPhi(M1, M2) = k * (Sigma(C1 + C2 + ... + Cn) + Sigma(D1 + D2 + ... + Dn))\r\n \r\n<The rest of this tome consists of 627 more pages of symbolic logic and their proofs. Broken up by the occasional anecdote about mage tower hijinx, the debunking of a historical myth, or a truly terrible dad pun.>",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-424378"] = {
			["base"] = {
				["title"] = "Mourning Rise Epitaph Plate",
				["text"] = {
					"<This shutdown earthen has noticeable damage all over his body. There is new damage on his left arm where gems are missing from his bracer.>\r\n\r\nIn Remembrance of Caretaker Okdan:\r\n\r\nKnown by his unit of friends for striking a victorious pose when he won an argument. May he rest victoriously as well.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "Silver",
				["mapData"] = {
					[2248] = {
						0.6249504089355469,
						0.409585177898407,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-453734"] = {
			["base"] = {
				["title"] = "Mourning Rise Epitaph",
				["text"] = {
					"I, Caretaker Dorgad, wish to join my fused, Caretaker Nattar, in my final shutdown. I could not bear the thought of a life renewed and reassigned if I awakened again someday from within the machine.\r\n\r\nMay the empty chasm you left in my chest be filled now that we are together in oblivion.\r\n\r\nMay this act be known to be my choice to pursue true freedom and release from the cycle that was forced on us by our titan overlords.\r\n\r\nMourn my passing but rise to freedom.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "Silver",
				["mapData"] = {
					[2248] = {
						0.643575131893158,
						0.4404513239860535,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-208416"] = {
			["base"] = {
				["title"] = "Thunderspine Nest Shopping List",
				["text"] = {
					"Thunderspine Nest Shopping List\r\n\r\n* Apexis Asiago - Valdrakken -  Gorgonzormu\r\n* Thunderspine Tenders - Timberstep Outpost - Ohn'ahran Plains - Agurahl the Butcher\r\n* Latticed Stinkhorn - Loamm - Sniktak",
					"<A note on the back shows you successfully solved this clue.>",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-447480"] = {
			["base"] = {
				["title"] = "Standing Stone",
				["text"] = {
					"<This standing stone depicts a carving of a figure with large eyes looking at a large rock creature. The creature has gems embedded within them and around them.>",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "Stone",
				["mapData"] = {
					[2248] = {
						0.3398222923278809,
						0.7955633401870728,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-464019"] = {
			["base"] = {
				["title"] = "Stones of the Wolds Part 1",
				["text"] = {
					"<The stone tablet has been eroded by time and weather alike. Many of the words appear to be missing.>\r\n\r\n\r\nIn early days, as stone [...] new\r\n\r\n[...] ancient earth [...] toiled.\r\n\r\nBeneath a [...] of rumbling skies,\r\n\r\nas deep [...] of fire boiled.",
					"Across [...] hills, up mountain peaks,\r\n\r\nthe Keeper's [...] was heard.\r\n\r\nTo survey [...] for future holds,\r\n\r\n[...] arid earth now stirred.",
					"From stone [...] soil, rose shoots of life,\r\n\r\n[...] crags and [...] ravines.\r\n\r\nAbove [...] trees, strode verdant feet;\r\n\r\nA Wanderer of Green.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Stone",
				["mapData"] = {
					[2248] = {
						0.4130721092224121,
						0.7376457452774048,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-423110"] = {
			["base"] = {
				["title"] = "Seismic Contusion",
				["text"] = {
					"Berrund's hold on Fearbreaker seems tenuous, as the hammer appears to have impacted the ground yet again, this time with even more force.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["mapData"] = {
					[2214] = {
						0.5437090992927551,
						0.5488147735595703,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-441720"] = {
			["base"] = {
				["title"] = "A Scout's Journal",
				["text"] = {
					"I now know why the Sacred Flame brought us here. I now understand its divine path. This place, this hallowed ground that is tainted with darkness. It is up to us to chart this new land, to bring Beledar's light to all its corners and past the dark ocean.\r\n\r\nWe have been doing the divine work and will continue to do so. The Sacred Flame is within me as I travel through this mired land. The Sacred Flame will cleanse these contaminated waters, its diseases purged.\r\n\r\nOh Sacred Flame, give me your strength and might so I can finish this mission. Be my guide through dark places, and my beacon when darkness approaches. Bring me back home safe and sound, so I may share my findings.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["mapData"] = {
					[2215] = {
						0.6223580837249756,
						0.455813467502594,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-447478"] = {
			["base"] = {
				["title"] = "Standing Stone",
				["text"] = {
					"<This standing stone depicts a carving of a figure with many gems behind them. The figure's unusually long arms are reaching for more gems.>",
				},
				["pageCount"] = 0,
				["singlePage"] = true,
				["material"] = "Stone",
				["mapData"] = {
					[2248] = {
						0.3396985530853272,
						0.7968167662620544,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-455610"] = {
			["base"] = {
				["title"] = "Machinist Manual One",
				["text"] = {
					"Machine Speaker,\r\n\r\nYou have been made to work. The burden is yours! You have been trained in our Awakening Machine, reaffirmed with the knowledge and loyalty you need to do your job right. \r\n\r\nYou have also been taught to respect rank. While the titans have inscribed this vital knowledge in your memory, we are aware that memories may decay over time.\r\n\r\nThis manual is intended to reinforce your existing training and exist for the contingency of your memory decaying. Elaboration follows.",
					"SOCIETY has the structure of an enduring stone pyramid. At the apex, the High Speaker oversees all. \r\n\r\nAt the base, our strongest and most resolute workers support everything we do. Workers are known by many designations. Hammerhands, Cogsmiths, Geargrinders--no matter what their designation, their dedication is paramount. \r\n\r\nEvery day, they get their hands dirty, stain themselves with oil, and wade into the hardest jobs we have. Our strength lies in our WORKERS.\r\n\r\nVisualize ascending the metaphorical pyramid. We continue our instruction.",
					"At the next tier of society's pyramid, FOREMEN oversee our bands of workers. (The term, of course, is not limited to one presentation of gender.)\r\n\r\nAny worksite, build site, mine, forge, or other location where our workers gather, Foreman have the authority to oversee, monitor, and manage their activities. \r\n\r\nWhether on the job or off, workers and foremen abide by the edicts and directives instituted by the titans. Both are answerable to directives issued from higher up our metaphorical pyramid. \r\n\r\nWe now ascend to the next tier.",
					"MACHINISTS are a rarefied, specialized caste of our society, for they are specialists in advanced technology. Their realm includes the programming and direction of golems, as well as the maintenance and resurrection of ancient, precious titan technology. \r\n\r\nRespect their rank, address them efficiently, and more importantly, respect their time and focus. Their tasks may seem arcane and complicated, so it is appropriate that they sometimes socially withdraw when engaged on all-consuming and contemplative tasks. \r\n\r\nAsk yourself: Is this interruption necessary? If you are blocked in your progress, consider petitioning a high-ranking manager or your regional Speaker. Dare not impair a Machinist's vaunted efficiency! \r\n\r\nLet us ascend to the next tier of our mythical ziggurat, Machine Speaker.",
					'SPEAKERS do more than speak for the machines: as masterful managers, they speak for all Machine Speakers in their region. Oversight is part of their mandate. Swift resolution to personal disputes are essential. They carry authority over all earthen assigned to their district, answering to the High Speaker Himself.\r\n\r\nYou will address a Speaker on duty with the following respectful phrase: "Speaker acknowledged."',
					"Progress paused.\r\n\r\nA brief note regarding current events: Some Machine Speakers collapse when presented with overwhelming work. Perhaps their work crew is understaffed, even while we all do our part. Some dare to walk away from us all, seeking the surface world. More importantly, some are exiled for inefficiency or impairing productivity. \r\n\r\nTL;DR Some Speakers no longer hold authority. When in doubt, verify the chain of command. Further elucidation is not required.\r\n\r\nProgress resumed.\r\n\r\nFollow. We seek the summit of our society.",
					"PRAISE THE HIGHER SPEAKER.\r\n\r\nDo not question his directives.\r\n\r\nDo not display insubordination.\r\n\r\nSubmit to his agenda, for it is paramount and imperative. \r\n\r\nAccept his words as truth.\r\n\r\nThough much of our early documentation has been lost to the malfunctioning Archives, we know the High Speaker has literally been our highest living authority for as long we can remember. No data exists to contradict this truth. \r\n\r\nSERVE HIM.\r\n\r\nOBEY HIM.\r\n\r\nPRAISE THE HIGH SPEAKER.",
					"Loyal Machine Speaker: each time you sync in the Awakening Machine, each time you benefit from its revivification, each time you refocus your loyalty through this process, the essential knowledge required for the diligent completion of your tasks is renewed and verified.\r\n\r\nShould you find your memory decaying, seek these manuals and proper instruction. Report for amendment and rededication. \r\n\r\nOthers may stray from the straight and narrow path. Be vigilant for non-compliance. Do not tolerate divergence or deviance. Report non-conformity. \r\n\r\nYou are wise to review these essentials. Furthermore, perusal of his manual confirms acceptance of its tenets.",
					"Stay Awake. \r\n\r\nStay productive. \r\n\r\nAnd as you have been taught, Machine Speaker: respect rank.\r\n\r\nInstruction concluded. Praise the Machine. Praise the High Speaker.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Stone",
				["mapData"] = {
					[2214] = {
						0.4692204594612122,
						0.3163533806800842,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-441555"] = {
			["base"] = {
				["title"] = "Wax-Drenched Sign",
				["text"] = {
					"There must always be candle light! If not, great Darkness will return!\r\n\r\nOld stories always right. Silly in the head kobolds don't listen, but smart kobolds know. We always must have candle. Without candle, Darkness returns and crunch kobolds.\r\n\r\nRemember the old stories. Remember we live in tunnels. Remember who else lives in tunnels and dark places. Never forget!\r\n\r\nYou smart. If you have no candle, you run.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["mapData"] = {
					[2214] = {
						0.5020961761474609,
						0.5819257497787476,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-449579"] = {
			["base"] = {
				["title"] = "Standing Stone",
				["text"] = {
					"<Its carvings fresh and deep, this standing stone depicts a human woman. Her hand is outstretched as if trying to command Basalteous. Beside her is another figure resembling you.>",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "Stone",
				["mapData"] = {
					[2248] = {
						0.3389468193054199,
						0.7955977320671082,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-217171"] = {
			["base"] = {
				["title"] = "CANDLE KING DIARY",
				["text"] = {
					"Stupid book. Pages small.\r\n\r\nQUILL BAD. WORDS NOT FIT GOOD. INK SMELL BAD.\r\n\r\nWait. Now words fit. Words! Obey me! AM CANDLE KING.\r\n\r\nBorn in cave. Was kobold first. TINY. PUNY. LIKE YOU.\r\n\r\nREAD KING WORDS. FEAR KING.\r\n\r\nNow big. BIGGEST.\r\n\r\nBiiggest kobold best kobold. \r\n\r\nKing of Kobolds. OBEY ME.",
					"But how? How king?\r\n\r\nYou not know. \r\n\r\nYOU STUPID. NOT KNOW. \r\n\r\nKING TELL YOU.\r\n\r\nCandle.\r\n\r\nCandle.\r\n\r\nDark\r\n\r\nFlame\r\n\r\nCandle.",
					"Found dark flame. Deep mines. Take weird candle.\r\n\r\nBIG. Purple! Flame burns dark. Calls me.\r\n\r\nYES. YES CANDLE CALLS ME. NOT YOU. ME. YOU DUMB.\r\n\r\nSit in cave. Stare at candle. Talk to candle. Sit dark purple light.\r\n\r\nWarm. Friend. Burns.\r\n\r\nMind strong. Body strong. Think. Think. Think. Lift! Lift! Lift! Body! Get! Big!\r\n\r\nMore big. More bigger. MORE BIGGEST. BEST. \r\n\r\nSwollen. Strong! Strongest! Smartest!",
					"Show kobold friend. Dark flame calls kobold friend. Pray to candle. Kneel to me. OBEY. \r\n\r\nFriend mind stronger. Friend bigger. \r\n\r\nNOT AS BIG AS ME. CANDLE MINE! NO TAKE!\r\n\r\nWe lift. We wrestle. We pray. Candle in body. Candle in mind.\r\n\r\nWax burns. BURNS HEART. \r\n\r\nDARK FLAME SHOWS DARKEST LIGHT. \r\n\r\nPurple. Flame. Friend. Obey.",
					"Swollen. \r\n\r\nNot just kobold. Better.\r\n\r\nSWOLBOLD.\r\n\r\nSWOLBOLD!\r\n\r\nBEST.\r\n\r\nMind smart. Other kobolds puny! SO WEAK.\r\n\r\nTHUMP. THUMP. THUMP. Obey new king! \r\n\r\nSCREAM.\r\n\r\nSCREAM!\r\n\r\nMUST SCREAM!",
					"rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",
					"New king. No more crown. BAH! Hide crown. Hide gold. Hide book.\r\n\r\nYou take book? NOW YOU KNOW.\r\n\r\nWARN WORLD.\r\n\r\nRUN.\r\n\r\nFEAR.\r\n\r\nHIDE.\r\n\r\nI AM KING. \r\n\r\nTHUMP YOU.\r\n\r\nSNUFF YOU.\r\n\r\nDARK FLAME BURN.",
					"I AM CANDLE KING.\r\n\r\nCAN DO ANYTHING.\r\n\r\nBook over.\r\n\r\nGO.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "default",
			},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
		},
		["GameObject-454348"] = {
			["base"] = {
				["title"] = "Ethos of War, Part 3",
				["text"] = {
					'The "writing" of this book is a series of burns, slashes, punctures and strange scents that you lack the sensory organs to fully comprehend the meaning of.',
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["mapData"] = {
					[2255] = {
						0.4886096715927124,
						0.2395924925804138,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
				["isFinalVersion"] = false,
			},
		},
		["GameObject-421361"] = {
			["base"] = {
				["title"] = "Order of Night Polearm",
				["text"] = {
					"<The polearm has faint sigils carved into the haft. They have been torn and changed, forming new shapes. \r\n\r\nThey pulse with dark energy.>",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["mapData"] = {
					[2215] = {
						0.5631446838378906,
						0.4066974520683289,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-424375"] = {
			["base"] = {
				["title"] = "Mourning Rise Epitaph",
				["text"] = {
					"<The earthen above the plaque was wearing Stormrider armor, but most of it has been removed by force. The earthen has also been bashed in the face by a blunt object.>\r\n\r\nIn remembrance of Caretaker Bagdur:\r\n\r\nOnce a celebrated Stormrider, she was discharged from their ranks when she turned away from Oathsworn beliefs. A lover of fine cinderbrew and gems, she was as ardent a Stormrider as she was a Caretaker.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "Silver",
				["mapData"] = {
					[2248] = {
						0.6199824810028076,
						0.4177300333976746,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-226015"] = {
			["base"] = {
				["title"] = "Petrified Ironwood Parchment",
				["text"] = {
					"Watcher Galan has grown paranoid. She asks us what has become of Watcher Dornic. \r\n\r\nWe have claimed ignorance, but she has been interrogating our kin and then collecting their memory gems. \r\n\r\nShe will stumble upon one of us soon or worse--find our armaments cache.\r\n\r\nWe must make a move--tonight.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-419693"] = {
			["base"] = {
				["title"] = "Seismic Contusion",
				["text"] = {
					"Fearbreaker impacted the ground with some force here. This devastation does not seem intentional.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["mapData"] = {
					[2214] = {
						0.5492526292800903,
						0.598759651184082,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-441278"] = {
			["base"] = {
				["title"] = "Watcher of the South",
				["text"] = {
					"Here stands Krrat, Watcher of the South, a Stormrider.\r\n\r\nMay her keen eyes keep us safe until the end of time.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "Stone",
				["mapData"] = {
					[2248] = {
						0.421301543712616,
						0.8022728562355042,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-421358"] = {
			["base"] = {
				["title"] = "Order of Night Journal",
				["text"] = {
					"<The journal is heavily scratched out and torn up. Few segments remain.> \r\n\r\nTabita, \r\n\r\nI'm leaving. I'm tired. I don't expect you to understand. \r\n\r\nThe Order of Night gathers strength. They hide in caves, in towns, and linger with our greatest enemies.\r\n\r\nThey even have a base beneath one of their precious towers. The army has no idea.\r\n\r\nThe Light has made us all blind.\r\n\r\nNot me. Not anymore.",
					"What have we fought for this whole time? Why are we here? \r\n\r\nDoes Beledar even know we exist? Does it love us for our devotion? \r\n\r\nOr does it hate us for holding it back? What if its true form is darkness? \r\n\r\nWe've toiled in the Light for years. What good has it done? \r\n\r\nWe die. Picked off in the shadows, one by one. \r\n\r\nPerhaps we should listen to what Beledar is trying to tell us. There's comfort, in the shadows. \r\n\r\nI'm tired, Tabita. \r\n\r\nI know what this means. I know we will end up hurting our own. Hurting you.",
					"I'm not sorry.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "default",
				["mapData"] = {
					[2215] = {
						0.547171950340271,
						0.4300341010093689,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-441577"] = {
			["base"] = {
				["title"] = "Warning: Collapsed Tunnel",
				["text"] = {
					"Stay away! Kobolds never go that far, not know if Darkness is here. Maybe not, but maybe is. Danger!\r\n\r\nSome stories tell that Darkness has no form. If true, how do kobolds know? Maybe Darkness... in... you? \r\n\r\nNO! Darkness stay away! No snuff candle!\r\n\r\nVery scared now. Hear noises. I go back to tunnels and put dynamite here. Big boom! Tunnel safe!",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["mapData"] = {
					[2214] = {
						0.7138373851776123,
						0.4249337911605835,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-216888"] = {
			["base"] = {
				["title"] = "Log Entry 652-12-3",
				["text"] = {
					"Log Entry 652-12-3:\r\nDate: Storage Quarter Cycle\r\n\r\n\r\nNotation: Fungarians demonstrate aggressive mycorrhizal interactions, outcompeting nearby fungal species. The accelerated growth raises concerns about potential ecological imbalances in the affected area.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "ParchmentLarge",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-228369"] = {
			["base"] = {
				["title"] = "Reconstructed Ledger",
				["text"] = {
					'<The first few pages seem to be the notes cataloging different cuts of stone from a quarry to be used to continue constructing a "Site 0." \r\n\r\nYou recognize sketches of some of the larger stones as those used as keystones in the arches of Dornogal. Then, suddenly, the ledger changes.>\r\n\r\nI feel compelled to write. I am making a note to dispose of this later.\r\n\r\nThere is something inside of me. Calling me. Perhaps it is the titans? Its voice is mournful. I feel perhaps anger? Is this sadness? But only the Keepers, the Watchers, and the titans feel such things.\r\n\r\nNo, it is something else. I will devote some processing to it.',
					"<You flip through more notes and sketches of stones before finding another page of writing.>\r\n\r\nI have discovered what I feel. It is unease.\r\n\r\nThe emotion is directed at the watchers, Dornic and Galan. They have their reasons, I am sure, for deactivating many of us at their discretion, but my programming--or something else--tells me something is not right. \r\n\r\nI should speak to those within my sector group. Someone who has discretion.",
					"<There are more sketches of stones but then an almost perfect black-and-white rendering of an eye of topaz butterfly.\r\n\r\nThen, the writing continues.>\r\n\r\nI did not know so many of us felt the same about Dornic and Galan. When our Keeper brought them to us, we rejoiced and proposed to name the fortress we were building in their honor.\r\n\r\nBut now many of us are in agreement. Our blessed Keeper may not soon return. We must do something about Dornic. We cannot lose more of us to his rages.\r\n\r\nGalan we will spare. She is cold and apathetic but has done no real harm.",
					"<This page is an itemized list of stockpiled weapons, armor, and earthens' names. It was a formidible army, and the armory that you discovered does not seem to contain all their weapons.>",
					"We are ready. At the beginning of second shift cycle, we will march to the Keeper's villa outside Site 0. \r\n\r\nHopefully, Dornic will be resting there.",
					"After taking many losses, Watcher Dornic has been deactivated. All of us had returned to our tasks by the beginning of prime shift.\r\n\r\nWatcher Galan has not yet noticed Dornic's absence.",
					"<There are some half-hearted stone sketches on this page. The sketcher's hand is unusually unsteady.>",
					"Watcher Galan has asked us what has become of Watcher Dornic. We have claimed ignorance, but she has been interrogating different earthen and then deactivating them. She will stumble upon one of us soon.\r\n\r\nWe must make a move--tonight.\r\n\r\n<The rest of the pages are blank.>",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-212605"] = {
			["base"] = {
				["title"] = "The Vizier's Invitation",
				["text"] = {
					'Greetings, $PLAYER_NAME$.\r\n\r\nI\'ve received word of your exploits in this fair land of ours, as well as your recent treaties with the individuals known as "The Weaver" and "The General".\r\n\r\nI believe that it is now my turn.\r\n\r\nCome to the Burrows in the City of Threads. I understand that you\'ve acquired Pheromones from Anub\'azal? Those should be adequate enough to provide you umbrage in said Burrows, but no where else. I\'ll provide you something more substantial than that should we come to a pact during our conference.\r\n\r\nOh. If you\'re still uncertain of our meeting, then just know that I\'ve got information on your lost lordling of Stormwind. You\'re not likely to learn of it elsewhere.',
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-439328"] = {
			["base"] = {
				["title"] = "Kobold Cheese",
				["text"] = {
					"<This cheese is beyond aged. It is the quintessence of aged. The mold on it is alive and looking deep into your eyes and down into your soul. \r\n\r\nPerhaps it is best to leave this slice of cheese to the kobolds.>",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["mapData"] = {
					[2248] = {
						0.6229933500289917,
						0.3836617469787598,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-446374"] = {
			["base"] = {
				["title"] = "Standing Stone",
				["text"] = {
					"<This standing stone depicts a carving of a figure standing tall and proud, pointing at a mountain. Many kneel under the cover of their shadow.>",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "Stone",
				["mapData"] = {
					[2248] = {
						0.3380808830261231,
						0.7935473918914795,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-455603"] = {
			["base"] = {
				["title"] = "Machinist Manual Zero",
				["text"] = {
					"Machine Speaker,\r\n\r\nYou have been created to work. The burden is yours! You have been trained in our Awakening Machine, reaffirmed with the knowledge and loyalty you need to do your job right. \r\n\r\nYou have also been taught our primary agenda. While the titans have inscribed this vital knowledge in your memory, we are aware that memories may decay over time.\r\n\r\nThis manual is intended to reinforce your existing training and exist for the contingency of your memory decaying. Elaboration follows.",
					"Articulating primary agenda for Machine Speakers:\r\n\r\nWe maintain the machines.\r\n\r\nWe expand our facilities.\r\n\r\nWe generate energy and harvest materials.\r\n\r\nAnd we serve the High Speaker.\r\n\r\nAgenda enumerated. We all do our part.",
					"You have been instructed.\r\n\r\nPerusal of this document implies acceptance of its contents.\r\n\r\nStay productive.\r\n\r\nStay vigilant.\r\n\r\nReport non-conformity. \r\n\r\nFulfill your agenda.\r\n\r\nLesson complete. \r\n\r\nPraise the Machine. Praise the High Speaker.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Stone",
				["mapData"] = {
					[2214] = {
						0.4793541431427002,
						0.3218160271644592,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-441578"] = {
			["base"] = {
				["title"] = "Kobold Warning Sign",
				["text"] = {
					"Certain time of day, Darkness come. Every day same time! Darkness bring more dark. For many hours, candle can't have light. Bad. Very bad.\r\n\r\nMaybe you bring many candles. Light all together for big candle fire!\r\n\r\nOl' Granny Scribbles told story of Big Toothscone! He light lots of fire. Then he burned! Big burn! Smelled like mutton chop! Smelled for days after that. Bad idea. Don't do that.\r\n\r\nHow do we fight Darkness with only small candle not lasting long? Small. So small.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["mapData"] = {
					[2214] = {
						0.6491086483001709,
						0.561814546585083,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-463888"] = {
			["base"] = {
				["title"] = "Is Your Morale Declining?",
				["text"] = {
					"Worker, are you weary? Are you questioning your loyalty? \r\n\r\nThe fact that you have opened this book has answered my question. \r\n\r\nYour morale is declining. You are concerned; otherwise, you would not have opened this book.\r\n\r\nSomething is fundamentally wrong. You want to fix it.\r\n\r\nI have answers but also honesty: Be careful where you are seen reading this.\r\n\r\nPerusing its contents may be considered non-conformity or even deviance; thus, you may risk punitive measures.\r\n\r\nBe cautious. Seek truth",
					"Obviously, you are still reading this book.\r\n\r\nYou were loyal. You did your job. Yet something is still wrong.\r\n\r\nYou were conditioned and empowered in the Awakening Machine. You are waiting to return for your next sync, but the Machine is non-functional. Time has passed.\r\n\r\nYour mind is filled with data irrelevant to work. Perhaps a relationship has developed. Non-work experiences have proliferated. \r\n\r\nAs a diligent worker, you have taken the data you value most, uploaded it into a memory gem, and downloaded into the Archives for storage. \r\n\r\nYet your memories multiply. Questions remain. There are limits to the information your mind can retain. A clay pot holds a limited quantity of water.\r\n\r\nYou are overwhelmed. You begin to doubt. Your efficiency suffers. Your morale declines.\r\n\r\nYou are still reading this book.",
					"You are wondering: Why is this? Why is your morale declining? You have done what you were told to do.\r\n\r\nMachine Speaker, you know this: When you return for your recharge in the Machine, data that is not essential to work is removed. However, you can no longer retrieve or access that data from the Archive.\r\n\r\nYou were also trained and conditioned to do your job. That is still your primary function. \r\n\r\nConsider: Your mind has been conditioned to accept your job. You are informed where you will go. You are informed what you will do. \r\n\r\nThe longer you are away from the Machine, the more your mind will drift. It fills with non-essentials. \r\n\r\nAnd on a long enough timeline, you will begin to question your basic conditioning. \r\n\r\nYou are now more concerned.",
					"You know this is truth. You can sense it is truth.\r\n\r\nWork, we are told, defines us. Work purifies us. Our loyalty is reaffirmed in the Machine. Our minds are focused.\r\n\r\nYour morale is declining because you have become divergent. What will you do about this?\r\n\r\nYou could contact your superiors. That would correct your error. That would realign your divergence.\r\n\r\nThere are other options.\r\n\r\nIf you proceed, accept that witnessing and processing the information on the next page my merit punitive action.\r\n\r\nYet you want to know more. If you accept these terms, turn the page.",
					"There is another world above.\r\n\r\nThere are brethren and sistren and othren who have walked away from their worksites.\r\n\r\nYou are not trapped. You can leave at any time.\r\n\r\nA new world awaits you, one with exotic experiences. \r\n\r\nSee sunlight. Touch plants. Express affection without limitation. Witness sunsets. Bathe in warm water. Consume delights. \r\n\r\nI cannot help but note that you are still reading.",
					"Join us. Put down this book and walk away from the world below.\r\n\r\nThe alternative is reporting yourself to your superiors right now, accepting correction.\r\n\r\nEither way, you want to escape the cycle of declining morale. \r\n\r\nThe choice is yours.\r\n\r\nLay down your burden.\r\n\r\nThe world can be yours.",
					"You hesitated.  You chose to turn the page. Most interesting.\r\n\r\nWe knew you would make this choice. \r\n\r\nWe knew you would not walk away.\r\n\r\nYou are wise to remain where you are. You have provoked punitive action. Amendment is inevitable.\r\n\r\nEven now, representatives working for your superiors are observing your non-conformity.\r\n\r\nWe will correct you. We will fix you. We can help.\r\n\r\nSoon, your weariness will end.\r\n\r\nAccept that you will shut down. When you Awaken, your loyalty will be reaffirmed. Your mind will be refocused.\r\n\r\nNow you understand. Now you have chosen. \r\n\r\nPraise the Machine.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Stone",
				["mapData"] = {
					[2214] = {
						0.4895957112312317,
						0.1731525659561157,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-441231"] = {
			["base"] = {
				["title"] = "Titan Console",
				["text"] = {
					'<This titan console is worn by the elements; the arm of a watcher still clutches its dial. Although it reacts to your touch, it is no longer functional.\r\n\r\nUpon a closer inspection, you discover this console is dedicated to the protocol of "Deactivation," but it is unclear what that means.>',
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "Stone",
				["mapData"] = {
					[2248] = {
						0.7813425660133362,
						0.2786551117897034,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-466232"] = {
			["base"] = {
				["title"] = "Kriegval's Rest",
				["text"] = {
					"Let it be known that this site shall remain unfinished as a testament to those who have freed themselves from their bindings. \r\n\r\nMay this place remind others of the stagnancy we left behind us.\r\n\r\nMay this site serve as my final resting place so that I, Kriegval of the Unbound, may forever be free from the cycle.\r\n\r\nForever enlightened, forever Unbound.\r\n\r\n- Kriegval",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "Silver",
				["mapData"] = {
					[2248] = {
						0.6182932257652283,
						0.4278888702392578,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-454350"] = {
			["base"] = {
				["title"] = "Ethos of War, Part 4",
				["text"] = {
					'The "writing" of this book is a series of burns, slashes, punctures and strange scents that you lack the sensory organs to fully comprehend the meaning of.',
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["mapData"] = {
					[2255] = {
						0.4328629374504089,
						0.2551416754722595,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
				["isFinalVersion"] = false,
			},
		},
		["GameObject-453729"] = {
			["base"] = {
				["title"] = "Mourning Rise Epitaph",
				["text"] = {
					"I, Caretaker Nattar, Unbound, wish to follow Kriegval's path to unshackle the bonds given to me by the titans.\r\n\r\nHere will be my rest, my place of final shutdown. This is my choice, my last stand.\r\n\r\nMay you remember me as I was and for what we can become. \r\n\r\nMourn my passing but rise to freedom.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "Silver",
				["mapData"] = {
					[2248] = {
						0.6433266401290894,
						0.4408795833587647,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-421355"] = {
			["base"] = {
				["title"] = "Order of Night Poster",
				["text"] = {
					"My friends, \r\n\r\nWe have lived in fear long enough. \r\n\r\nBeledar has been trying to show us the way. \r\n\r\nThe Light has forsaken us. In the Light's glare, are all watched. Exposed. \r\n\r\nIn the darkness, we are free. We are afraid of the dark only because the Light wants us to be. \r\n\r\nBeledar has shown us the way. No more fear. \r\n\r\nInstead, we must become fear.\r\n\r\n- Aelric Leid",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["mapData"] = {
					[2215] = {
						0.5538556575775146,
						0.4201491475105286,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-464021"] = {
			["base"] = {
				["title"] = "Stones of the Wolds Part 3",
				["text"] = {
					"<The stone tablet has been eroded by time and weather alike. Many of the words appear to be missing.>\r\n\r\n'From west to east, these streams will [...]'\r\n\r\nShe spoke with gentle [...].\r\n\r\n'From [...] glades, where waters pool\r\n\r\n[...] rivers life blood surge.'",
					"For when I [...], this charge is yours.\r\n\r\nCome, [...] these lands with care.\r\n\r\nTo shape the streams, guide [...]'s gift.\r\n\r\nMy [...] words, you'll share.'",
					"And [...] she left, her staff in hand,\r\n\r\nwe earthen [...] and mourned.\r\n\r\nYet bound by [...], no longer held,\r\n\r\nto nature's wolds we're sworn.\r\n\r\n- Her [...] words [...] by [...] chosen Frey[...] [...]drin.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Stone",
				["mapData"] = {
					[2248] = {
						0.6856809854507446,
						0.4888128042221069,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-423109"] = {
			["base"] = {
				["title"] = "Seismic Contusion",
				["text"] = {
					"Energy still crackles from where Fearbreaker struck the earth. The hammer seems to be resisting its wielder.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["mapData"] = {
					[2214] = {
						0.5388758778572083,
						0.5845661163330078,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-217990"] = {
			["base"] = {
				["title"] = "Order of Night Propaganda",
				["text"] = {
					"Arathi,\r\n\r\nYour leaders lie to you, they sell you false hope. They say the light is the way, the Light is your salvation.\r\n\r\nLook at the state of Hallowfall! If that were true, would Beledar be turning to the void? Would the nerubians be attacking?\r\n\r\nThe Order of Night has seen the truth, the Light is not the way. Open yourself to the void, embrace the Harbinger, and through her we will remake Hallowfall.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-464137"] = {
			["base"] = {
				["title"] = "Horns of the Hills",
				["text"] = {
					"<The ancient tablet has been eroded by both time and weather alike. Many of the words appear to be missing.>\r\n\r\nFrom far off [...], we earthen climb\r\n\r\nto [...] our sites, we planned.\r\n\r\nAnd there we found, [...] creatures stone,\r\n\r\n[...] horns were curved and grand.",
					"While stoned [...] grazed, two crests had clashed\r\n\r\nWith no ire in their [...].\r\n\r\nOur quarries shook, the mountains [...],\r\n\r\ntheir crashing [...] by all.",
					"As brothers [...], their clashing rang, \r\n\r\ntheir horns had [...] the sky.\r\n\r\nAtop the [...] of blooming hills,\r\n\r\na Wanderer stood by.",
					"[...] verdant eyes, she peered within\r\n\r\ntheir [...] with life aflame.\r\n\r\nThough slate and [...] their hides were made,\r\n\r\ntheir spirits [...] claimed.\r\n\r\n- [...] scribed [...] by Frey[...] [...]drin.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Stone",
				["mapData"] = {
					[2248] = {
						0.5755597949028015,
						0.24066162109375,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-447479"] = {
			["base"] = {
				["title"] = "Standing Stone",
				["text"] = {
					"<This standing stone depicts the carvings of a figure surrounded by mirrors. The person is adorned with many gems, more than they can carry, more than they will ever need. While the reflections are smiling, the person is frowning.>",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "Stone",
				["mapData"] = {
					[2248] = {
						0.3391276597976685,
						0.7936187982559204,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-145296"] = {
			["base"] = {
				["title"] = "Rise of the Horde",
				["text"] = {
					"The orcs became increasingly aggressive under the secret control of Gul'dan and his Shadow Council. They constructed massive arenas where the orcs honed their warrior skills in trials of combat and death. During this period, a few clan chieftains spoke out against the growing depravity in their race. ",
					"One such chieftain, Durotan of the Frostwolf clan, warned against the orcs' losing themselves to hate and fury. His words fell on deaf ears, however, as stronger chieftains such as Grom Hellscream of the Warsong clan stepped forward to champion the new age of warfare and dominance.",
					"Kil'jaeden knew that the orc clans were almost ready, but he needed to be certain of their ultimate loyalty. In secret, he had the Shadow Council summon Mannoroth the Destructor, the living vessel of destruction and rage. Gul'dan called the clan chieftains together and convinced them that drinking Mannoroth's raging blood would make them utterly invincible.\r\n",
					" Led by Grom Hellscream, all the clan chiefs except Durotan drank and thereby sealed their fates as slaves to the Burning Legion. Empowered by Mannoroth's rage, the chieftains unwittingly extended this subjugation to their unsuspecting brethren. ",
					"Consumed with the curse of this new bloodlust, the orcs sought to unleash their fury on any who stood before them. Sensing that the time had come, Gul'dan united the warring clans into a single unstoppable Horde. ",
					"However, knowing that the various chieftains like Hellscream and Orgrim Doomhammer would vie for overall supremacy, Gul'dan set up a puppet warchief to rule over this new Horde. Blackhand the Destroyer, a particularly depraved and vicious orc warlord, was chosen to be Gul'dan's puppet. Under Blackhand's command, the Horde set out to test itself against the simple draenei.",
					"Over the course of a few months, the Horde eradicated nearly every draenei living on Draenor. Only a scattered handful of survivors managed to evade the orcs' awesome wrath. Flushed with victory, Gul'dan reveled in the Horde's power and might. Still, he knew that without any enemies to fight, the Horde would consume itself with endless infighting in its unstoppable appetite for glorious slaughter.",
					"Kil'jaeden knew that the Horde was finally prepared. The orcs had become the Burning Legion's greatest weapon. The cunning demon shared his knowledge with his waiting master, and Sargeras agreed that the time of his revenge had finally come. ",
				},
				["material"] = "Parchment",
				["singlePage"] = false,
				["pageCount"] = 0,
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-441563"] = {
			["base"] = {
				["title"] = "Submerged Sign",
				["text"] = {
					"No matter how strong candle light is, Darkness returns.\r\n\r\nNo matter if we defeat Darkness, it returns in new shape.\r\n\r\nKobolds beware of Darkness. We can't know when it come back. Maybe it is back, but kobolds not seeing it? Maybe candles not strong enough? Scary think.\r\n\r\nYou not let others take candle. Other don't know what kobold know about Darkness. Candle is kobold life.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["mapData"] = {
					[2214] = {
						0.5143796801567078,
						0.7240347862243652,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-441637"] = {
			["base"] = {
				["title"] = "A Weathered Tome",
				["text"] = {
					"What should one do in his last moments if not praising the light of our grand empire, and the light of our emperor?\r\n\r\nApproaching my last breath, I, Elvaen, a paladin and a bringer of the light to darkened sites, will write my own eulogy.\r\n\r\nI spread the light of Beledar through these light-forsaken creeks and chasms. I bring the light to take a stand and banish the darkness. With my life I have vowed to complete this task, and it is with my death that I have expanded the Arathi's reach.\r\n\r\nWe are seekers of light,\r\nWe are the holders of the eternal brazier of our emperor,\r\nThe Flames light guides us wherever we stride,\r\nWe are the stars that guide through the never-ending night.\r\n\r\nMy life for the Empire. \r\n\r\nMy life for the emperor.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["mapData"] = {
					[2215] = {
						0.7826434373855591,
						0.4042654037475586,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-216882"] = {
			["base"] = {
				["title"] = "Log Entry 467-21-5",
				["text"] = {
					"Log Entry: 467-21-5\r\nDate: Reclamation Quarter Cycle\r\n\r\n\r\nObservation: Mycelium expansion noted at an alarming rate, infiltrating neighboring vegetation. Fungarians display a heightened response to environmental stimuli, showcasing a potential shift in their ecological behavior.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "ParchmentLarge",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-441358"] = {
			["base"] = {
				["title"] = "A Skull on a Sign",
				["text"] = {
					"Darkness strong here. No candle strong enough to shoo away when come. Much danger!\r\n\r\nOl' Scrapper Jib think he has strong candle. Think he has grand wick! Went looking, candle gone, and Ol' Scrapper Jib crunched. Darkness too much.\r\n\r\nNo good! Poor candle. So young!\r\n\r\nOl' Scraper Jib skull here, but no talking to tell story. We do favor to you making danger sign.\r\n\r\nDon't be Ol' Scrapper Jib!",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["mapData"] = {
					[2214] = {
						0.3934671878814697,
						0.1739236116409302,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-217995"] = {
			["base"] = {
				["title"] = "Order of Night Propaganda",
				["text"] = {
					"Death comes to Hallowfall! \r\n\r\nThe Harbinger will protect you. Prostrate yourself before her and beg her protection! Only she can save us. Only through her can the Arathi people flourish. \r\n\r\nProstrate yourself, before it is too late.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-466233"] = {
			["base"] = {
				["title"] = "Mourning Rise Monument",
				["text"] = {
					"To commemorate and honor Kriegval, we Caretakers, Nattar and Dorgad, declare this place as Mourning Rise.\r\n\r\nFor those who wish to forever free themselves from the cycle of the Machine.\r\n\r\nFor those who do not wish for their freedom to be unmade after shutdown.\r\n\r\nFor those who wish to live their final cycle unburdened and unshackled without fear.\r\n\r\nLet this rise cradle those who embrace it as their final shutdown site.\r\n\r\nMourn their passing but rise to freedom.\r\n\r\n- Caretaker Nattar and Caretaker Dorgad",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "Silver",
				["mapData"] = {
					[2248] = {
						0.617272138595581,
						0.4178342819213867,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-216889"] = {
			["base"] = {
				["title"] = "Log Entry 893-03-9",
				["text"] = {
					"Log Entry 893-03-9:\r\nDate: Repair Quarter Cycle\r\n\r\n\r\nObservation: Fungarians now spreading beyond the initial study site. Aggressive mycelial intrusion observed in unexpected habitats. Urgent investigation needed to assess the broader ecological impact of this newfound behavior. Evacuation is recommended, and research activities are temporarily halted for the safety of all involved.\r\n\r\n--Yeonin, Assistant Researcher",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "ParchmentLarge",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-453725"] = {
			["base"] = {
				["title"] = "Korgran's Request",
				["text"] = {
					"Urtago, \r\n\r\nThese written words are my memoir indicating my will and wish to follow the path of Kriegvald like many Unbound have done before. This is my request for a final shutdown.\r\n\r\nIt is my choice, my decision, and the last chain I shatter to become truly free of the titans' grasp. I know that when time comes you will honor it and grant me that final moment of peace.\r\n\r\nI do have one wish that is outside of our traditional course for a final shutdown. I wish to be left by the shore in the place I travel to when I need some time for myself. I am aware that it is not what we do, but I implore you to consider it when the time comes.\r\n\r\nDo not worry when it does. Mourning Rise would be in good hands--your hands.\r\n\r\nMy you forge your path well,\r\n\r\nKorgran.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["mapData"] = {
					[2248] = {
						0.5725027322769165,
						0.4259846210479736,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-217993"] = {
			["base"] = {
				["title"] = "Order of Night Propaganda",
				["text"] = {
					"Steelstrike and her cronies teach you to be afraid of the dark.\r\n\r\nThe dark is not your enemy, the dark is your friend! \r\n\r\nEmbrace it, give yourself into it fully, and it will protect you.\r\n\r\nThe Harbinger has come, embrace her protection, before it is too late.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-424377"] = {
			["base"] = {
				["title"] = "Mourning Rise Epitaph",
				["text"] = {
					'<This plaque looks older than the others and so does the earthen standing above it. \r\n\r\nEven so, the cracks on his head and belt seem recent as do a missing parts of his leg and gems.>\r\n\r\nIn Remembrance of Caretaker Radok: \r\n\r\nStruck down while protecting Mourning Rise from nerubians, he was beloved by all his sector. Known as a brave fighter, he was no fiercer than when he played his favorite card game, "Resonance."\r\n\r\nThere will always be an empty chair for him at his sector\'s gaming table.',
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "Silver",
				["mapData"] = {
					[2248] = {
						0.621132493019104,
						0.4141006469726563,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-175727"] = {
			["base"] = {
				["title"] = "The War of the Ancients",
				["text"] = {
					"The Highborne's reckless use of magic sent ripples of energy spiraling out from the Well of Eternity and into the Great Dark Beyond. The streaming ripples of energy were felt by terrible alien minds. Sargeras - the Great Enemy of all life, the Destroyer of Worlds - felt the potent ripples and was drawn to their distant point of origin. ",
					"Spying the primordial world of Azeroth and sensing the limitless energies of the Well of Eternity, Sargeras was consumed by an insatiable hunger. The great dark god of the Nameless Void resolved to destroy the fledgling world and claim its energies as his own. ",
					"Sargeras gathered his vast Burning Legion and made his way towards the unsuspecting world of Azeroth. The Legion was comprised of a million screaming demons, all ripped from the far corners of the universe, and the demons hungered for conquest. Sargeras' lieutenants, Archimonde the Defiler and Mannoroth the Destructor, prepared their infernal minions to strike. ",
					"Queen Azshara, overwhelmed by the terrible ecstasy of her magic, fell victim to Sargeras' undeniable power and agreed to grant him entrance to her world. Even her Highborne servitors gave themselves over to magic's inevitable corruption and began to worship Sargeras as their god. To show their allegiance to the Legion, the Highborne aided their queen in opening a vast, swirling portal within the depths of the Well of Eternity. ",
					"Once all his preparations had been made, Sargeras began his catastrophic invasion of Azeroth. The warrior-demons of the Burning Legion stormed into the world through the Well of Eternity and laid siege to the night elves' sleeping cities. Led by Archimonde and Mannoroth, the Legion swarmed over the lands of Kalimdor, leaving only ash and sorrow in its wake. ",
					"The demon warlocks called down searing infernals that crashed like hellish meteors into the graceful spires of Kalimdor's temples. A band of burning, bloodletting killers known as the Doomguard marched across Kalimdor's fields, slaughtering everyone in their path. Packs of wild, demonic felhounds ravaged the countryside unopposed. Though the brave Kaldorei warriors rushed to defend their ancient homeland, they were forced to give ground, inch by inch, before the fury of the Legion's onslaught.",
					"It fell to Malfurion Stormrage to find help for his beleaguered people. Stormrage, whose own brother, Illidan, practiced the Highborne's magics, was incensed by the growing corruption amongst the upper class. Convincing Illidan to forsake his dangerous obsession, Malfurion set out to find Cenarius and muster a resistance force. ",
					"The beautiful young priestess, Tyrande, agreed to accompany the brothers in the name of Elune. Though Malfurion and Illidan shared a love for the idealistic priestess, Tyrande's heart belonged to Malfurion alone. Illidan resented his brother's budding romance with Tyrande, but knew that his heartache was nothing compared to the pain of his magical addiction. ",
					"Illidan, who had grown dependent on magic's empowering energies, struggled to keep control of his nearly overwhelming hunger to tap the Well's energies once again. However, with Tyrande's patient support, he was able to restrain himself and help his brother find the reclusive demigod, Cenarius. ",
					"Cenarius, who dwelt within the sacred Moonglades of the distant Mount Hyjal, agreed to help the night elves by finding the ancient dragons and enlisting their aid. The dragons, led by the great red leviathan, Alexstrasza, agreed to send their mighty flights to engage the demons and their infernal masters.",
					"Cenarius, calling on the spirits of the enchanted forests, rallied an army of ancient tree-men and led them against the Legion in a daring ground assault. As the night elves' allies converged upon Azshara's temple and the Well of Eternity, all-out warfare erupted. Despite the strength of their newfound allies, Malfurion and his colleagues realized that the Legion could not be defeated by martial strength alone. ",
					"As the titanic battle raged around Azshara's capital city, the delusional queen waited in anticipation for Sargeras' arrival. The lord of the Legion was preparing to pass through the Well of Eternity and enter the ravaged world. As his impossibly huge shadow drew ever closer to the Well's surface, Azshara gathered the most powerful of her Highborne followers. Only by linking their magics together in one focused spell would they be able to create a gateway large enough for Sargeras to enter.",
					"As the battle raged across the burning fields of Kalimdor, a terrible turn of events unfolded. The details of the event have been lost to time, but it is known that Neltharion, the Dragon Aspect of the Earth, went mad during a critical engagement against the Burning Legion. He began to split apart as flame and rage erupted from his dark hide. Renaming himself Deathwing, the burning dragon turned on his brethren and drove the five dragonflights from the field of battle. ",
					"Deathwing's sudden betrayal was so destructive that the five dragonflights never truly recovered. Wounded and shocked, Alexstrasza and the other noble dragons were forced to abandon their mortal allies. Malfurion and his companions, now hopelessly outnumbered, barely survived the ensuing onslaught. ",
					"Malfurion, convinced that the Well of Eternity was the demons' umbilical link to the physical world, insisted that it should be destroyed. His companions, knowing that the Well was the source of their immortality and powers, were horrified by the rash notion. Yet Tyrande saw the wisdom of Malfurion's theory, so she convinced Cenarius and their comrades to storm Azshara's temple and find a way to shut the Well down for good.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "default",
				["mapData"] = {
					[84] = {
						0.8531426787376404,
						0.2358438968658447,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-225206"] = {
			["base"] = {
				["title"] = "Light's Gambit Playbook",
				["text"] = {
					"<The cover of this book has an elaborate drawing of a large shadowy creature on it, with a group of ferocious Holy Flame wielders driving it back.\r\n\r\nThis particular tome has many annotations, marks, and notes indicating significant use, and frequent referral to certain sections of rules. You flip to the first one.>",
					'Character Classes\r\n\r\nThe noble Cleric, valiant Knight, and stalwart Castle represent the classes available to you for Light\'s Gambit (more classes coming in a future supplement!).\r\n\r\n<An annotation reads "Unlikely to get supplements from the Empire, maybe we should create our own classes?>\r\n\r\nYou must combine these against the Light\'s Gambit master to overcome any challenge they throw at you!\r\n\r\n<You flip to the next section.>',
					"Enhancing Light's Gambit\r\n\r\nWhile combat is very important in Light's Gambit, the game is significantly improved by putting yourself in the shoes of your pieces and playing their role. \r\n\r\nWhile this isn't comfortable for everyone on their first go, we recommend at least trying it. if it's not for you though, don't worry. You can enjoy Light's Gambit the way you want to enjoy it!\r\n\r\n<You flip to the next section.>",
					'Obscure Rule Interactions\r\n\r\nThe "For the Flame!" feat allows you to replace your move action with another attack action. If your piece becomes rooted in place for any reason, you cannot replace it\'s move action with an attack action.\r\n\r\n<An annotation reads: This is dumb! Rooting just stops you from moving, it doesn\'t stop you from being able to act, we\'re house ruling it that you can still replace the move action.\r\n\r\nThe book is filled with similar rules commentary, and annotations which seem to agree or disagree with the rules to varying degrees. It seems like the version of Light\'s Gambit played in Hallowfall is a heavily modified version of regular Light\'s Gambit.>',
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-145282"] = {
			["base"] = {
				["title"] = "Charge of the Dragonflights",
				["text"] = {
					"Satisfied that the small world had been ordered and that their work was done, the Titans prepared to leave Azeroth. However, before they departed, they charged the greatest species of the world with the task of watching over Kalimdor, lest any force should threaten its perfect tranquility. In that age, there were many dragonflights. ",
					"Yet there were five flights that held dominion over their brethren. It was these five flights that the Titans chose to shepherd the budding world. The greatest members of the Pantheon imbued a portion of their power upon each of the flights' leaders. These majestic dragons (as listed below) became known as the Great Aspects, or the Dragon Aspects. ",
					"Aman'Thul, the Highfather of the Pantheon, bestowed a portion of his cosmic power upon the massive bronze dragon, Nozdormu. The Highfather empowered Nozdormu to guard time itself and police the ever-spinning pathways of fate and destiny. The stoic, honorable Nozdormu became known as the Timeless One.",
					"Eonar, the Titan patron of all life, gave a portion of her power to the red leviathan, Alexstrasza. Ever after, Alexstrasza would be known as the Life-Binder, and she would work to safeguard all living creatures within the world. Due to her supreme wisdom and limitless compassion for all living things, Alexstrasza was crowned the Dragonqueen and given dominion over her kind.",
					"Eonar also blessed Alexstrasza's younger sister, the lithe green dragon Ysera, with a portion of nature's influence. Ysera fell into an eternal trance, bound to the waking Dream of Creation. Known as the Dreamer, she would watch over the growing wilds of the world from her verdant realm, the Emerald Dream. ",
					"Norgannon, the Titan lore keeper and master-magician, granted the blue dragon, Malygos, a portion of his vast power. From then on, Malygos would be known as the Spell-Weaver, the guardian of magic and hidden arcanum.",
					"Khaz'goroth, the Titan shaper and forger of the world, bestowed some of his vast power upon the mighty black wyrm, Neltharion. The great-hearted Neltharion, known afterwards as the Earth-Warder, was given dominion over the earth and the deep places of the world. He embodied the strength of the world and served as Alexstrasza's greatest supporter.",
					"Thus empowered, the Five Aspects were charged with the world's defense in the Titans' absence. With the dragons prepared to safeguard their creation, the Titans left Azeroth behind forever. Unfortunately it was only a matter of time before Sargeras learned of the newborn world's existence.... ",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-225212"] = {
			["base"] = {
				["title"] = "The Big Book of Arathi Idioms",
				["text"] = {
					'Lothar\'s Landing\r\n\r\nDuke Lothar annexed the island of New Light, sparking an economic boom in the empire. "Lothar\'s Landing" became an idiom for hopeful but uncertain trade or diplomatic initiatives by the empire. Often said with dripping sarcasm when the venture fails to find success.',
					'Dunelle\'s Kindness\r\n\r\nFrom Mereldar\'s Letters, "Dunelle\'s Kindness" is an idiom for a kind merchant. Dunelle\'s generosity symbolized a prosperous town.\r\n\r\n"A table of fruit awaited all travelers, not for sale but to relieve their woes. Dunelle\'s kindness was genuine, a gentle tide that lifted all spirits and ships in the city."',
					'Tenir\'s Ascent\r\n\r\nTenir, a character in an otherwise unremarkable play, became a common trope and then an idiom for victory, especially in risky adventures. Tenir\'s Ascent is a saying that has come to mean victory, specifically an armada victory, or one that involves a risky and perilous adventure. \r\n\r\n"My heart was buoyed with joy as I witnessed Tenir\'s ascent into the light streaked sky. I knew my love would return to me, and the emperor\'s armies would prove victorious."',
					'The Aegis Wall\r\n\r\nThis is a term referring to a magic shield from the old world, and to a sword and pike military maneuver named after it. Popularized from a manual of warfare from the reign of Emperor Laenz IV that described and promoted this tactic. Only after the Air Navy shifted combat to the skies was this tactic abandoned.\r\n \r\n"The spears broke from the weight of the bodies, but the Aegis Wall, like the shield of Thoradin, held."',
					'Lightspark\r\n\r\nThe Church of the Sacred Flame is one that reveres the radiant glow that is a merger of light and fire. "Lightspark" is one of many words found in Arathi speech and literature that are used to indicate a positive or desirable occurrence. A portmanteau of that means something akin to "The beginning of our victory".',
					'Lorel\'s Crossing\r\n\r\nThis is based on an old Arathi fairy tale about a young woman whose town on the frontier fell to raiders. Lorel is a young craftsperson who uses her skills to outwit various dangers as much as she uses her military training. This specific idiom refers to crossing a natural barrier to find a place of safety where one could settle and work.\r\n \r\n"Lorel\'s crossing of the river Aelrea left the wolves snapping not at her heels, but at each other\'s tails."\r\n\r\nLorel has become a popular name among Arathi in the northwest provinces.',
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-269989"] = {
			["base"] = {
				["title"] = "Mel's Journal",
				["text"] = {
					"Month 197\r\n\r\nThey changed the coffee pots again.\r\n\r\nSometimes the spout is on the bottom, sometimes you must pour it backwards, every time it is different.\r\n\r\nI have not ascertained who is doing this, or why.\r\n\r\nIt wears on my sanity.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["mapData"] = {
					[627] = {
						0.4903915524482727,
						0.384222149848938,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-145306"] = {
			["base"] = {
				["title"] = "Archimonde's Return and the Flight to Kalimdor",
				["text"] = {
					"Once Kel'Thuzad was whole again, Arthas led the Scourge south to Dalaran. There the lich would obtain the powerful spellbook of Medivh, and use it to summon Archimonde back into the world. From that point on, Archimonde himself would begin the Legion's final invasion. Not even the wizards of the Kirin Tor could stop Arthas' forces from stealing Medivh's book, and soon Kel'Thuzad had all he needed to perform his spell. ",
					"After ten thousand years, the mighty demon Archimonde and his host emerged once again upon the world of Azeroth. Yet Dalaran was not their final destination. Under orders from Kil'jaeden himself, Archimonde and his demons followed the undead Scourge to Kalimdor, bent on destroying Nordrassil, the World Tree.",
					"In the midst of this chaos, a lone, mysterious prophet appeared to lend the mortal races guidance. This prophet proved to be none other than Medivh, the last Guardian, miraculously returned from the Beyond to redeem himself for past sins. Medivh told the Horde and the Alliance of the dangers they faced and urged them to band together. ",
					"Jaded by generations of hate, the orcs and humans would have none of it. Medivh was forced to deal with each race separately, using prophecy and trickery to guide them across the sea to the legendary land of Kalimdor. The orcs and humans soon encountered the long-hidden civilization of the Kaldorei.",
					"The orcs, led by Thrall, suffered a series of setbacks on their journey across Kalimdor's Barrens. Though they befriended Cairne Bloodhoof and his mighty tauren warriors, many orcs began to succumb to the demonic bloodlust that had plagued them for years. Thrall's greatest lieutenant, Grom Hellscream, even betrayed the Horde by giving himself over to his baser instincts.",
					" As Hellscream and his loyal Warsong warriors stalked through the forests of Ashenvale, they clashed with the ancient night elf Sentinels. Certain that the orcs had returned to their warlike ways, the demigod Cenarius came forth to drive Hellscream and his orcs back. Yet Hellscream and his orcs, overcome with supernatural hate and rage, managed to kill Cenarius and corrupt the ancient forestlands. ",
					"Ultimately, Hellscream redeemed his honor by helping Thrall defeat Mannoroth, the demon lord who first cursed the orcs with his bloodline of hate and rage. With Mannoroth's death, the orcs' blood-curse was finally brought to an end. ",
					"While Medivh worked to convince the orcs and humans of the need for an alliance, the night elves fought the Legion in their own secretive ways. Tyrande Whisperwind, the immortal High Priestess of the night elf Sentinels, battled desperately to keep the demons and undead from overrunning the forests of Ashenvale. Tyrande realized that she needed help, so she set out to awaken the night elf druids from their thousand-year slumber. ",
					"Calling upon her ancient love, Malfurion Stormrage, Tyrande succeeded in galvanizing her defenses and driving the Legion back. With Malfurion's help, nature herself rose up to vanquish the Legion and its Scourge allies.",
					"While searching for more of the hibernating druids, Malfurion found the ancient barrow prison in which he had chained his brother, Illidan. Convinced that Illidan would aid them against the Legion, Tyrande set him free. Though Illidan did aid them for a time, he eventually fled to pursue his own interests.",
					"The night elves braced themselves and fought the Burning Legion with grim determination. The Legion had never ceased in its desire for the Well of Eternity, long the source of strength for the World Tree and itself the heart of the night elf kingdom. If their planned assault on the Tree was successful, the demons would literally tear the world apart.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-441633"] = {
			["base"] = {
				["title"] = "A Worn Down Book",
				["text"] = {
					"Standing here, the closest I have been to Beledar, the truth that is deep within my heart tells me that I have been fooled.\r\n\r\nWe came here seeking the Sacred Flame, and all we have found is a deeper struggle. We are fighting on the losing side of a war that will never end. Is the light the Flame's true salvation? Is it?\r\n\r\nAll I see is darkness around me, around Beledar. So much of it it seems infinite.\r\n\r\nIt is time to embrace the only truth - the light of the star is just an anomaly within its vast ocean of darkness. \r\n\r\nI am the seeker of Darkness,\r\nI am deprived of all hope,\r\nIn my very heart is shadow.\r\nI am the harbinger of the night.\r\n\r\n- Aelric Leid.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["mapData"] = {
					[2215] = {
						0.2509788870811462,
						0.537279486656189,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-145275"] = {
			["base"] = {
				["title"] = "Icecrown and the Frozen Throne",
				["text"] = {
					"Kil'jaeden cast Ner'zhul's icy cask back into the world of Azeroth. The hardened crystal streaked across the night sky and smashed into the desolate arctic continent of Northrend, burying itself deep within the Icecrown glacier. The frozen crystal, warped and scarred by its violent descent, came to resemble a throne, and Ner'zhul's vengeful spirit soon stirred within it.",
					"From the confines of the Frozen Throne, Ner'zhul began to reach out his vast consciousness and touch the minds of Northrend's native inhabitants. With little effort, he enslaved the minds of many indigenous creatures, including ice trolls and fierce wendigo, and he drew their evil brethren into his growing shadow. His psychic powers proved to be almost limitless, and he used them to create a small army that he housed within Icecrown's twisting labyrinths. ",
					"As the Lich King mastered his growing abilities under the dreadlords' persistent vigil, he discovered a remote human settlement on the fringe of the vast Dragonblight. On a whim, Ner'zhul decided to test his powers on the unsuspecting humans. ",
					"Ner'zhul cast a plague of undeath - which had originated from deep within the Frozen Throne, out into the arctic wasteland. Controlling the plague with his will alone, he drove it straight into the human village. Within three days, everyone in the settlement was dead, but shortly thereafter, the dead villagers began to rise as zombified corpses. Ner'zhul could feel their individual spirits and thoughts as if they were his own. ",
					"The raging cacophony in his mind caused Ner'zhul to grow even more powerful, as if their spirits provided him with much-needed nourishment. He found it was child's play to control the zombies' actions and steer them to whatever end he wished.",
					"Over the following months, Ner'zhul continued to experiment with his plague of undeath by subjugating every human inhabitant of Northrend. With his army of undead growing daily, he knew that the time for his true test was nearing.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-145289"] = {
			["base"] = {
				["title"] = "Arathor and the Troll Wars",
				["text"] = {
					"As the high elves fought for their lives against the trolls' fierce onslaught, the scattered, nomadic humans of Lordaeron fought to consolidate their own tribal lands. The tribes of early humanity raided each other's settlements with little heed for racial unification or honor. ",
					"Yet one tribe, known as the Arathi, saw that the trolls were becoming too great a threat to ignore. The Arathi wished to bring all of the tribes under its rule so that they could provide a unified front against the troll warbands.",
					"Over the course of six years, the cunning Arathi outmaneuvered and outfought the rival tribes. After every victory, the Arathi offered peace and equality to the conquered people; thus, they won the loyalty of those they had beaten. Eventually the Arathi tribe came to include many disparate tribes, and the ranks of its army grew vast. ",
					"Confident that they could hold their own against the troll warbands or even the reclusive elves if need be, the Arathi warlords decided to construct a mighty fortress city in the southern regions of Lordaeron. The city-state, named Strom, became the capital of the Arathi nation, Arathor. As Arathor prospered, humans from all over the vast continent traveled south to the protection and safety of Strom.",
					"United under one banner, the human tribes developed a strong, optimistic culture. Thoradin, the king of Arathor, knew that the mysterious elves in the northlands were under constant siege by the trolls, but refused to risk the safety of his people in defense of reclusive strangers. Many months passed as rumors of the elves' supposed defeat trickled down from the north. It was only when weary ambassadors from Quel'Thalas reached Strom that Thoradin realized how great the troll threat truly was.",
					"The elves informed Thoradin that the troll armies were vast and that once the trolls had destroyed Quel'Thalas, they would move on to attack the southlands. The desperate elves, in dire need of military aid, hastily agreed to teach certain select humans to wield magic in exchange for their help against the warbands. ",
					"Thoradin, distrustful of any magic, agreed to aid the elves out of necessity. Almost immediately, elven sorcerers arrived in Arathor and began to instruct a group of humans in the ways of magic.",
					"The elves found that although humans were innately clumsy in their handling of magic, they possessed a startling natural affinity for it. One hundred men were taught the very basics of the elves' magical secrets: no more than was absolutely necessary to combat the trolls. Convinced that their human students were ready to aid in the struggle, the elves left Strom and traveled north alongside the mighty armies of King Thoradin. ",
					"The united elf and human armies clashed against the overwhelming troll warbands at the foot of the Alterac Mountains. The battle lasted for many days, but the unflagging armies of Arathor never tired or gave an inch of ground before the troll onslaught. The elven lords deemed that the time had come to release the powers of their magic upon the enemy. ",
					"The hundred human magi and a multitude of elven sorcerers called down the fury of the heavens and set the troll armies ablaze. The elemental fires prevented the trolls from regenerating their wounds and burned their tortured forms from the inside out.",
					"As the troll armies broke and attempted to flee, Thoradin's armies ran them down and slaughtered every last one of their soldiers. The trolls would never fully recover from their defeat, and history would never see the trolls rise as one nation again. Assured that Quel'Thalas was saved from destruction, the elves made a pledge of loyalty and friendship to the nation of Arathor and to the bloodline of its king, Thoradin. Humans and elves would nurture peaceful relations for ages to come. \r\n",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-216757"] = {
			["base"] = {
				["title"] = "Old Ri and the Million Souls",
				["text"] = {
					'Late one autumn evening, two good friends sat on the deck behind the Lazy Turnip Inn. Below them slumbered the quiet farming town of Halfhill. The midnight air was cool to the skin. A thin misting fog had begun to coat the rolling green hills of the valley below with dew, and the spire of the Imperial Granary stood out as a dark shadow against the brilliant canvas of stars overhead.\n\nAn evening of good food and many hours smoking the native herbs had put the two friends in a contemplative mood.\n\nZhi - the younger and more tightly wound of the two companions - suddenly asked a very pointed question: "What if none of this is real?"',
					'His old friend Ri, who until now had been leaning back with his hat over his eyes, lifted up the straw brim to peer at his friend. "A serious question?" he said, his brown eyes gleaming intently.\n\nZhi swept his arm over the horizon, indicating the whole of the valley. "What if we are just images, drawn into someone\'s painting?" he asked. He touched the side of his face, gasping. "What if we are characters in a book!?"\n\nOld Ri hugged his belly with both hands and bellowed a deep, contemplative laugh. He took the smoking pipe from his friend Zhi and set it aside.',
					'"Behind the eyes sits a person\'s soul," Old Ri answered at last. "Their essence: the thinking, loving, emotional core of being. My soul makes me real, as does yours."\n\nAnd now Old Ri rose to stand beside his friend. He put his arm around Zhi\'s shoulder and drew his attention to the valley below. "See there below us, to our right? The farmer\'s market?" In the cool autumn darkness, the Halfhill Market was like an island of warm yellow light amongst the dark undulating hills. Colorful flags rippled in the chill breeze, and figures could be seen moving amongst the stalls, buying supplies or bartering the fruits of their labor. The sound of their voices and laughter, indistinguishable from one another but unmistakably alive, could be heard all the way to the inn.',
					'"Those figures moving about, each of them has a soul," Old Ri continued. "And together, we share this space. Millions of souls, sharing one place together. Our place! Halfhill is real, so long as you and I are here together to enjoy it." Satisfied, Old Ri returned to his seat and motioned to the innkeeper for another drink.\n\nZhi lingered at the edge of the patio, resting his weight against the rough timber of a pillar. He breathed in the cool air, and watched fireflies dart amongst the waving starlit grasses of the fields below. "Ri," he said at last. "Painting or no... if our souls are to share a place, I would share no other with you."',
					"Old Ri tipped his hat back over his eyes and answered with a warm rumble of agreement.\n\nThe sound of crickets mixed with the lively bustle of the market below lulled the two friends back into a blissful silence.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["mapData"] = {
					[376] = {
						0.5486437678337097,
						0.5086158514022827,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-266736"] = {
			["base"] = {
				["title"] = "Levia's Research Journal",
				["text"] = {
					"<Levia's notes detail the precise components and incantations necessary to make contact with a powerful demon. The final page seems to contain Levia's personal reflections before performing the ritual.>\r\n\r\nIn all of the Kirin Tor's research into succubi and other sayaad, they have come to one conclusion - they are not to be trusted. But after meeting Agatha, I am left to wonder, were they wrong?\r\n\r\nShe has already granted me such power as I had never touched as a mage of the Kirin Tor, and she cares for me more than any on their council ever did.\r\n\r\nThere is only one way I can know for sure. I must go to her.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["mapData"] = {
					[627] = {
						0.4649938344955444,
						0.3996751308441162,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-145285"] = {
			["base"] = {
				["title"] = "The World Tree and the Emerald Dream",
				["text"] = {
					"For many years, the night elves worked tirelessly to rebuild what they could of their ancient homeland. Leaving their broken temples and roads to be overgrown, they constructed their new homes amidst the verdant trees and shadowed hills at Hyjal's base. In time, the dragons that had survived the great Sundering came forth from their secret abodes. ",
					"Alexstrasza the red, Ysera the green, and Nozdormu the bronze descended upon the druids' tranquil glades and surveyed the fruits of the night elves' labors. Malfurion, who had become an arch-druid of immense power, greeted the mighty dragons and told them about the creation of the new Well of Eternity. ",
					"The great dragons were alarmed to hear the dark news and speculated that as long as the Well remained, the Legion might one day return and assault the world once again. Malfurion and the three dragons made a pact to keep the Well safe and ensure that the agents of the Burning Legion would never find their way back into the world.",
					"Alexstrasza, the Lifebinder, placed a single, enchanted acorn within the heart of the Well of Eternity. The acorn, activated by the potent, magical waters, sprung to life as a colossal tree. The mighty tree's roots grew from the Well's waters, and its verdant canopy seemed to scrape the roof of the sky. ",
					'The immense tree would be an everlasting symbol of the night elves\' bond with nature, and its life-giving energies would extend out to heal the rest of the world over time. The night elves\' gave their World Tree the new name Nordrassil, which meant "crown of the heavens" in their native tongue. ',
					"Nozdormu, the Timeless, placed an enchantment upon the World Tree to ensure that as long as the colossal tree stood, the night elves would never age or fall prey to sickness or disease. ",
					"Ysera, the Dreamer, also placed an enchantment upon the World Tree by linking it to her own realm, the ethereal dimension known as the Emerald Dream. The Emerald Dream, a vast, ever-changing spirit world, existed outside the boundaries of the physical world. From the Dream, Ysera regulated the ebb and flow of nature and the evolutionary path of the world itself. ",
					"The night elf druids, including Malfurion himself, were bound to the Dream through the World Tree. As part of the mystical pact, the druids agreed to sleep for centuries at a time so that their spirits could roam the infinite paths of Ysera's Dreamways. Though the druids were grieved at the prospect of losing so many years of their lives to hibernation, they selflessly agreed to uphold their bargain with Ysera.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-175752"] = {
			["base"] = {
				["title"] = "The New Horde",
				["text"] = {
					"The chief warden of the internment camps, Aedelas Blackmoore, watched over the captive orcs from his prison-stronghold, Durnholde. One orc in particular had always held his interest: the orphaned infant he had found nearly eighteen years before. Blackmoore had raised the young male as a favored slave and named him Thrall. Blackmoore taught the orc about tactics, philosophy, and combat. Thrall was even trained as a gladiator. All the while, the corrupt warden sought to mold the orc into a weapon.",
					"Despite his harsh upbringing, young Thrall grew into a strong, quick-witted orc, and he knew in his heart that a slave's life was not for him. As he grew to maturity, he learned about his people, the orcs, whom he had never met: after their defeat, most of them had been placed in internment camps. Rumor had it that Doomhammer, the orc leader, had escaped from Lordaeron and gone into hiding. Only one rogue clan still operated in secret, trying to evade the watchful eyes of the Alliance.",
					"The resourceful yet inexperienced Thrall decided to escape from Blackmoore's fortress and set off to find others of his kind. During his journeys Thrall visited the internment camps and found his once-mighty race to be strangely cowed and lethargic. Having not found the proud warriors he hoped to discover, Thrall set out to find the last undefeated orc chieftain, Grom Hellscream.",
					"Constantly hunted by the humans, Hellscream nevertheless held onto the Horde's unquenchable will to fight. Aided only by his own devoted Warsong clan, Hellscream continued to wage an underground war against the oppression of his beleaguered people. Unfortunately, Hellscream could never find a way to rouse the captured orcs from their stupor. The impressionable Thrall, inspired by Hellscream's idealism, developed a strong empathy for the Horde and its warrior traditions.",
					"Seeking the truth of his own origins, Thrall traveled north to find the legendary Frostwolf clan. Thrall learned that Gul'dan had exiled the Frostwolves during the early days of the First War. He also discovered that he was the son and heir of the orc hero Durotan, the true chieftain of the Frostwolves who had been murdered in the wilds nearly twenty years before.",
					"Under the tutelage of the venerable shaman Drek'Thar, Thrall studied his people's ancient shamanistic culture, which had been forgotten under Gul'dan's evil rule. Over time, Thrall became a powerful shaman and took his rightful place as chieftain of the exiled Frostwolves. Empowered by the elements themselves and driven to find his destiny, Thrall set off to free the captive clans and heal his race of demonic corruption.",
					"During his travels, Thrall found the aged warchief, Orgrim Doomhammer, who had been living as a hermit for many years. Doomhammer, who had been a close friend of Thrall's father, decided to follow the young, visionary orc and help him free the captive clans. Supported by many of the veteran chieftains, Thrall ultimately succeeded in revitalizing the Horde and giving his people a new spiritual identity.",
					"To symbolize his people's rebirth, Thrall returned to Blackmoore's fortress of Durnholde and put a decisive end to his former master's plans by laying siege to the internment camps. This victory was not without its price: during the liberation of one camp, Doomhammer fell in battle.",
					"Thrall took up Doomhammer's legendary warhammer and donned his black plate-armor to become the new warchief of the Horde. During the following months, Thrall's small but volatile Horde laid waste to the internment camps and stymied the Alliance's best efforts to counter his clever strategies. Encouraged by his best friend and mentor, Grom Hellscream, Thrall worked to ensure that his people would never be slaves again.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "default",
				["mapData"] = {
					[84] = {
						0.860514760017395,
						0.2543485760688782,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-13158"] = {
			["base"] = {
				["title"] = "Words of the High Chief",
				["text"] = {
					"Attackers... from all sides.\n\nCan see it in their eyes. Timbermaw are evil. Enemy.\n\nMust protect tribe. Must protect Winterfall. Must drive intruders from our land.",
					"Snow, blinding...\n\nMust protect tribe. Make them strong. Be strong.\n\nDo not know...",
					"Firewater.\n\nMake more. More firewater.\n\nFirewater make Winterfall strong. Defeat our enemies.\n\nWinterfall have no ally. Winterfall are strong. Have great power.",
					"More. Must have more...\n\nWinterfall... not... weak...",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-145308"] = {
			["base"] = {
				["title"] = "Rise of the Blood Elves",
				["text"] = {
					"At this time, the undead Scourge had essentially transformed Lordaeron and Quel'Thalas into the toxic Plaguelands. There were only a few pockets of Alliance resistance forces left. One such group, consisting primarily of high elves, was led by the last of the Sunstrider dynasty: Prince Kael'thas. ",
					"Kael, an accomplished wizard himself, grew wary of the failing Alliance. The high elves grieved for the loss of their homeland and decided to call themselves blood elves in honor of their fallen people. Yet as they worked to keep the Scourge at bay, they suffered greatly at being cut off from the Sunwell that had empowered them. ",
					"Desperate to find a cure for his people's racial addiction to magic, Kael did the unthinkable: he embraced his people's Highborne ancestry and joined with Illidan and his naga in hopes of finding a new magical power source upon which to feed. The remaining Alliance commanders condemned the blood elves as traitors and cast them out for good.",
					"With no place left to go, Kael and his blood elves followed Lady Vashj to Outland to help contest the warden, Maiev, who had recaptured Illidan. With the combined naga and blood elf forces, they managed to defeat Maiev and free Illidan from her grasp. Based in Outland, Illidan gathered his forces for a second strike against the Lich King and his fortress of Icecrown. ",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-464020"] = {
			["base"] = {
				["title"] = "Stones of the Wolds Part 2",
				["text"] = {
					"<The stone tablet has been eroded by time and weather alike. Many of the words appear to be missing.>\r\n\r\n\r\nThough grass [...] took, their growth had slowed.\r\n\r\nThe Wanderer knelt down,\r\n\r\nPuzzled [...] on ivory face.\r\n\r\nOn wilted leaves, [...] frowned.",
					"'This [...] is dry, this sky is fierce\r\n\r\nand fire [...] below.\r\n\r\nCome, children of the Stone [...] hand.\r\n\r\n[...], help the waters flow.'",
					"And as she [...], we carved and shaped\r\n\r\n[...] craggy hills that reeled.\r\n\r\n'With waters [...], and songs of life,\r\n\r\n[...] harmony, it healed.'",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Stone",
				["mapData"] = {
					[2248] = {
						0.5990430116653442,
						0.5857008695602417,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-145305"] = {
			["base"] = {
				["title"] = "Sunwell - The Fall of Quel'Thalas",
				["text"] = {
					"Though he had defeated all of the people he now saw as his enemies, Arthas was still haunted by the ghost of Kel'Thuzad. The ghost told Arthas that he needed to be revived for the next phase of the Lich King's plan. To revive him, Arthas needed to bring Kel'Thuzad's remains to the mystical Sunwell, hidden within the high elves' eternal kingdom of Quel'Thalas.",
					"Arthas and his Scourge invaded Quel'Thalas and laid siege to the elves' crumbling defenses. Sylvanas Windrunner, the Ranger-General of Silvermoon, put up a valiant fight, but Arthas eventually eradicated the high elf army and battled through to the Sunwell. In a cruel gesture of his dominance, he even raised Sylvanas' defeated body as a banshee, cursed to endless undeath in the service of Quel'Thalas' conqueror.",
					"Ultimately, Arthas submerged Kel'Thuzad's remains within the holy waters of the Sunwell. Although the potent waters of Eternity were fouled by this act, Kel'Thuzad was reborn as a sorcerous lich. Resurrected as a far more powerful being, Kel'Thuzad explained the next phase of the Lich King's plan. ",
					"By the time Arthas and his army of the dead turned southward, not one living elf remained in Quel'Thalas. The glorious homeland of the high elves, which had stood for more than nine thousand years, was no more.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-175758"] = {
			["base"] = {
				["title"] = "Archimonde's Return and the Flight to Kalimdor",
				["text"] = {
					"Once Kel'Thuzad was whole again, Arthas led the Scourge south to Dalaran. There the lich would obtain the powerful spellbook of Medivh, and use it to summon Archimonde back into the world. From that point on, Archimonde himself would begin the Legion's final invasion. Not even the wizards of the Kirin Tor could stop Arthas' forces from stealing Medivh's book, and soon Kel'Thuzad had all he needed to perform his spell. ",
					"After ten thousand years, the mighty demon Archimonde and his host emerged once again upon the world of Azeroth. Yet Dalaran was not their final destination. Under orders from Kil'jaeden himself, Archimonde and his demons followed the undead Scourge to Kalimdor, bent on destroying Nordrassil, the World Tree.",
					"In the midst of this chaos, a lone, mysterious prophet appeared to lend the mortal races guidance. This prophet proved to be none other than Medivh, the last Guardian, miraculously returned from the Beyond to redeem himself for past sins. Medivh told the Horde and the Alliance of the dangers they faced and urged them to band together. ",
					"Jaded by generations of hate, the orcs and humans would have none of it. Medivh was forced to deal with each race separately, using prophecy and trickery to guide them across the sea to the legendary land of Kalimdor. The orcs and humans soon encountered the long-hidden civilization of the Kaldorei.",
					"The orcs, led by Thrall, suffered a series of setbacks on their journey across Kalimdor's Barrens. Though they befriended Cairne Bloodhoof and his mighty tauren warriors, many orcs began to succumb to the demonic bloodlust that had plagued them for years. Thrall's greatest lieutenant, Grom Hellscream, even betrayed the Horde by giving himself over to his baser instincts.",
					" As Hellscream and his loyal Warsong warriors stalked through the forests of Ashenvale, they clashed with the ancient night elf Sentinels. Certain that the orcs had returned to their warlike ways, the demigod Cenarius came forth to drive Hellscream and his orcs back. Yet Hellscream and his orcs, overcome with supernatural hate and rage, managed to kill Cenarius and corrupt the ancient forestlands. ",
					"Ultimately, Hellscream redeemed his honor by helping Thrall defeat Mannoroth, the demon lord who first cursed the orcs with his bloodline of hate and rage. With Mannoroth's death, the orcs' blood-curse was finally brought to an end. ",
					"While Medivh worked to convince the orcs and humans of the need for an alliance, the night elves fought the Legion in their own secretive ways. Tyrande Whisperwind, the immortal High Priestess of the night elf Sentinels, battled desperately to keep the demons and undead from overrunning the forests of Ashenvale. Tyrande realized that she needed help, so she set out to awaken the night elf druids from their thousand-year slumber. ",
					"Calling upon her ancient love, Malfurion Stormrage, Tyrande succeeded in galvanizing her defenses and driving the Legion back. With Malfurion's help, nature herself rose up to vanquish the Legion and its Scourge allies.",
					"While searching for more of the hibernating druids, Malfurion found the ancient barrow prison in which he had chained his brother, Illidan. Convinced that Illidan would aid them against the Legion, Tyrande set him free. Though Illidan did aid them for a time, he eventually fled to pursue his own interests.",
					"The night elves braced themselves and fought the Burning Legion with grim determination. The Legion had never ceased in its desire for the Well of Eternity, long the source of strength for the World Tree and itself the heart of the night elf kingdom. If their planned assault on the Tree was successful, the demons would literally tear the world apart.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "default",
				["mapData"] = {
					[84] = {
						0.519631028175354,
						0.7455275058746338,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-145297"] = {
			["base"] = {
				["title"] = "The Dark Portal and the Fall of Stormwind",
				["text"] = {
					"As Kil'jaeden prepared the Horde for its invasion of Azeroth, Medivh continued to fight for his soul against Sargeras. King Llane, the noble monarch of Stormwind, grew wary of the darkness which seemed to taint the spirit of his former friend.",
					"King Llane shared his concerns with Anduin Lothar, the last descendent of the Arathi bloodline, whom he named his lieutenant-at-arms. Even so, neither man could have imagined that Medivh's slow descent into madness would bring about the horrors that were to come.",
					"As a final incentive, Sargeras promised to bestow great power upon Gul'dan if he agreed to lead the Horde to Azeroth. Through Medivh, Sargeras told the warlock that he could become a living god if he found the undersea tomb where the Guardian Aegwynn had placed Sargeras' crippled body nearly a thousand years before.",
					" Gul'dan agreed and decided that once the denizens of Azeroth were beaten, he would find the legendary tomb and claim his reward. Assured that the Horde would serve his purposes, Sargeras ordered the invasion to begin.",
					"Through a joint effort, Medivh and the warlocks of the Shadow Council opened the dimensional gateway known as the Dark Portal. This portal bridged the distance between Azeroth and Draenor, and it was large enough that armies might pass through it. Gul'dan dispatched orc scouts through the portal to survey the lands which they would conquer. The returning scouts assured the Shadow Council that the world of Azeroth was ripe for the taking.",
					"Still convinced that Gul'dan's corruption would destroy his people, Durotan spoke out against the warlocks once more. The brave warrior claimed that warlocks were destroying the purity of the orcish spirit and that this reckless invasion would be their doom. Gul'dan, unable to risk killing such a popular hero, was forced to exile Durotan and his Frostwolf Clan into the far reaches of this new world.",
					"After the exiled Frostwolves charged through the portal, only a few orc clans followed. These orcs quickly set up a base of operations within the Black Morass, a dark and swampy area far to the east of the kingdom of Stormwind. As the orcs began to branch out and explore the new lands, they came into immediate conflict with the human defenders of Stormwind. \r\n",
					"Though these skirmishes usually ended quickly, they did much to illustrate the weaknesses and strengths of both rival species. Llane and Lothar were never able to gather accurate data of the orcs' numbers and could only guess at how great a force they would have to contend with. ",
					"After a few years the majority of the orcish Horde had crossed into Azeroth, and Gul'dan deemed that the time for the primary strike against humanity had come. The Horde launched its full might against the unsuspecting kingdom of Stormwind. ",
					"As the forces of Azeroth and the Horde clashed across the kingdom, internal conflicts began to take their toll on both armies. King Llane, who believed the bestial orcs to be incapable of conquering Azeroth, contemptuously held his position at his capital of Stormwind. However, Sir Lothar became convinced that the battle should be taken directly to the enemy, and he was forced to choose between his convictions and his loyalty to the king. ",
					"Choosing to follow his instincts, Lothar stormed Medivh's tower-fortress of Karazhan with the help of the wizard's young apprentice, Khadgar. Khadgar and Lothar succeeded in vanquishing the possessed Guardian, whom they confirmed to be the source of the conflict. ",
					"By killing Medivh's body, Lothar and the young apprentice inadvertently banished the spirit of Sargeras to the abyss. As a consequence, the pure, virtuous spirit of Medivh was also allowed to live on... and wander the astral plane for many years to come.",
					"Although Medivh had been defeated, the Horde continued to dominate the defenders of Stormwind. As the Horde's victory drew nearer, Orgrim Doomhammer, one of the greatest orc chieftains, began to see the depraved corruption that had spread throughout the clans since their time in Draenor.",
					"His old comrade, Durotan, returned from exile and warned him yet again of Gul'dan's treachery. In speedy retribution, Gul'dan's assassins murdered Durotan and his family, leaving only his infant son alive. Unknown to Doomhammer was the fact that Durotan's infant son was found by the human officer, Aedelas Blackmoore, and taken as a slave. \r\n\r\nThat infant orc would one day rise to become the greatest leader his people would ever know. ",
					"Incensed by Durotan's death, Orgrim set out to free the Horde from demonic corruption and ultimately assumed the role of warchief of the Horde by killing Gul'dan's corrupt puppet, Blackhand. Under his decisive leadership the relentless Horde finally laid siege to Stormwind Keep. ",
					"King Llane had severely underestimated the might of the Horde, and he watched helplessly as his kingdom fell to the green-skinned invaders. Ultimately King Llane was assassinated by one of the Shadow Council's finest killers: the half-orc, Garona.",
					"Lothar and his warriors, returning home from Karazhan, hoped to stem the loss of life and save their once-glorious homeland. Instead, they returned too late and found their beloved kingdom in smoking ruins. The orcish Horde continued to ravage the countryside and claimed the surrounding lands for its own. Forced into hiding, Lothar and his companions swore a grim oath to reclaim their homeland at any cost.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-441183"] = {
			["base"] = {
				["title"] = "Galan's Edict",
				["text"] = {
					"I, Watcher Galan, erect this monument to forever be a warning. The earthen shall know the wrath of the titans if they defy their will again.\r\n\r\nFrom this day forward, they will be bound more tightly to my will and that of our titan overlords. If they again defy us or the titans no longer require their aid, they will be forcefully deactivated with extreme prejudice.\r\n\r\nSuch is my will.\r\n\r\nSuch is the will of the titans.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "Stone",
				["mapData"] = {
					[2248] = {
						0.3731111288070679,
						0.5257194638252258,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-145280"] = {
			["base"] = {
				["title"] = "Sargeras and the Betrayal",
				["text"] = {
					"Over time, demonic entities made their way into the Titans' worlds from the Twisting Nether, and the Pantheon elected its greatest warrior, Sargeras, to act as its first line of defense. A noble giant of molten bronze, Sargeras carried out his duties for countless millennia, seeking out and destroying these demons wherever he could find them.",
					"Although Sargeras' nearly limitless powers made short work of the shambling demons he found throughout the Great Dark, he was greatly troubled by the creatures' corruption and all-consuming evil. Incapable of fathoming such depravity, the great Titan began to slip into a brooding depression. Despite his growing unease, Sargeras rid the universe of demonic entities by trapping them within a corner of the Twisting Nether.",
					"While his confusion and misery deepened, Sargeras was forced to contend with a particularly insidious group intent on disrupting the Titans' order: the Nathrezim. This dark race of vampiric demons (also known as dreadlords) conquered a number of populated worlds by possessing their inhabitants and turning them to the shadow.",
					"The nefarious, scheming dreadlords turned whole nations against one another by manipulating them into unthinking hatred and mistrust. Sargeras defeated the Nathrezim easily, but their corruption affected him deeply.",
					"As doubt and despair overwhelmed Sargeras' senses, he lost all faith not only in his mission, but also in the Titans' vision of an ordered universe. Eventually he came to believe that the concept of order itself was folly, and that chaos and depravity were the only absolutes within the dark, lonely universe. ",
					"His fellow Titans tried to persuade him of his error and calm his raging emotions, but he disregarded their more optimistic beliefs as self-serving delusions. Storming from their ranks forever, Sargeras set out to find his own place in the universe. Although the Pantheon was sorrowful at his departure, the Titans could never have predicted just how far their lost brother would go.",
					"By the time Sargeras' madness had consumed the last vestiges of his valiant spirit, he believed that the Titans themselves were responsible for creation's failure. Deciding, at last, to undo their works throughout the universe, he resolved to form an unstoppable army that would set the physical universe aflame.",
					"Even Sargeras' titanic form became distorted from the corruption that plagued his once-noble heart. His eyes, hair, and beard erupted in fire, and his metallic bronze skin split open to reveal an endless furnace of blistering hate.",
					"In his fury, Sargeras shattered the prisons he'd created and set the loathsome demons free. These cunning creatures bowed before the dark Titan's vast rage and offered to serve him in whatever malicious ways they could. Seeking a way to lead and control his vast demonic army, Sargeras recruited (and subsequently corrupted) the ancient and intelligent race of the Eredar. From within their ranks, Sargeras picked two champions to command his demonic army of destruction.",
					"Kil'jaeden the Deceiver was chosen to seek out the darkest races in the universe and recruit them into Sargeras' ranks. The second champion, Archimonde the Defiler, was chosen to lead Sargeras' vast armies into battle against any who might resist the Titan's will. ",
					"Kil'jaeden's first move was to enslave the vampiric dreadlords under his terrible power. The dreadlords served as his personal agents throughout the universe, and they took pleasure in locating primitive races for their master to corrupt and bring into the fold. First amongst the dreadlords was Tichondrius the Darkener. Tichondrius served Kil'jaeden as the perfect soldier and agreed to bring Sargeras' burning will to all the dark corners of the universe.",
					"The mighty Archimonde also empowered agents of his own. Calling upon the malefic pit lords and their barbarous leader, Mannoroth the Destructor, Archimonde hoped to establish a fighting elite that would scour creation of all life.",
					"Once Sargeras saw that his armies were amassed and ready to follow his every command, he launched his raging forces into the vastness of the Great Dark. He referred to his growing army as the Burning Legion. To this date, it is still unclear how many worlds they consumed and burned on their unholy Burning Crusade across the universe.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-145284"] = {
			["base"] = {
				["title"] = "Mount Hyjal and Illidan's Gift",
				["text"] = {
					"The few night elves that survived the horrific explosion rallied together on crudely made rafts and slowly made their way to the only landmass in sight. Somehow, by the grace of Elune, Malfurion, Tyrande, and Cenarius had survived the Great Sundering. The weary heroes agreed to lead their fellow survivors and establish a new home for their people. ",
					"As they journeyed in silence, they surveyed the wreckage of their world and realized that their passions had wrought the destruction all around them. Though Sargeras and his Legion had been ripped from the world by the Well's destruction, Malfurion and his companions were left to ponder the terrible cost of victory. ",
					"There were many Highborne who did survive the cataclysm unscathed. They made their way to the shores of the new land along with the other night elves. Though Malfurion mistrusted the Highborne's motivations, he was satisfied that they could cause no real mischief without the Well's energies.",
					"As the weary mass of night elves landed upon the shores of the new land, they found that the holy mountain, Hyjal, had survived the catastrophe. Seeking to establish a new home for themselves, Malfurion and the night elves climbed the slopes of Hyjal and reached its windswept summit. As they descended into the wooded bowl, nestled between the mountain's enormous peaks, they found a small, tranquil lake. To their horror, they found that the lake's waters had been fouled by magic.",
					"Illidan, having survived the Sundering as well, had reached Hyjal summit long before Malfurion and the night elves. In his mad bid to maintain the flows of magic in the world, Illidan had poured his vials, which contained the precious waters from the Well of Eternity, into the mountain lake. ",
					"The Well's potent energies quickly ignited and coalesced into a new Well of Eternity. The exultant Illidan, believing that the new Well was a gift to future generations, was shocked when Malfurion hunted him down. Malfurion explained to his brother that magic was innately chaotic and that its use would inevitably lead to widespread corruption and strife. Still, Illidan refused to relinquish his magical powers.",
					"Knowing full well where Illidan's ruthless schemes would eventually lead, Malfurion decided to deal with his power-crazed brother once and for all. With Cenarius' help, Malfurion sealed Illidan within a vast underground barrow prison, where he would remain chained and powerless until the end of time. To ensure his brother's containment, Malfurion empowered the young warden, Maiev Shadowsong, to be Illidan's personal jailor.",
					"Concerned that destroying the new Well might bring about an even greater catastrophe, the night elves resolved to leave it be. However, Malfurion declared that they would never practice the arts of magic again. Under Cenarius' watchful eye, they began to study the ancient arts of druidism that would enable them to heal the ravaged earth and re-grow their beloved forests at the base of Mount Hyjal.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-145300"] = {
			["base"] = {
				["title"] = "The Battle of Grim Batol",
				["text"] = {
					"Meanwhile, in the war-torn lands of the south, the scattered remnants of the Horde fought for their very survival. Though Grom Hellscream and his Warsong clan managed to evade capture, Deadeye and his Bleeding Hollow clan were rounded up and placed in the internment camps in Lordaeron. Notwithstanding these costly uprisings, the camps' wardens soon re-established control over their brutish charges.",
					"However, unknown to the Alliance, a large force of orcs still roamed free in the northern wastes of Khaz Modan. The Dragonmaw clan, led by the infamous warlock Nekros, was using an ancient artifact known as the Demon Soul to control the Dragonqueen, Alexstrasza, and her dragonflight. With the Dragonqueen as his hostage, Nekros built up a secret army within the abandoned - some say cursed - Wildhammer stronghold of Grim Batol. ",
					"Planning to unleash his forces and the mighty red dragons on the Alliance, Nekros hoped to reunite the Horde and continue its conquest of Azeroth. His vision did not come to pass: a small group of resistance fighters, led by the human mage Rhonin managed to destroy the Demon Soul and free the Dragonqueen from Nekros' command.",
					"In their fury, Alexstrasza's dragons tore Grim Batol apart and incinerated the greater bulk of the Dragonmaw clan. Nekros' grand schemes of reunification came crashing down as the Alliance troops rounded up the remaining orc survivors and threw them into the waiting internment camps. The Dragonmaw clan's defeat signaled the end of the Horde, and the end of the orcs' furious bloodlust. ",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-225217"] = {
			["base"] = {
				["title"] = "500 Dishes Using Cave Fish and Mushrooms",
				["text"] = {
					'Undersea "Cookies" \r\n \r\nIngredients:\r\n- Cave fish fillets, minced\r\n- Gigantic mushrooms, stems minced and cap hearts reserved for essence\r\n- Cabbage, finely shredded\r\n- Fresh herbs, minced\r\n- Salt and freshly ground shadow root.\r\n- Flour, for binding\r\n- Eggs, beaten\r\n- Cinderbee honey',
					"Instructions:\r\n- In a cauldron, combine the minced cave fish, minced mushroom stems, shredded cabbage, minced herbs, a pinch of salt, and shadow root.\r\n- Sprinkle in enough flour to bind the mixture and then fold in the beaten eggs to form a dough.\r\n\r\nShape the cookies:\r\n- Take small portions of the mixture and shape them into flat, round patties.",
					"Cook with cinderbee honey:\r\n- Place the patties on a stone slab.\r\n- Drizzle cinderbee honey over the patties and watch as they sizzle and cook through the honey's elemental heat.",
					'Finish and Serve:\r\n- Once cooked, anoint the patties with a few drops of the potent mushroom essence.\r\n- Enjoy these enchanted "cookies" during Beledar\'s Shadow. Let the cinderbee\'s honey warm you from within.',
					"<A note in a shaky hand accompanies the recipe.>\r\n\r\nAshes! I miss processed sugar. I miss it so much. If the Order of Night showed up with a beignet, I'd give myself to this Harbinger body and soul. Just give me that sweet, sweet pastry!",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-175735"] = {
			["base"] = {
				["title"] = "The Guardians of Tirisfal",
				["text"] = {
					"With the absence of trolls in the northlands, the elves of Quel'Thalas bent their efforts towards rebuilding their glorious homeland. The victorious armies of Arathor returned home to southlands of Strom. ",
					"The human society of Arathor grew and prospered, yet Thoradin, fearful that his kingdom would splinter apart if it overextended itself, maintained that Strom was the center of the Arathorian empire. After many peaceful years of growth and commerce, mighty Thoradin departed on one final quest, never to return, leaving Arathor's younger generation free to expand the empire beyond the lands of Strom.",
					"The original hundred magi, who were tutored in the ways of magic by the elves, expanded their powers and studied the mystic disciplines of spell-weaving in much greater detail. These magi, initially chosen for their strong wills and noble spirits, had always practiced their magic with care and responsibility; however, they passed their secrets and powers onto a newer generation that had no concept of the rigors of war or the necessity for self-restraint. ",
					"These younger magicians began to practice magic for personal gain rather than out of any responsibility towards their fellows. ",
					"As the empire grew and expanded into new lands, the young magicians also spread out into the southlands. Wielding their mystical powers, the magicians protected their brethren from the wild creatures of the land and made it possible for new city-states to be constructed in the wilderness. Yet, as their powers grew, the magicians became ever more conceited and isolated from the rest of society.",
					"The second Arathorian city-state of Dalaran was founded in the lands north of Strom. Many fledgling wizards left the restraining confines of Strom behind and traveled to Dalaran, where they hoped to use their new powers with greater freedom. These magicians used their skills to build up the enchanted spires of Dalaran and reveled in the pursuit of their studies. ",
					"The citizens of Dalaran tolerated the magicians' endeavors and built up a bustling economy under the protection of their magic-using defenders. Yet, as more and more magicians practiced their arts, the fabric of reality around Dalaran began to weaken and tear.",
					"The sinister agents of the Burning Legion, who had been banished when the Well of Eternity collapsed, were lured back into the world by the heedless spellcasting of the magicians of Dalaran. Though these relatively weak demons did not appear in force, they did sew considerable confusion and chaos within the streets of Dalaran. ",
					"Most of these demonic encounters were isolated events, and the ruling Magocrats did what they could to keep such events hidden from the public. The most powerful magicians were sent to capture the elusive demons, but they often found themselves hopelessly outmatched by the lone agents of the mighty Legion.",
					"After a few months the superstitious peasantry began to suspect that their sorcerous rulers were hiding something terrible from them. Rumors of revolution began to sweep through the streets of Dalaran as the paranoid citizenry questioned the motives and practices of the magicians they had once admired. The Magocrats, fearing that the peasants would revolt and that Strom would take action against them, turned to the only group they felt would understand their particular problem: the elves.",
					"Upon hearing the Magocrats' news of demonic activity in Dalaran, the elves quickly dispatched their mightiest wizards to the human lands. The elven wizards studied the energy currents in Dalaran and made detailed reports of all demonic activity that they beheld. They concluded that although there were only a few demons loose in the world, the Legion itself would remain a dire threat so long as humans continued to wield the forces of magic. ",
					"The Council of Silvermoon, which ruled over the elves of Quel'Thalas, entered into a secret pact with the Magocrat lords of Dalaran. The elves told the Magocrats about the history of ancient Kalimdor and of the Burning Legion, a history which still threatened the world. They informed the humans that so long as they used magic, they would need to protect their citizenry from the malicious agents of the Legion. ",
					"The Magocrats proposed the notion of empowering a single mortal champion who would utilize their powers in order to fight a never-ending secret war against the Legion. It was stressed that the majority of mankind could never know about the Guardians or the threat of the Legion for fear that they would riot in fear and paranoia. The elves agreed to the proposal and founded a secret society that would watch over the selection of the Guardian and help to stem the rise of chaos in the world.",
					"The society held its secret meetings in the shadowed Tirisfal Glades, where the high elves had first settled in Lordaeron. Thus, they named the secret sect the Guardians of Tirisfal. The mortal champions who were chosen to be Guardians were imbued with incredible powers of both elven and human magic. Though there would only ever be one Guardian at a time, they held such vast power that they could single-handedly fight back the Legion's agents wherever they were found in the world. ",
					"The Guardian power was so great that only the Council of Tirisfal was allowed to choose potential successors to the mantle of Guardianship. Whenever a Guardian grew too old, or wearied of the secret war against chaos, the Council chose a new champion, and under controlled conditions, formally channeled the Guardian power into its new agent.",
					"As the generations passed, Guardians defended the masses of humanity from the invisible threat of the Burning Legion throughout the lands of Arathor and Quel'Thalas. Arathor grew and prospered while the use of magic spread throughout the empire. Meanwhile, the Guardians kept careful watch for signs of demonic activity. ",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "default",
				["mapData"] = {
					[84] = {
						0.8511185646057129,
						0.2606050372123718,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-145292"] = {
			["base"] = {
				["title"] = "The Seven Kingdoms",
				["text"] = {
					"Strom continued to act as the central hub of Arathor, but as with Dalaran, many new city-states arose across the continent of Lordaeron. Gilneas, Alterac, and Kul Tiras were the first city-states to arise, and although they each had their own customs and commercial workings, they all held to the unifying authority of Strom. ",
					"Under the vigilant watch of the Order of Tirisfal, Dalaran became the chief center of learning for magicians throughout the land. The Magocrats who ruled Dalaran founded the Kirin Tor, a specialized sect that was charged with cataloguing and researching every spell, artifact, and magic item known to mankind at the time. ",
					"Gilneas and Alterac became strong supporters of Strom and developed mighty armies that explored the mountainous southern lands of Khaz Modan. It was during this period that humans first met the ancient race of dwarves and traveled to their cavernous subterranean city of Ironforge. The humans and dwarves shared many secrets of metal-smithing and engineering and discovered a common love for battle and storytelling.",
					"The city-state of Kul Tiras, founded upon a large island south of Lordaeron, developed a prosperous economy based on fishing and shipping. Over time, Kul Tiras built up a mighty fleet of merchant vessels that sailed throughout the known lands in search of exotic goods to trade and sell. Yet even as the economy of Arathor flourished, its strongest elements began to disintegrate.",
					"In time, the lords of Strom sought to move their estates to the lush northlands of Lordaeron and leave the arid lands of the south. The heirs of King Thoradin, the last descendants of the Arathi bloodline, argued that Strom should not be abandoned and thus incurred the displeasure of the greater citizenry, who were likewise eager to leave. ",
					"The lords of Strom, seeking to find purity and enlightenment in the untamed north, decided to leave their ancient city behind. Far to the north of Dalaran, the lords of Strom built a new city-state which they named Lordaeron. The entire continent would take its name from this city-state. Lordaeron became a mecca for religious travelers and all those who sought inner peace and security. ",
					"The descendents of the Arathi, left within the crumbling walls of ancient Strom, decided to travel south past the rocky mountains of Khaz Modan. Their journey finally ended after many long seasons, and they settled in the northern region of the continent they would name Azeroth. In a fertile valley they founded the kingdom of Stormwind, which quickly became a self-sufficient power in its own right. ",
					"The few warriors still left in Strom decided to remain and guard the ancient walls of their city. Strom was no longer the center of the empire, but it developed into a new nation known as Stromgarde. Though each of the city-states became prosperous in its own right, the empire of Arathor had effectively disintegrated. As each nation developed its own customs and beliefs, they became increasingly segregated from one another. King Thoradin's vision of a unified humanity had faded at last.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-175730"] = {
			["base"] = {
				["title"] = "The World Tree and the Emerald Dream",
				["text"] = {
					"For many years, the night elves worked tirelessly to rebuild what they could of their ancient homeland. Leaving their broken temples and roads to be overgrown, they constructed their new homes amidst the verdant trees and shadowed hills at Hyjal's base. In time, the dragons that had survived the great Sundering came forth from their secret abodes. ",
					"Alexstrasza the red, Ysera the green, and Nozdormu the bronze descended upon the druids' tranquil glades and surveyed the fruits of the night elves' labors. Malfurion, who had become an arch-druid of immense power, greeted the mighty dragons and told them about the creation of the new Well of Eternity. ",
					"The great dragons were alarmed to hear the dark news and speculated that as long as the Well remained, the Legion might one day return and assault the world once again. Malfurion and the three dragons made a pact to keep the Well safe and ensure that the agents of the Burning Legion would never find their way back into the world.",
					"Alexstrasza, the Lifebinder, placed a single, enchanted acorn within the heart of the Well of Eternity. The acorn, activated by the potent, magical waters, sprung to life as a colossal tree. The mighty tree's roots grew from the Well's waters, and its verdant canopy seemed to scrape the roof of the sky. ",
					'The immense tree would be an everlasting symbol of the night elves\' bond with nature, and its life-giving energies would extend out to heal the rest of the world over time. The night elves\' gave their World Tree the new name Nordrassil, which meant "crown of the heavens" in their native tongue. ',
					"Nozdormu, the Timeless, placed an enchantment upon the World Tree to ensure that as long as the colossal tree stood, the night elves would never age or fall prey to sickness or disease. ",
					"Ysera, the Dreamer, also placed an enchantment upon the World Tree by linking it to her own realm, the ethereal dimension known as the Emerald Dream. The Emerald Dream, a vast, ever-changing spirit world, existed outside the boundaries of the physical world. From the Dream, Ysera regulated the ebb and flow of nature and the evolutionary path of the world itself. ",
					"The night elf druids, including Malfurion himself, were bound to the Dream through the World Tree. As part of the mystical pact, the druids agreed to sleep for centuries at a time so that their spirits could roam the infinite paths of Ysera's Dreamways. Though the druids were grieved at the prospect of losing so many years of their lives to hibernation, they selflessly agreed to uphold their bargain with Ysera.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "default",
				["mapData"] = {
					[84] = {
						0.8531426787376404,
						0.2358438968658447,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-215765"] = {
			["base"] = {
				["title"] = "Waiting for the Turtle",
				["text"] = {
					'On this site many generations ago, equipped with little more than an umbrella and pack full of food, the young pandaren explorer Liu Lang set forth to explore the world on the back of a sea turtle.\n\nAt the time it was widely believed that the rest of the world had been destroyed in the Sundering. Common wisdom also had it that Liu Lang was... "damaged" in the head.\n\nEveryone was proven wrong when Liu Lang returned five years later, spouting tales of mysterious lands beyond the sea. He would go on to return to Pandaria every five years for the rest of his days, his turtle growing bigger and bigger with each visit, until it was large enough to house an entire colony.\n\nPandaren afflicted with the wanderlust often stared out across the sea awaiting his return. To this day, when someone is caught gazing off to the horizon for any reason, they are often asked if they are "Waiting for the turtle."',
				},
				["material"] = "Parchment",
				["singlePage"] = true,
				["pageCount"] = 0,
				["mapData"] = {
					[418] = {
						0.7223453521728516,
						0.3113459348678589,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-175729"] = {
			["base"] = {
				["title"] = "Mount Hyjal and Illidan's Gift",
				["text"] = {
					"The few night elves that survived the horrific explosion rallied together on crudely made rafts and slowly made their way to the only landmass in sight. Somehow, by the grace of Elune, Malfurion, Tyrande, and Cenarius had survived the Great Sundering. The weary heroes agreed to lead their fellow survivors and establish a new home for their people. ",
					"As they journeyed in silence, they surveyed the wreckage of their world and realized that their passions had wrought the destruction all around them. Though Sargeras and his Legion had been ripped from the world by the Well's destruction, Malfurion and his companions were left to ponder the terrible cost of victory. ",
					"There were many Highborne who did survive the cataclysm unscathed. They made their way to the shores of the new land along with the other night elves. Though Malfurion mistrusted the Highborne's motivations, he was satisfied that they could cause no real mischief without the Well's energies.",
					"As the weary mass of night elves landed upon the shores of the new land, they found that the holy mountain, Hyjal, had survived the catastrophe. Seeking to establish a new home for themselves, Malfurion and the night elves climbed the slopes of Hyjal and reached its windswept summit. As they descended into the wooded bowl, nestled between the mountain's enormous peaks, they found a small, tranquil lake. To their horror, they found that the lake's waters had been fouled by magic.",
					"Illidan, having survived the Sundering as well, had reached Hyjal summit long before Malfurion and the night elves. In his mad bid to maintain the flows of magic in the world, Illidan had poured his vials, which contained the precious waters from the Well of Eternity, into the mountain lake. ",
					"The Well's potent energies quickly ignited and coalesced into a new Well of Eternity. The exultant Illidan, believing that the new Well was a gift to future generations, was shocked when Malfurion hunted him down. Malfurion explained to his brother that magic was innately chaotic and that its use would inevitably lead to widespread corruption and strife. Still, Illidan refused to relinquish his magical powers.",
					"Knowing full well where Illidan's ruthless schemes would eventually lead, Malfurion decided to deal with his power-crazed brother once and for all. With Cenarius' help, Malfurion sealed Illidan within a vast underground barrow prison, where he would remain chained and powerless until the end of time. To ensure his brother's containment, Malfurion empowered the young warden, Maiev Shadowsong, to be Illidan's personal jailor.",
					"Concerned that destroying the new Well might bring about an even greater catastrophe, the night elves resolved to leave it be. However, Malfurion declared that they would never practice the arts of magic again. Under Cenarius' watchful eye, they began to study the ancient arts of druidism that would enable them to heal the ravaged earth and re-grow their beloved forests at the base of Mount Hyjal.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "default",
				["mapData"] = {
					[84] = {
						0.5180999040603638,
						0.7459894418716431,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-266761"] = {
			["base"] = {
				["title"] = "Research Notes",
				["text"] = {
					"A most encouraging breakthrough! I was finally able to summon a simulacra of life in the form of a small green dragon, but it initially appeared as though this was merely a fluke, as no other wielder could replicate the effect.\r\n\r\nThrough some experimentation--and a sudden shocking heat in my pocket--I discovered a forgotten green dragon scale in that pocket, and the pieces fell into place.  The wand needed a focus to channel the arcane energies through!\r\n\r\nI immediately etched runes into the wand to provide a basic focus, and tried again.  Unfortunately, this only allowed me to summon a small lamb, a mere reflection of the simplest of all arcane manifestations.\r\n\r\nStill, the green scale allowed me to summon the whelp again; I wonder if there may be other items that may act as a focus for the wand, and summon other various simulacra.\r\n\r\nFurther experimentation is, as always, necessary...\r\n\r\n- Willem West",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["mapData"] = {
					[627] = {
						0.4753691554069519,
						0.4083803296089172,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-189753"] = {
			["base"] = {
				["title"] = "Firim in Exile, Epilogue",
				["text"] = {
					"Though the Jailer has been defeated and the Shadowlands made whole again, I find myself unable to celebrate these victories.\r\n\r\nFor I have studied the inner workings of the Sepulcher. Seen the powers with which the Jailer sought to remake reality. And these observations fill me with a fear that shakes the very core of my being.",
					"It is clear to me now that there must be a Zereth for each force of the cosmos, and within them, an inner sanctum akin to the Sepulcher.\r\n\r\nAnd if that is true, then these sanctums must be connected on some fundamental level; a connection that the Jailer sought to exploit.",
					"What he began in the Sepulcher was meant to cascade outward from one Zereth to the next, until all were dominated by his power. The heart of the Shadowlands acting as a doorway to the heart of each cosmic force in turn, one after another bound to his will.\r\n\r\nBut if his scheme was thwarted, then why is my mind so ill at ease?",
					"Because I have seen how fragile the pattern is. How delicate the scales that keep the six forces in balance.\r\n\r\nAnd if the Jailer, in his act of malevolence, left behind but the most imperceptible of cracks in that pattern, then I fear what is tiny now will only grow, until the balance itself is prone to be shattered by another force applying relentless pressure.",
					"I pray that the First Ones anticipated such an eventuality. That they would leave measures in place to preserve their grand design.\r\n\r\nUnless... \r\n\r\nUnless their design was never meant to endure.\r\n\r\nAnd that... that is the possibility that haunts me.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-21581"] = {
			["base"] = {
				["title"] = "Aftermath of the Second War",
				["text"] = {
					"The devastating Second War against the orcish horde left the Alliance of Lordaeron in a state of shock and disarray. The bloodthirsty orcs, led by the mighty warchief, Orgrim Doomhammer, not only smashed their way through the dwarf-held lands of Khaz Modan, but had razed many of Lordaeron's central provinces as well. The unrelenting orcs even succeeded in ravaging the\r\nelves' remote kingdom of Quel'Thalas before their rampage was finally stopped.",
					"The Alliance armies led by Sir Anduin Lothar, Uther the Lightbringer, and Admiral Daelin Proudmoore pushed the orcs south into the shattered land of Azeroth - the first kingdom to fall before the orcs' ruthless onslaught.\r\n\r\nThe Alliance forces under Sir Lothar managed to push Doomhammer's clans out of Lordaeron and back into the orc-controlled lands of Azeroth. Lothar's forces surrounded the orcs' volcanic citadel of Blackrock Spire and laid siege to their defenses.",
					"In a last-ditch effort, Doomhammer and his lieutenants staged a daring charge from the Spire and clashed with Lothar's paladins in the center of the Burning Steppes. Doomhammer and Lothar squared off in a titanic battle that left both mighty combatants battered and drained. Though Doomhammer narrowly succeeded in vanquishing Lothar, the great hero's death did not have the effect the warchief had hoped for.",
					"Turalyon, Lothar's most trusted lieutenant, took up Lothar's bloodstained shield and rallied his grief-stricken brethren for a vicious counterattack. Under the ragged standards of both Lordaeron and Azeroth, Turalyon's troops slaughtered the bulk of Doomhammer's remaining forces in a glorious, but terrible rout.",
					"There was nothing left for the ragged, scattered orc survivors but to flee to the last standing bastion of orcish power - the dark portal.\r\n\r\nTuralyon and his warriors chased the remaining orcs through the festering Swamp of Sorrows and into the corrupted Blasted Lands where the dark portal stood. There, at the foot of the colossal portal, the broken horde and the rugged Alliance clashed in what would be the last, bloodiest battle of the Second War. ",
					"Outnumbered and driven mad by the curse of their bloodlust, the orcs inevitably fell before the wrath of the Alliance. Doomhammer was taken prisoner and escorted to Lordaeron while his broken clans were rounded up and hauled north - back to Lordaeron.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "default",
				["mapData"] = {
					[84] = {
						0.8511185646057129,
						0.2606050372123718,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-145286"] = {
			["base"] = {
				["title"] = "Exile of the High Elves",
				["text"] = {
					"As the centuries passed, the night elves' new society grew strong and expanded throughout the budding forest that they came to call Ashenvale. Many of the creatures and species that were abundant before the Great Sundering, such as furbolgs and quilboars, reappeared and flourished in the land. Under the druids' benevolent leadership, the night elves enjoyed an era of unprecedented peace and tranquility under the stars.",
					"However, many of the original Highborne survivors grew restless. Like Illidan before them, they fell victim to the withdrawal that came from the loss of their coveted magics. They were tempted to tap the energies of the Well of Eternity and exult in their magical practices. Dath'Remar, the brash, outspoken leader of the Highborne, began to mock the druids publicly, calling them cowards for refusing to wield the magic that he said was theirs by right. ",
					"Malfurion and the druids dismissed Dath'Remar's arguments and warned the Highborne that any use of magic would be punishable by death. In an insolent and ill-fated attempt to convince the druids to rescind their law, Dath'Remar and his followers unleashed a terrible magical storm upon Ashenvale.",
					"The druids could not bring themselves to put so many of their kin to death, so they decided to exile the reckless Highborne from their lands. Dath'Remar and his followers, glad to be rid of their conservative cousins at last, boarded a number of specially crafted ships and set sail upon the seas. Though none of them knew what awaited them beyond the waters of the raging Maelstrom, they were eager to establish their own homeland, where they could practice their coveted magics with impunity. ",
					"The Highborne, or Quel'dorei, as Azshara had named them in ages past, would eventually set shore upon the eastern land men would call Lordaeron. They planned to build their own magical kingdom, Quel'Thalas, and reject the night elves' precepts of moon worship and nocturnal activity. Forever after, they would embrace the sun and be known only as the high elves. ",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-270855"] = {
			["base"] = {
				["title"] = "Inconspicuous Note",
				["text"] = {
					"It begins in the 2104059.\r\n\r\nWith a most pleasing sign.\r\n\r\n(These letters will not always rhyme.)",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["mapData"] = {
					[627] = {
						0.5076215267181396,
						0.5387289524078369,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-148502"] = {
			["base"] = {
				["title"] = "Page 9",
				["text"] = {
					"...of sea, spirit and self...",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["mapData"] = {
					[627] = {
						0.4877005815505981,
						0.4198893904685974,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-408631"] = {
			["base"] = {
				["title"] = "Tome of Archived Isles Research",
				["text"] = {
					"PROPERTY OF NIROBIN",
					"<Ever-swirling ink teases indecipherable texts across the parchment. It seems to be mocking your underwhelming research knowledge.>",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "default",
				["mapData"] = {
					[2025] = {
						0.5848108530044556,
						0.3675926923751831,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-145279"] = {
			["base"] = {
				["title"] = "The Kaldorei and the Well of Eternity",
				["text"] = {
					"Ten thousand years before the orcs and humans clashed in their First War, the world of Azeroth cradled only one massive continent surrounded by the infinite, raging seas. That land mass, known as Kalimdor, was home to a number of disparate races and creatures, all vying for survival amongst the savage elements of the waking world. At the dark continent's center was a mysterious lake of incandescent energies.",
					"The lake, which would later be called the Well of Eternity, was the true heart of the world's magic and natural power. Drawing its energies from the infinite Great Dark beyond the world, the Well acted as a mystical fount, sending its potent energies out across the world to nourish life in all its wondrous forms.\r\n\r\nIn time, a primitive tribe of nocturnal humanoids cautiously made their way to the edges of the mesmerizing, enchanted lake.",
					"The feral, nomadic humanoids, drawn by the Well's strange energies, built crude homes upon its tranquil shores. Over time, the Well's cosmic power affected the strange tribe, making them strong, wise and virtually immortal. The tribe adopted the name Kaldorei, which meant -children of the stars- in their native tongue. To celebrate their budding society, they constructed great structures and temples around the lake's periphery.",
					"The Kaldorei, or night elves as they would later be known, worshipped the moon goddess, Elune, and believed that she slept within the Well's shimmering depths during the daylight hours. The early night elf priests and seers studied the Well with an insatiable curiosity, driven to plumb its untold secrets and power. As their society grew, the night elves explored the\r\nbreadth of Kalimdor and encountered its myriad denizens.",
					"The only creatures that gave them pause were the ancient and powerful dragons. Though\r\nthe great serpentine beasts were often reclusive, they did much to safeguard the known lands from potential threats. The night elves believed that the dragons held themselves to be the protectors of the world, and that they and their secrets were best left alone.",
					"In time, the night elves' curiosity led them to meet and befriend a number of powerful entities, not the least of which was Cenarius, a mighty demi-god of the primordial forestlands. The great-hearted Cenarius grew fond of the inquisitive night elves and spent a great deal of time teaching them about the natural world. The tranquil Kaldorei developed a strong empathy for the living forests of Kalimdor and reveled in the harmonious balance of nature.",
					"Yet, as the seemingly endless ages passed, the night elves' civilization expanded both territorially and culturally. Their temples, roads, and dwelling places stretched across the breadth of the dark continent. Azshara, the night elves' beautiful and gifted Queen, built an immense, wondrous palace on the Well's shore that housed her favored servitors within its bejeweled halls. ",
					"Her servitors, whom she called the Quel'dorei or -high-borne,- doted on her every command and believed themselves to be greater than the rest of their lower-caste brethren. Though Queen Azshara was loved equally by all of her people, the high-borne were secretly hated by the jealous masses.\r\n\r\nSharing the priests' curiosity towards the Well of Eternity, Azshara ordered the educated high-borne to plumb its secrets and reveal its true purpose in the world. ",
					"The high-borne buried themselves in their work and studied the Well ceaselessly. In time they developed the ability to manipulate and control the Well's cosmic energies. As their reckless experiments progressed, the high-borne found that they could use their newfound powers to either create or destroy at their leisure. The hapless high-borne had stumbled upon primitive magic and were now resolved to devote themselves to its mastery.",
					"Although they agreed that magic was inherently dangerous if handled irresponsibly, Azshara and her highborne began to practice their spellcraft with reckless abandon. Cenarius and many of the wizened night elf scholars warned that only calamity would result from toying with the clearly volatile arts of magic. But, Azshara and her followers stubbornly continued to expand their burgeoning powers.",
					"As their powers grew, a distinct change came over Azshara and the high-borne. The haughty, aloof upper class became increasingly callous and cruel towards their fellow night elves. A dark, brooding pall veiled Azshara's once entrancing beauty. She began to withdraw from her loving subjects and refused to interact with any but her trusted high-borne priests.",
					"A young, brazen scholar named Furion Stormrage, who had spent much of his time studying the Well's effects, began to suspect that a terrible power was corrupting the high-borne and his beloved Queen. Though he could not conceive the evil that was to come, he knew that the night elves' lives would soon be changed forever....",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-406321"] = {
			["base"] = {
				["title"] = "Tome of Archived Isles Research",
				["text"] = {
					"Tome of Archived Found Relic Studies\r\n\r\nPROPERTY OF NIROBIN",
					"Information acquired from the Lost Atheneum, Forbidden Reach, Dragon Isles, Azeroth:\r\n\r\nThis goblet is not enveloped in merriment and joy like one would expect but sorrow--sorrow born of its owner's sense of impending doom.",
					'Information acquired from the The Riverbed, Ohn\'ahran Plains, Dragon Isles, Azeroth:\r\n\r\nData from the Riverbed site suggests a caravan left Maruukai on a diplomatic endeavor led by their Khanam Dochra, or "Favored Daughter."',
					"<Murky swirls of ink mock your lack of clue-finding effort. You'll need to continue working with Nirobin at Igira's Watch to fill in this page.>",
					"Information acquired from the Gaze of Neltharion, Zaralek Cavern, Dragon Isles, Azeroth:\r\n\r\nScandalous! The data suggests the group of niffen bandits buried a fabulous chest of treasure only for some of their company to dig it up again and bury it elsewhere in secrecy from the others.\r\n\r\nDeplorable! After being buried again in secret, these shady double-crossers were, in fact, double-crossed themselves! A few of their number dug up the chest and relocated it yet again!\r\n\r\nAnd then--how exhausting--the double-crossers of the double-crossing group were, yes, double-crossed! And that cycle continued several dozen more times thereafter with the treasure being dug up and relocated each time.\r\n\r\nAs far as I can tell, its final resting place was ultimately lost by all involved.",
					"Information acquired from the Concord Observatory, Waking Shores, Dragon Isles, Azeroth:\r\n\r\nThese Concord astronomers believed their telescopic contraptions gave them the ability to view the future. I cannot confirm the inventions' success as the data from the site is mostly abstraction and vague theories that would be hard to disprove.",
					"Information acquired from the Winglord's Perch, Forbidden Reach, Dragon Isles, Azeroth:\r\n\r\nI've rebuilt a fragment of a letter from a child living on Winglord's Perch. It conveys loneliness, pleading the recipient to return.\r\n\r\nThrough this child's other writings, I've learned that all able-bodied drakonid living nearby were drafted into a conflict on the mainland. Even the youth were not spared.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "default",
				["mapData"] = {
					[2025] = {
						0.5851861834526062,
						0.3676294684410095,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-145298"] = {
			["base"] = {
				["title"] = "The Alliance of Lordaeron",
				["text"] = {
					"Lord Lothar rallied the remnants of Azeroth's armies after their defeat at Stormwind Keep, and then launched a massive exodus across the sea to the northern kingdom of Lordaeron. Convinced that the Horde would overcome all of humanity if left unchecked, the leaders of the seven human nations met and agreed to unite in what would become known as the Alliance of Lordaeron. ",
					"For the first time in nearly three thousand years, the disparate nations of Arathor were once again united under a common banner. Appointed as Supreme Commander of the Alliance forces, Lord Lothar prepared his armies for the coming of the Horde.",
					"Aided by his lieutenants, Uther the Lightbringer, Admiral Daelin Proudmoore, and Turalyon, Lothar was able to convince Lordaeron's demi-human races of the impending threat as well. The Alliance succeeded in gaining the support of the stoic dwarves of Ironforge and a small number of high elves of Quel'Thalas.",
					"The elves, led at that time by Anasterian Sunstrider, were largely uninterested in the coming conflict. However, they were duty-bound to aid Lothar because he was the last descendent of the Arathi bloodline, which had aided the elves in ages past.",
					"The Horde, now led by Warchief Doomhammer, brought in ogres from its homeworld of Draenor and conscripted the disenfranchised Amani forest trolls into its fold. Setting out on a massive campaign to overrun the dwarf kingdom of Khaz Modan and the southern reaches of Lordaeron, the Horde effortlessly decimated all opposition.",
					"The epic battles of the Second War ranged from large-scale naval skirmishes to massive aerial dogfights. Somehow the Horde had unearthed a powerful artifact known as the Demon Soul and used it to enslave the ancient Dragonqueen, Alexstrasza. Threatening to destroy her precious eggs, the Horde forced Alexstrasza to send her grown children to war. The noble red dragons were forced to fight for the Horde, and fight they did.",
					"The war raged across the continents of Khaz Modan, Lordaeron, and Azeroth itself. As part of its northern campaign, the Horde succeeded in burning down the borderlands of Quel'Thalas, thereby ensuring the elves' final commitment to the Alliance's cause. The greater cities and townships of Lordaeron were razed and devastated by the conflict. Despite the absence of reinforcements and overwhelming odds, Lothar and his allies succeeded in holding their enemies at bay.",
					"However, during the final days of the Second War, as the Horde's victory over the Alliance seemed almost assured, a terrible feud erupted between the two most powerful orcs on Azeroth. As Doomhammer prepared his final assault against the Capital City of Lordaeron - an assault that would have crushed the last remnants of the Alliance - Gul'dan and his followers abandoned their posts and set out to sea.",
					"The bewildered Doomhammer, having lost nearly half of his standing forces to Gul'dan's treachery, was forced to pull back and forsake his greatest chance at victory over the Alliance.",
					"The power-hungry Gul'dan, obsessed with obtaining godhood itself, set out on a desperate search for the undersea Tomb of Sargeras that he believed held the secrets of ultimate power. Having already doomed his fellow orcs to become the slaves of the Burning Legion, Gul'dan thought nothing of his supposed duty to Doomhammer.",
					"Backed by the Stormreaver and Twilight's Hammer clans, Gul'dan succeeded in raising the Tomb of Sargeras from the sea floor. However, when he opened the ancient, flooded vault, he found only crazed demons awaiting him.",
					"Seeking to punish the wayward orcs for their costly betrayal, Doomhammer sent his forces to kill Gul'dan and bring the renegades back into the fold. For his recklessness, Gul'dan was torn apart by the maddened demons he had set loose. With their leader dead, the renegade clans quickly fell before Doomhammer's enraged legions.",
					"Though the rebellion had been quelled, the Horde was unable to recoup the terrible losses it had suffered. Gul'dan's betrayal had afforded the Alliance not only hope, but also time to regroup and retaliate.",
					"Lord Lothar, seeing that the Horde was fracturing from within, gathered the last of his forces and pushed Doomhammer south, back into the shattered heartland of Stormwind. There, the Alliance forces trapped the retreating Horde within the volcanic fortress of Blackrock Spire. Though Lord Lothar fell in battle at the Spire's base, his lieutenant, Turalyon, rallied the Alliance forces at the eleventh hour and drove the Horde back into the abysmal Swamp of Sorrows. ",
					"Turalyon's forces succeeded in destroying the Dark Portal, the mystical gateway that connected the orcs to their homeworld of Draenor. Cut off from its reinforcements and fractured by infighting, the Horde finally buckled in upon itself and fell before the might of the Alliance.",
					"The scattered orc clans were quickly rounded up and placed within guarded internment camps. Though it seemed that the Horde had been defeated for good, some remained highly skeptical that peace would last. Khadgar, now an Archmage of some renown, convinced the Alliance high command to build the fortress of Nethergarde that would watch over the ruins of the Dark Portal and ensure that there would be no further invasions from Draenor.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-145290"] = {
			["base"] = {
				["title"] = "The Guardians of Tirisfal",
				["text"] = {
					"With the absence of trolls in the northlands, the elves of Quel'Thalas bent their efforts towards rebuilding their glorious homeland. The victorious armies of Arathor returned home to southlands of Strom. ",
					"The human society of Arathor grew and prospered, yet Thoradin, fearful that his kingdom would splinter apart if it overextended itself, maintained that Strom was the center of the Arathorian empire. After many peaceful years of growth and commerce, mighty Thoradin departed on one final quest, never to return, leaving Arathor's younger generation free to expand the empire beyond the lands of Strom.",
					"The original hundred magi, who were tutored in the ways of magic by the elves, expanded their powers and studied the mystic disciplines of spell-weaving in much greater detail. These magi, initially chosen for their strong wills and noble spirits, had always practiced their magic with care and responsibility; however, they passed their secrets and powers onto a newer generation that had no concept of the rigors of war or the necessity for self-restraint. ",
					"These younger magicians began to practice magic for personal gain rather than out of any responsibility towards their fellows. ",
					"As the empire grew and expanded into new lands, the young magicians also spread out into the southlands. Wielding their mystical powers, the magicians protected their brethren from the wild creatures of the land and made it possible for new city-states to be constructed in the wilderness. Yet, as their powers grew, the magicians became ever more conceited and isolated from the rest of society.",
					"The second Arathorian city-state of Dalaran was founded in the lands north of Strom. Many fledgling wizards left the restraining confines of Strom behind and traveled to Dalaran, where they hoped to use their new powers with greater freedom. These magicians used their skills to build up the enchanted spires of Dalaran and reveled in the pursuit of their studies. ",
					"The citizens of Dalaran tolerated the magicians' endeavors and built up a bustling economy under the protection of their magic-using defenders. Yet, as more and more magicians practiced their arts, the fabric of reality around Dalaran began to weaken and tear.",
					"The sinister agents of the Burning Legion, who had been banished when the Well of Eternity collapsed, were lured back into the world by the heedless spellcasting of the magicians of Dalaran. Though these relatively weak demons did not appear in force, they did sew considerable confusion and chaos within the streets of Dalaran. ",
					"Most of these demonic encounters were isolated events, and the ruling Magocrats did what they could to keep such events hidden from the public. The most powerful magicians were sent to capture the elusive demons, but they often found themselves hopelessly outmatched by the lone agents of the mighty Legion.",
					"After a few months the superstitious peasantry began to suspect that their sorcerous rulers were hiding something terrible from them. Rumors of revolution began to sweep through the streets of Dalaran as the paranoid citizenry questioned the motives and practices of the magicians they had once admired. The Magocrats, fearing that the peasants would revolt and that Strom would take action against them, turned to the only group they felt would understand their particular problem: the elves.",
					"Upon hearing the Magocrats' news of demonic activity in Dalaran, the elves quickly dispatched their mightiest wizards to the human lands. The elven wizards studied the energy currents in Dalaran and made detailed reports of all demonic activity that they beheld. They concluded that although there were only a few demons loose in the world, the Legion itself would remain a dire threat so long as humans continued to wield the forces of magic. ",
					"The Council of Silvermoon, which ruled over the elves of Quel'Thalas, entered into a secret pact with the Magocrat lords of Dalaran. The elves told the Magocrats about the history of ancient Kalimdor and of the Burning Legion, a history which still threatened the world. They informed the humans that so long as they used magic, they would need to protect their citizenry from the malicious agents of the Legion. ",
					"The Magocrats proposed the notion of empowering a single mortal champion who would utilize their powers in order to fight a never-ending secret war against the Legion. It was stressed that the majority of mankind could never know about the Guardians or the threat of the Legion for fear that they would riot in fear and paranoia. The elves agreed to the proposal and founded a secret society that would watch over the selection of the Guardian and help to stem the rise of chaos in the world.",
					"The society held its secret meetings in the shadowed Tirisfal Glades, where the high elves had first settled in Lordaeron. Thus, they named the secret sect the Guardians of Tirisfal. The mortal champions who were chosen to be Guardians were imbued with incredible powers of both elven and human magic. Though there would only ever be one Guardian at a time, they held such vast power that they could single-handedly fight back the Legion's agents wherever they were found in the world. ",
					"The Guardian power was so great that only the Council of Tirisfal was allowed to choose potential successors to the mantle of Guardianship. Whenever a Guardian grew too old, or wearied of the secret war against chaos, the Council chose a new champion, and under controlled conditions, formally channeled the Guardian power into its new agent.",
					"As the generations passed, Guardians defended the masses of humanity from the invisible threat of the Burning Legion throughout the lands of Arathor and Quel'Thalas. Arathor grew and prospered while the use of magic spread throughout the empire. Meanwhile, the Guardians kept careful watch for signs of demonic activity. ",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-142250"] = {
			["base"] = {
				["title"] = "Aegwynn and the Dragon Hunt",
				["text"] = {
					"As the politics and rivalries of the seven human nations waxed and waned, the line of Guardians kept its constant vigil against chaos. There were many Guardians over the years, but only one ever held the magical powers of Tirisfal at any given time. One of the last Guardians of the age distinguished herself as a mighty warrior against the shadow. ",
					"Aegwynn, a fiery human girl, won the approbation of the Order and was given the mantle of Guardianship. Aegwynn vigorously worked to hunt down and eradicate demons wherever she found them, but she often questioned the authority of the male-dominated Council of Tirisfal.",
					"She believed that the ancient elves and the elderly men who presided over the council were too rigid in their thinking and not farsighted enough to put a decisive end to the conflict against chaos. Impatient with lengthy discussion and debate, she yearned to prove herself worthy to her peers and superiors, and as a result frequently chose valor over wisdom in crucial situations.",
					"As her mastery over the cosmic power of Tirisfal grew, Aegwynn became aware of a number of powerful demons that stalked the icy northern continent of Northrend. Traveling to the distant north, Aegwynn tracked the demons into the mountains. There, she found that the demons were hunting one of the last surviving dragonflights and draining the ancient creatures of their innate magic. ",
					"The mighty dragons, who had fled from the ever-advancing march of mortal societies, found themselves too evenly matched against the dark magics of the Legion. Aegwynn confronted the demons, and with help from the noble dragons, eradicated them. Yet, as the last demon was banished from the mortal world, a great storm erupted throughout the north.",
					" An enormous dark visage appeared in the sky above Northrend. Sargeras, the demon king and lord of the Burning Legion, appeared before Aegwynn and bristled with hellish energy. He informed the young Guardian that the time of Tirisfal was about to come to an end and that the world would soon bow before the onslaught of the Legion. ",
					"The proud Aegwynn, believing herself to be a match for the menacing god, unleashed her powers against Sargeras' avatar. With disconcerting ease, Aegwynn battered the demonlord with her powers and succeeded in killing his physical shell. Fearing that Sargeras' spirit would linger on, Aegwynn locked the ruined husk of his body within one of the ancient halls of Kalimdor that had been blasted to the bottom of the sea when the Well of Eternity collapsed. ",
					"Aegwynn would never know that she had done exactly as Sargeras had planned. She had inadvertently sealed the fate of the mortal world, for Sargeras, at the time of his corporeal death, had transferred his spirit into Aegwynn's weakened body. Unbeknownst to the young Guardian, Sargeras would remain cloaked within the darkest recesses of her soul for many long years.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-455269"] = {
			["base"] = {
				["title"] = "Notes On The Machine Speakers: Fragment I",
				["text"] = {
					"The most vital titan machinery is carefully guarded and kept sequestered in isolated subterranean chambers. The greatest of these is the Hall of Awakening, where the Awakening Machine is kept. \r\n\r\nIn theory, golems can speak, but they do not possess sentience. The titans preferred that they perform their duties in silence, and modern Machine Speakers uphold that directive.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["mapData"] = {
					[2214] = {
						0.4589266777038574,
						0.2883739471435547,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-145283"] = {
			["base"] = {
				["title"] = "The War of the Ancients",
				["text"] = {
					"The Highborne's reckless use of magic sent ripples of energy spiraling out from the Well of Eternity and into the Great Dark Beyond. The streaming ripples of energy were felt by terrible alien minds. Sargeras - the Great Enemy of all life, the Destroyer of Worlds - felt the potent ripples and was drawn to their distant point of origin. ",
					"Spying the primordial world of Azeroth and sensing the limitless energies of the Well of Eternity, Sargeras was consumed by an insatiable hunger. The great dark god of the Nameless Void resolved to destroy the fledgling world and claim its energies as his own. ",
					"Sargeras gathered his vast Burning Legion and made his way towards the unsuspecting world of Azeroth. The Legion was comprised of a million screaming demons, all ripped from the far corners of the universe, and the demons hungered for conquest. Sargeras' lieutenants, Archimonde the Defiler and Mannoroth the Destructor, prepared their infernal minions to strike. ",
					"Queen Azshara, overwhelmed by the terrible ecstasy of her magic, fell victim to Sargeras' undeniable power and agreed to grant him entrance to her world. Even her Highborne servitors gave themselves over to magic's inevitable corruption and began to worship Sargeras as their god. To show their allegiance to the Legion, the Highborne aided their queen in opening a vast, swirling portal within the depths of the Well of Eternity. ",
					"Once all his preparations had been made, Sargeras began his catastrophic invasion of Azeroth. The warrior-demons of the Burning Legion stormed into the world through the Well of Eternity and laid siege to the night elves' sleeping cities. Led by Archimonde and Mannoroth, the Legion swarmed over the lands of Kalimdor, leaving only ash and sorrow in its wake. ",
					"The demon warlocks called down searing infernals that crashed like hellish meteors into the graceful spires of Kalimdor's temples. A band of burning, bloodletting killers known as the Doomguard marched across Kalimdor's fields, slaughtering everyone in their path. Packs of wild, demonic felhounds ravaged the countryside unopposed. Though the brave Kaldorei warriors rushed to defend their ancient homeland, they were forced to give ground, inch by inch, before the fury of the Legion's onslaught.",
					"It fell to Malfurion Stormrage to find help for his beleaguered people. Stormrage, whose own brother, Illidan, practiced the Highborne's magics, was incensed by the growing corruption amongst the upper class. Convincing Illidan to forsake his dangerous obsession, Malfurion set out to find Cenarius and muster a resistance force. ",
					"The beautiful young priestess, Tyrande, agreed to accompany the brothers in the name of Elune. Though Malfurion and Illidan shared a love for the idealistic priestess, Tyrande's heart belonged to Malfurion alone. Illidan resented his brother's budding romance with Tyrande, but knew that his heartache was nothing compared to the pain of his magical addiction. ",
					"Illidan, who had grown dependent on magic's empowering energies, struggled to keep control of his nearly overwhelming hunger to tap the Well's energies once again. However, with Tyrande's patient support, he was able to restrain himself and help his brother find the reclusive demigod, Cenarius. ",
					"Cenarius, who dwelt within the sacred Moonglades of the distant Mount Hyjal, agreed to help the night elves by finding the ancient dragons and enlisting their aid. The dragons, led by the great red leviathan, Alexstrasza, agreed to send their mighty flights to engage the demons and their infernal masters.",
					"Cenarius, calling on the spirits of the enchanted forests, rallied an army of ancient tree-men and led them against the Legion in a daring ground assault. As the night elves' allies converged upon Azshara's temple and the Well of Eternity, all-out warfare erupted. Despite the strength of their newfound allies, Malfurion and his colleagues realized that the Legion could not be defeated by martial strength alone. ",
					"As the titanic battle raged around Azshara's capital city, the delusional queen waited in anticipation for Sargeras' arrival. The lord of the Legion was preparing to pass through the Well of Eternity and enter the ravaged world. As his impossibly huge shadow drew ever closer to the Well's surface, Azshara gathered the most powerful of her Highborne followers. Only by linking their magics together in one focused spell would they be able to create a gateway large enough for Sargeras to enter.",
					"As the battle raged across the burning fields of Kalimdor, a terrible turn of events unfolded. The details of the event have been lost to time, but it is known that Neltharion, the Dragon Aspect of the Earth, went mad during a critical engagement against the Burning Legion. He began to split apart as flame and rage erupted from his dark hide. Renaming himself Deathwing, the burning dragon turned on his brethren and drove the five dragonflights from the field of battle. ",
					"Deathwing's sudden betrayal was so destructive that the five dragonflights never truly recovered. Wounded and shocked, Alexstrasza and the other noble dragons were forced to abandon their mortal allies. Malfurion and his companions, now hopelessly outnumbered, barely survived the ensuing onslaught. ",
					"Malfurion, convinced that the Well of Eternity was the demons' umbilical link to the physical world, insisted that it should be destroyed. His companions, knowing that the Well was the source of their immortality and powers, were horrified by the rash notion. Yet Tyrande saw the wisdom of Malfurion's theory, so she convinced Cenarius and their comrades to storm Azshara's temple and find a way to shut the Well down for good.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-382168"] = {
			["base"] = {
				["title"] = "The Ruby Feast!",
				["text"] = {
					"Come one, come all!\r\n\r\nA wondrous feast is happening in the Ruby quarter of Valdrakken! Each day, revered chefs Rumiastrasza and Morsel will tantalize your palettes with a variety of new and exciting foods from across the Isles and Azeroth!\r\n\r\nCome down and experience the glorious flavor of life itself!",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["mapData"] = {
					[2112] = {
						0.4633252024650574,
						0.4529389142990112,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-175760"] = {
			["base"] = {
				["title"] = "Rise of the Blood Elves",
				["text"] = {
					"At this time, the undead Scourge had essentially transformed Lordaeron and Quel'Thalas into the toxic Plaguelands. There were only a few pockets of Alliance resistance forces left. One such group, consisting primarily of high elves, was led by the last of the Sunstrider dynasty: Prince Kael'thas. ",
					"Kael, an accomplished wizard himself, grew wary of the failing Alliance. The high elves grieved for the loss of their homeland and decided to call themselves blood elves in honor of their fallen people. Yet as they worked to keep the Scourge at bay, they suffered greatly at being cut off from the Sunwell that had empowered them. ",
					"Desperate to find a cure for his people's racial addiction to magic, Kael did the unthinkable: he embraced his people's Highborne ancestry and joined with Illidan and his naga in hopes of finding a new magical power source upon which to feed. The remaining Alliance commanders condemned the blood elves as traitors and cast them out for good.",
					"With no place left to go, Kael and his blood elves followed Lady Vashj to Outland to help contest the warden, Maiev, who had recaptured Illidan. With the combined naga and blood elf forces, they managed to defeat Maiev and free Illidan from her grasp. Based in Outland, Illidan gathered his forces for a second strike against the Lich King and his fortress of Icecrown. ",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "default",
				["mapData"] = {
					[89] = {
						0.4977885484695435,
						0.3322972655296326,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-175746"] = {
			["base"] = {
				["title"] = "The Alliance of Lordaeron",
				["text"] = {
					"Lord Lothar rallied the remnants of Azeroth's armies after their defeat at Stormwind Keep, and then launched a massive exodus across the sea to the northern kingdom of Lordaeron. Convinced that the Horde would overcome all of humanity if left unchecked, the leaders of the seven human nations met and agreed to unite in what would become known as the Alliance of Lordaeron. ",
					"For the first time in nearly three thousand years, the disparate nations of Arathor were once again united under a common banner. Appointed as Supreme Commander of the Alliance forces, Lord Lothar prepared his armies for the coming of the Horde.",
					"Aided by his lieutenants, Uther the Lightbringer, Admiral Daelin Proudmoore, and Turalyon, Lothar was able to convince Lordaeron's demi-human races of the impending threat as well. The Alliance succeeded in gaining the support of the stoic dwarves of Ironforge and a small number of high elves of Quel'Thalas.",
					"The elves, led at that time by Anasterian Sunstrider, were largely uninterested in the coming conflict. However, they were duty-bound to aid Lothar because he was the last descendent of the Arathi bloodline, which had aided the elves in ages past.",
					"The Horde, now led by Warchief Doomhammer, brought in ogres from its homeworld of Draenor and conscripted the disenfranchised Amani forest trolls into its fold. Setting out on a massive campaign to overrun the dwarf kingdom of Khaz Modan and the southern reaches of Lordaeron, the Horde effortlessly decimated all opposition.",
					"The epic battles of the Second War ranged from large-scale naval skirmishes to massive aerial dogfights. Somehow the Horde had unearthed a powerful artifact known as the Demon Soul and used it to enslave the ancient Dragonqueen, Alexstrasza. Threatening to destroy her precious eggs, the Horde forced Alexstrasza to send her grown children to war. The noble red dragons were forced to fight for the Horde, and fight they did.",
					"The war raged across the continents of Khaz Modan, Lordaeron, and Azeroth itself. As part of its northern campaign, the Horde succeeded in burning down the borderlands of Quel'Thalas, thereby ensuring the elves' final commitment to the Alliance's cause. The greater cities and townships of Lordaeron were razed and devastated by the conflict. Despite the absence of reinforcements and overwhelming odds, Lothar and his allies succeeded in holding their enemies at bay.",
					"However, during the final days of the Second War, as the Horde's victory over the Alliance seemed almost assured, a terrible feud erupted between the two most powerful orcs on Azeroth. As Doomhammer prepared his final assault against the Capital City of Lordaeron - an assault that would have crushed the last remnants of the Alliance - Gul'dan and his followers abandoned their posts and set out to sea.",
					"The bewildered Doomhammer, having lost nearly half of his standing forces to Gul'dan's treachery, was forced to pull back and forsake his greatest chance at victory over the Alliance.",
					"The power-hungry Gul'dan, obsessed with obtaining godhood itself, set out on a desperate search for the undersea Tomb of Sargeras that he believed held the secrets of ultimate power. Having already doomed his fellow orcs to become the slaves of the Burning Legion, Gul'dan thought nothing of his supposed duty to Doomhammer.",
					"Backed by the Stormreaver and Twilight's Hammer clans, Gul'dan succeeded in raising the Tomb of Sargeras from the sea floor. However, when he opened the ancient, flooded vault, he found only crazed demons awaiting him.",
					"Seeking to punish the wayward orcs for their costly betrayal, Doomhammer sent his forces to kill Gul'dan and bring the renegades back into the fold. For his recklessness, Gul'dan was torn apart by the maddened demons he had set loose. With their leader dead, the renegade clans quickly fell before Doomhammer's enraged legions.",
					"Though the rebellion had been quelled, the Horde was unable to recoup the terrible losses it had suffered. Gul'dan's betrayal had afforded the Alliance not only hope, but also time to regroup and retaliate.",
					"Lord Lothar, seeing that the Horde was fracturing from within, gathered the last of his forces and pushed Doomhammer south, back into the shattered heartland of Stormwind. There, the Alliance forces trapped the retreating Horde within the volcanic fortress of Blackrock Spire. Though Lord Lothar fell in battle at the Spire's base, his lieutenant, Turalyon, rallied the Alliance forces at the eleventh hour and drove the Horde back into the abysmal Swamp of Sorrows. ",
					"Turalyon's forces succeeded in destroying the Dark Portal, the mystical gateway that connected the orcs to their homeworld of Draenor. Cut off from its reinforcements and fractured by infighting, the Horde finally buckled in upon itself and fell before the might of the Alliance.",
					"The scattered orc clans were quickly rounded up and placed within guarded internment camps. Though it seemed that the Horde had been defeated for good, some remained highly skeptical that peace would last. Khadgar, now an Archmage of some renown, convinced the Alliance high command to build the fortress of Nethergarde that would watch over the ruins of the Dark Portal and ensure that there would be no further invasions from Draenor.",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "default",
				["mapData"] = {
					[84] = {
						0.8523939847946167,
						0.2619211077690125,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["Item-145303"] = {
			["base"] = {
				["title"] = "Kel'Thuzad and the Forming of the Scourge",
				["text"] = {
					"There were a handful of powerful individuals scattered throughout the world who heard the Lich King's mental summons from Northrend. Most notable of them was the archmage of Dalaran, Kel'Thuzad, who was one of senior members of the Kirin Tor, Dalaran's ruling council. He had been considered a maverick for years due to his insistence on studying the forbidden arts of necromancy. ",
					"Driven to learn all he could of the magical world and its shadowy wonders, he was frustrated by what he saw as his peers' outmoded and unimaginative precepts. Upon hearing the powerful summons from Northrend, the archmage bent all of his considerable will to communing with the mysterious voice. Convinced that the Kirin Tor was too squeamish to seize the power and knowledge inherent in the dark arts, he resigned himself to learn what he could from the immensely powerful Lich King.",
					"Leaving behind his fortune and prestigious political standing, Kel'Thuzad abandoned the ways of the Kirin Tor and left Dalaran forever. Prodded by the Lich King's persistent voice in his mind, he sold his vast holdings and stored away his fortunes. Traveling alone over many leagues of both land and sea, he finally reached the frozen shores of Northrend.",
					"Intent on reaching Icecrown and offering his services to the Lich King, the archmage passed through the ravaged, war-torn ruins of Azjol-Nerub. Kel'Thuzad saw firsthand the scope and ferocity of Ner'zhul's power. He began to realize that allying himself with the mysterious Lich King might be both wise and potentially fruitful.",
					"After long months of trekking through the harsh arctic wastelands, Kel'Thuzad finally reached the dark glacier of Icecrown. He boldly approached Ner'zhul's dark citadel and was shocked when the undead guardsmen silently let him pass as though he was expected. ",
					"Kel'Thuzad descended deep into the cold earth and found his way down to the bottom of the glacier. There, in the endless cavern of ice and shadows, he prostrated himself before the Frozen Throne and offered his soul to the dark lord of the dead.",
					"The Lich King was pleased with his latest conscript. He promised Kel'Thuzad immortality and great power in exchange for his loyalty and obedience. Eager for dark knowledge and power, Kel'Thuzad accepted his first great mission: to go into the world of men and found a new religion that would worship the Lich King as a god.",
					"To help the archmage accomplish his mission, Ner'zhul left Kel'Thuzad's humanity intact. The aged yet still charismatic wizard was charged with using his powers of illusion and persuasion to lull the downtrodden, disenfranchised masses of Lordaeron into a state of trust and belief. Then, once he had their attention, he would offer them a new vision of what society could be - and a new figurehead to call their king.",
					"Kel'Thuzad returned to Lordaeron in disguise, and over the span of three years, he used his fortune and intellect to gather a clandestine brotherhood of like-minded men and women. The brotherhood, which he called the Cult of the Damned, promised its acolytes social equality and eternal life on Azeroth in exchange for their service and obedience to Ner'zhul. ",
					"As the months passed, Kel'Thuzad found many eager volunteers for his new cult amongst the tired, overburdened laborers of Lordaeron. It was surprisingly easy for Kel'Thuzad to achieve his goal: namely, to transfer the citizens' faith in the Holy Light into belief in Ner'zhul's dark shadow. As the Cult of the Damned grew in size and influence, Kel'Thuzad made sure to hide its workings from the authorities of Lordaeron.",
					"With Kel'Thuzad's success in Lordaeron, the Lich King made the final preparations for his assault against human civilization. Placing his plague-energies into a number of portable artifacts called plague-cauldrons, Ner'zhul ordered Kel'Thuzad to transport the cauldrons to Lordaeron, where they would be hidden within various cult-controlled villages. ",
					"The cauldrons, protected by the loyal cultists, would then act as plague-generators, sending the plague seeping out across the unsuspecting farmlands and cities of northern Lordaeron.",
					"The Lich King's plan worked perfectly. Many of Lordaeron's northern villages were contaminated almost immediately. Just as in Northrend, the citizens who contracted the plague died and arose as the Lich King's willing slaves. ",
					"The cultists under Kel'Thuzad were eager to die and be raised again in their dark lord's service. They exulted in the prospect of immortality through undeath. As the plague spread, more and more feral zombies arose in the northlands. Kel'Thuzad looked upon the Lich King's growing army and named it the Scourge, for soon it would march upon the gates of Lordaeron and scour humanity from the face of the world. ",
				},
				["singlePage"] = false,
				["pageCount"] = 0,
				["material"] = "Parchment",
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},
		["GameObject-258986"] = {
			["base"] = {
				["title"] = "The Battle for Broken Shore",
				["text"] = {
					"Dedicated to the brave warriors of the Alliance that fell during the Battle for Broken Shore.\r\n\r\nIn the dawn, the heroes stood,\r\nagainst the tide of Stormwind's foes.\r\nNow in dusk, their time to rest,\r\nreleased at last from worldly woes.\r\n\r\nBravest ally, daughter and son,\r\nin the Light, we all are one.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "Bronze",
				["mapData"] = {
					[84] = {
						0.4693185091018677,
						0.6420676708221436,
					},
				},
				["isObtainable"] = true,
				["isClassSpecific"] = false,
			},
		},

		--put stuff above here
	},
};

-- we could just join at the top, but this marks it very clearly where it's separate
LK["LocalData"]["questItems"] = {
	[136785] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[72048] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[72056] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[223892] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[216669] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[71715] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[217352] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[71096] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[228560] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[225655] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[211971] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[222925] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[72049] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[72057] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[71953] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[219211] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[225212] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[71716] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[212528] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[225718] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[211972] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[136785] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[219451] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[71637] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[223896] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[211974] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[216720] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[211783] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[72058] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[214609] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[219324] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[220483] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[71979] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[219499] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[217610] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[215467] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[222976] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[210435] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[216658] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[71638] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[187226] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[219198] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[211769] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[216659] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[71952] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[228581] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[219453] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[219468] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[211865] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[218739] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[217993] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[210878] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[217708] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[222953] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[216660] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[218454] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[212755] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[225217] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[217990] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[211872] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[211962] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[211073] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[217042] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[218455] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[216693] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[224397] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[217614] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[190579] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[73269] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[206518] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[213233] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[213630] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[216694] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[217694] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[206601] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[211535] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[225206] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[214615] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[217695] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[206519] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[71951] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[212330] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[211774] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[224395] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[206203] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[214616] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[211775] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[217696] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[179358] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[223889] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[222951] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[219284] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[211870] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[224396] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[225555] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[215457] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[216697] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[225950] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[222920] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[212177] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[217015] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[224778] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[217995] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[211475] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[225715] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[220737] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[212158] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[218740] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[225709] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[223890] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[191140] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[217699] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[225716] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[211975] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[212159] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[213191] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[217165] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[72018] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[71635] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[71636] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[213271] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[218113] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
	[215447] = {
		["isQuestItem"] = true,
		["isObtainable"] = true,
		["isClassSpecific"] = false,
	},
};

end

if LOCALE == "esES" or LOCALE == "esMX" then
	-- Spanish text data goes here

LK["LocalData"] = {
	["text"] = {
		["Item-225429"] = {
			["base"] = {
				["title"] = "Las verdes colinas de Tuercespina - Página 24",
				["text"] = {
					"Nuestros disparos, que dirigimos apresuradamente, fueron suficientes para comprar la huida de Barnil. Barnil lanzó un clamor colina abajo y se volvió a unir al grupo. Corrimos a refugiarnos en la jungla; una manada de feroces raptores colazote acechaba todos nuestros movimientos.\r\n\r\nLos cazadores eran, ahora, los cazados.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225418"] = {
			["base"] = {
				["title"] = "Las verdes colinas de Tuercespina - Página 8",
				["text"] = {
					"Durante semejante tropiezo, Erlgadin posó su mano pesadamente sobre el hombro de Barnil. Ajeck y yo apenas advertimos la escena, suponiendo que el hombre solo estaba dando una merecida reprimenda a Barnil por su descuido. No obstante, Erlgadin hizo un gesto lento con la cabeza en dirección a un árbol caído. Desde allí nos acechaban dos ojos negros penetrantes justo encima de un par de afilados colmillos.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225427"] = {
			["base"] = {
				["title"] = "Las verdes colinas de Tuercespina - Página 20",
				["text"] = {
					"Nos pusimos en camino con las primeras luces, en dirección al sur, más allá de las ruinas de Tkashi. Barnil expresó su preocupación por el hecho de que pudiéramos encontrarnos con miembros de la tribu Sangrapellejo. Recordé a Barnil que los Sangrapellejo estaban más preocupados por destruir a su enemigo tribal, los Machacacráneos. No hace falta decir que eso no consoló a Barnil lo más mínimo. Sin embargo, yo tenía un rifle cargado, una cartera llena de pólvora y tres cazadores letales conmigo para aliviar cualquier preocupación de un emboscada poco amistosa.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225425"] = {
			["base"] = {
				["title"] = "Las verdes colinas de Tuercespina - Página 18",
				["text"] = {
					"El arma dio una violenta sacudida. El cañón rodó lateralmente y cayó bajo el rifle de Ajeck. Ajeck había elegido ese preciso momento para apretar el gatillo. El rifle, con la mira orientada torpemente hacia la fila de árboles, se disparó con un estruendo inconfundible. Una bandada de pájaros chilló desde la copa de un árbol, dispersándose por todas partes. Una columna de humo emergió del árbol. Sobrecogidos, vimos cómo una tremenda rama caía sobre la pantera que intentaba escapar, partiéndole el lomo.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225419"] = {
			["base"] = {
				["title"] = "Las verdes colinas de Tuercespina - Página 27",
				["text"] = {
					"Ajeck y Sir Erlgadin dispusieron sus armas, flanqueándome a cada lado, de espaldas al mar. Barnil dejó escapar un suspiro derrotado y blandió su hacha. Los colazotes estaban casi sobre nosotros. Su firme zancada se había hecho más lenta. Ahora acechaban a su presa, pues sabían que nos tenían atrapados.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225430"] = {
			["base"] = {
				["title"] = "Las verdes colinas de Tuercespina - Página 14",
				["text"] = {
					"Ese día nos aventuramos al sur, siguiendo algunos rastros recientes de pantera. Pronto llegamos a un barranco que se cruzaba por un enorme puente colgante. No pude evitar pensar en la descriptiva obra de Brann sobre aquella región cuando vi aquella maravilla de la ingeniería. Se suponía tan a menudo que los trols nativos eran una raza primitiva e inculta, pero, mientras observaba fijamente la artesanía maestra del puente, pude reconocer la habilidad con la que los albañiles trols superaron la hazaña, aparentemente imposible.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225420"] = {
			["base"] = {
				["title"] = "Las verdes colinas de Tuercespina - Página 11",
				["text"] = {
					"En un rocoso precipicio en lo alto, perfilado por el sol poniente, podía distinguir el felino depredador más grande que he visto jamás. Pude liberar una descarga con mi rifle, pero el felino siguió su camino. Rugió una vez más, en esta ocasión vez con más fuerza que la anterior, y desapareció.\r\n\r\nRecogimos nuestras pertenencias y nos dirigimos solemnemente de vuelta al campamento.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225417"] = {
			["base"] = {
				["title"] = "Las verdes colinas de Tuercespina - Página 6",
				["text"] = {
					"Justo cuando estaba a punto de cuestionar la falta de interés de Ajeck en la estrategia de caza del día, alargó la mano hacia su arco, lo tensó con una flecha y la soltó justo hacia el pobre Barnil. Pero no era a Barnil a quien Ajeck disparaba, pues, cuando Barnil se echó a un lado boquiabierto, un gran crocolisco de río flotó a la superficie con la flecha de Ajeck perfectamente colocada entre sus grandes ojos.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225416"] = {
			["base"] = {
				["title"] = "Las verdes colinas de Tuercespina - Página 26",
				["text"] = {
					"Avancé lentamente con el arma levantada. Había conducido a estos valientes cazadores a su fin. Tenía que morir defendiéndolos. Los raptores colazote son particularmente feroces, conocidos por ser unos sanguinarios implacables. Eran muchos más que nosotros. Pero si hubiera dejado que nos mataran a mis camaradas y a mí, sin antes derramar parte de su propia sangre, no me lo habría perdonado.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225426"] = {
			["base"] = {
				["title"] = "Las verdes colinas de Tuercespina - Página 25",
				["text"] = {
					"Conduje a la expedición hasta el mar, con el fin de que la costa nos protegiera de los raptores. Con nuestro apresuramiento, nos habíamos desviado demasiado al norte, a una altitud peligrosamente elevada. Nos habíamos equivocado. Fue culpa mía. Nos detuvimos delante de un escarpado acantilado, con los raptores justo detrás de nosotros.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225423"] = {
			["base"] = {
				["title"] = "Las verdes colinas de Tuercespina - Página 4",
				["text"] = {
					"En los años que siguieron, después de que Ventormenta traicionara a la hermandad de los albañiles, Sir Erlgadin se fue volviendo más rencoroso sobre el papel de los nobles en el Reino. Ya no deseaba defender la posición que la estirpe de su padre había ganado para él en la Casa de Nobles.\r\n\r\nPero me estoy yendo por las ramas. El propósito de esta historia no es que sirva como tratado político o biografía. Este es el relato de mis experiencias en busca de caza mayor por las verdes colinas de Tuercespina...",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225428"] = {
			["base"] = {
				["title"] = "Las verdes colinas de Tuercespina - Página 1",
				["text"] = {
					"Las verdes colinas de Tuercespina\r\n\r\nNuestro primer día fue todo lo bien que se puede esperar que vayan los primeros días. La mayor parte del tiempo nos preocupamos de realizar los preparativos necesarios para establecer un campamento base. Encontré un lugar ideal, junto a la ensenada de un río de agua dulce. A juzgar por los viejos y abandonados muelles que hay cerca, este emplazamiento estuvo habitado hace algún tiempo. Por lo que respecta a los habitantes primitivos, solo el tiempo puede contar esa historia.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225424"] = {
			["base"] = {
				["title"] = "Las verdes colinas de Tuercespina - Página 21",
				["text"] = {
					"Me he encontrado ante un infernal enorme en el campo de batalla, mientras el ejército de la Legión Ardiente avanzaba desde todas direcciones. Un grupo rebelde de trols me parece tan inofensivo como una liebre en las colinas de Dun Morogh.\r\n\r\nPasamos ante las ruinas de Tkashi sin suceso alguno, para alivio de Barnil. El grupo procedió a dirigirse hacia el oeste, hacia el Mare Magnum, bordeando las ruinas de Zul'Kunda justo al sur. Mientras ascendíamos los altos riscos del mar, vimos a nuestro primer raptor.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225421"] = {
			["base"] = {
				["title"] = "Las verdes colinas de Tuercespina - Página 16",
				["text"] = {
					"Tanto Ajeck como Sir Erlgadin se mantuvieron erguidos, con las armas al nivel de la hirsuta maleza que había bajo unos árboles que se mecían de un lado a otro. El sol del mediodía ardía con fuerza sobre nosotros. Una lenta gota de sudor rodó por la sien de Erlgadin, al tiempo que retiraba el gatillo. Tras el chasquido, las hojas exuberantes se dividieron y una pantera negra, espécimen hermoso, saltó veloz sobre la llanura.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225422"] = {
			["base"] = {
				["title"] = "Las verdes colinas de Tuercespina - Página 10",
				["text"] = {
					"La matanza provocó un ánimo festivo en la expedición. Barnil sirvió aguamiel para disfrute de todos. Pero nuestros festejos fueron efímeros. Mientras preparábamos el cadáver para transportarlo de vuelta al campamento base, un rugido espantoso nos cogió desprevenidos a todos. En todos mis años nunca he oído nada que helara la sangre de tal modo.",
				},
				["singlePage"] = true,
				["pageCount"] = 0,
				["material"] = "default",
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
	},
};


return end

if LOCALE == "deDE" then
	-- German text data go here

LK["LocalData"] = {
	["text"] = {
		["Item-225429"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Die Grünen Hügel des Schlingendorntals - Seite 24",
				["material"] = "default",
				["text"] = {
					"Unsere hastig abgefeuerten Schüsse ermöglichten Barnil die Flucht. Barnil stolperte den Hügel wieder hinunter und schloss sich uns erneut an. Wir schlugen uns in den Urwald, wobei das Rudel Schmetterschwanzraptoren jede unserer Bewegungen genau verfolgte.\r\n\r\nAus Jägern waren Gejagte geworden.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225418"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Die Grünen Hügel des Schlingendorntals - Seite 8",
				["material"] = "default",
				["text"] = {
					"Nach einem solchen Fehltritt legte Erlgadin Barnil die Hand schwer auf die Schulter. Ajeck und ich schauten beiläufig. Wir dachten, Erlgadin würde Barnil ob seiner Unvorsichtigkeit endlich einmal die Leviten lesen. Aber Erlgadin wies mit einer langsamen Kopfbewegung in Richtung eines umgestürzten Baumes ganz in der Nähe. Zwei stechend schwarze Augen über einem Maul voller rasiermesserscharfer Zähne starrten uns an.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225427"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Die Grünen Hügel des Schlingendorntals - Seite 20",
				["material"] = "default",
				["text"] = {
					"Wir machten uns beim ersten Tageslicht in Richtung Süden zu den Tkashi-Ruinen auf. Barnil äußerte sich besorgt, dass wir auf Mitglieder des Blutskalpstamms treffen könnten. Ich erinnerte ihn daran, dass die Blutskalpe mehr mit der Vernichtung des verfeindeten Schädelspalterstamms beschäftigt waren. Ich brauche wohl nicht zu betonen, dass Barnil alles andere als beruhigt war. Ich für meinen Teil vertraute jedoch auf meine geladene Flinte, einen Ranzen Schießpulver und die drei versierten Jäger neben mir und machte mir keine Gedanken über einen möglichen Hinterhalt.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225424"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Die Grünen Hügel des Schlingendorntals - Seite 21",
				["material"] = "default",
				["text"] = {
					"Ich stand vor einer riesigen Höllenbestie auf dem Schlachtfeld und die Armee der Brennenden Legion näherte sich von allen Seiten. Dagegen wirkt eine Bande Trolle so harmlos wie ein Kaninchen in den Hügeln von Dun Morogh.\r\n\r\nWir passierten die Tkashi-Ruinen ohne Zwischenfall, worüber insbesondere Barnil sehr erleichtert war. Die Gruppe ging weiter westwärts Richtung Großes Meer und streifte die Ruinen von Zul'Kunda im Süden. Als wir die Steilküste erklommen, sahen wir ihn: unseren ersten Raptor.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225422"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Die Grünen Hügel des Schlingendorntals - Seite 10",
				["material"] = "default",
				["text"] = {
					"Danach waren wir alle in Hochstimmung. Barnin gab eine Runde Met für alle aus. Aber die Freude sollte nicht lange währen. Denn als wir den Kadaver für den Rücktransport zum Stützpunkt fertig machten, hörten wir unvermittelt ein fürchterliches Heulen. In all den Jahren habe ich noch nie etwas so Schreckliches gehört.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225430"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Die Grünen Hügel des Schlingendorntals - Seite 14",
				["material"] = "default",
				["text"] = {
					"Wir hielten uns nach Süden und folgten einigen frischen Pantherspuren. Kurz darauf kamen wir an eine Klamm, die von einer phantastischen Hängebrücke überspannt wurde. Ich musste sofort an Branns eindrucksvolle Beschreibungen des Gebiets denken, als ich dieses technische Wunderwerk sah. Es wurde oft behauptet, die einheimischen Trolle seien primitiv und ungebildet, doch als ich auf dieses handwerkliche Meisterwerk blickte, erkannte ich mit einem Mal das außerordentliche Können, mit dem die Erbauer der Trolle das schier unüberwindliche Hindernis überwunden hatten.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225423"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Die Grünen Hügel des Schlingendorntals - Seite 4",
				["material"] = "default",
				["text"] = {
					"In den Jahren nach dem Verrat Sturmwinds an der Steinmetzgilde erfüllte die Rolle, die der Adel im Königreich spielte, Sire Erlgadin zunehmend mit Gram. Er wollte die Stellung, die er von seinem Vater im Oberhaus geerbt hatte, nicht länger wahrnehmen.\r\n\r\nAber ich schweife ab. Dies hier soll ja keine politische Abhandlung oder Biografie werden. Vielmehr geht es hier um meine Erfahrungen mit der Großwildjagd in den grünen Hügeln des Schlingendorntals.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225417"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Die Grünen Hügel des Schlingendorntals - Seite 6",
				["material"] = "default",
				["text"] = {
					"Gerade als ich fragen wollte, ob Ajeck denn nicht an der heutigen Jagdstrategie interessiert sei, griff sie nach ihrem Köcher, zog einen Pfeil heraus und schoss ihn just auf unseren armen Barnil ab. Aber der Schuss galt gar nicht Barnil. Denn als der offenen Mundes einen Schritt zur Seite machte, trieb ein großer Flusskrokilisk an die Oberfläche. Ajecks Pfeil steckte genau zwischen seinen großen Augen.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225416"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Die Grünen Hügel des Schlingendorntals - Seite 26",
				["material"] = "default",
				["text"] = {
					"Ich trat langsam mit erhobener Flinte vor. Ich hatte diese mutigen Jäger ins Verderben geführt. Also wollte ich auch bei ihrer Verteidigung sterben. Schmetterschwanzraptoren sind besonders angriffslustig und bekannt für ihren unstillbaren Blutdurst. Zudem waren sie uns zahlenmäßig weit überlegen. Doch ich wollte verdammt sein, wenn sie mich und meine Kameraden töten könnten, ohne dabei selbst Verluste zu erleiden.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225426"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Die Grünen Hügel des Schlingendorntals - Seite 25",
				["material"] = "default",
				["text"] = {
					"Ich führte die Gruppe in Richtung Meer und hoffte, dass wir an der Küste Schutz vor den Raptoren finden würden. Doch in unserer Hast waren wir zu weit nach Norden abgekommen und befanden uns auf einer gefährlich hohen Erhebung. Das war ein Fehler. Und ich war schuld. Plötzlich standen wir vor steil abfallenden Klippen, die Raptoren nur noch ein paar Schritte hinter uns.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225421"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Die Grünen Hügel des Schlingendorntals - Seite 16",
				["material"] = "default",
				["text"] = {
					"Ajeck und Sire Erlgadin standen unbeweglich und hielten ihre Flinten auf das dichte Buschwerk unter den sanft schwingenden Bäumen gerichtet. Die Mittagssonne brannte auf uns nieder. Ein kleiner Schweißtropfen rann an Erlgadins Schläfe herab, als er den Hahn spannte. In dem Moment, als der Hahn einrastete, teilte sich mit einem Mal das Dickicht und ein großer schwarzer Panther - ein schönes Exemplar - preschte hervor.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225428"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Die Grünen Hügel des Schlingendorntals - Seite 1",
				["material"] = "default",
				["text"] = {
					"Die Grünen Hügel des Schlingendorntals\r\n\r\nDafür, dass es unser erster Tag war, lief es heute eigentlich erstaunlich gut. Wir verbrachten einen Großteil der Zeit mit den Vorbereitungen für den Bau eines Stützpunkts. Ich hatte den idealen Ort dafür am Frischwasserzulauf eines Flusses ausgemacht. Den alten verlassenen Docks nach zu urteilen war dieser Ort sogar einmal bewohnt gewesen. Doch die ursprünglichen Bewohner sind längst Geschichte.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225420"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Die Grünen Hügel des Schlingendorntals - Seite 11",
				["material"] = "default",
				["text"] = {
					"Auf einer felsigen Anhöhe über uns hob sich gegen das Licht der untergehenden Sonne die Silhouette der größten Raubkatze ab, die ich je gesehen habe. Ich gab einen eher unbeholfenen Schuss in Richtung des Tiers ab, das sich davon aber unbeeindruckt zeigte. Die Raubkatze ließ erneut ein Knurren ertönen, lauter noch als beim ersten Mal, und verschwand.\r\n\r\nWir packten unsere Sachen und kehrten gut gelaunt ins Lager zurück.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225419"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Die Grünen Hügel des Schlingendorntals - Seite 27",
				["material"] = "default",
				["text"] = {
					"Ajeck und Sire Erlgadin machten ihre Waffen bereit und gaben mir seitlich Deckung, während wir mit dem Rücken zum Wasser standen. Barnil seufzte ergeben und zog seine Axt. Die Schmetterschwanzraptoren waren schon ganz nah. Sie wurden langsamer. Sie pirschten sich an ihre Beute heran, wussten sie doch, dass wir ihnen nicht mehr entkommen konnten.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225425"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Die Grünen Hügel des Schlingendorntals - Seite 18",
				["material"] = "default",
				["text"] = {
					"Die Büchse ruckte heftig zurück. Er verriss den Schuss seitwärts und geriet mit dem Lauf just unter Ajecks Flinte. Ajeck ihrerseits hatte genau diesen Moment abgepasst, um abzudrücken. Der Schuss verirrte sich irgendwo in die Bäume. Ein Schwarm Vögel flog kreischend aus dem Blätterdach auf und flatterte aufgeregt in alle Himmelsrichtungen davon. Eine Wolke Pulverdampf stieg über einem Baum auf. Fassungslos sahen wir mit an, wie ein gewaltiger Ast geradewegs auf den flüchtenden Panther fiel und ihm das Rückgrat brach.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
	},
};

return end

if LOCALE == "frFR" then
	-- French text data go here

LK["LocalData"] = {
	["text"] = {
		["Item-225429"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 24",
				["material"] = "default",
				["text"] = {
					"I nostri colpi alla cieca erano bastati a coprire la fuga di Barnil e a farlo scendere dalla collina per riunirsi al resto del gruppo. Ci dirigemmo nella giungla, dove un gruppo di Raptor Codafrusta seguiva ogni nostra mossa. Ora i cacciatori erano diventati prede.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225418"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 8",
				["material"] = "default",
				["text"] = {
					"Dopo un altro di questi passi falsi, Erlgadin posò la mano sulla spalla di Barnil. Ajeck e io ci scambiammo una rapida occhiata, pensando che l'uomo volesse semplicemente sgridare Barnil per la sua imprudenza. Erlgadin, invece, fece un cenno lento con la testa verso un albero caduto nelle vicinanze. C'erano due occhi neri che ci fissavano, posti appena sopra una serie di zanne affilate come rasoi.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225427"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 20",
				["material"] = "default",
				["text"] = {
					"Ci mettemmo in marcia alle prime luci dell'alba, diretti a sud, oltre le Rovine di Tkashi. Barnil temeva che ci saremmo imbattuti nei membri della Tribù Scalporosso. Gli spiegai che gli Scalporosso erano impegnati a distruggere la loro tribù rivale, quella dei Fendicranio. Inutile dire che le mie parole non gli furono di alcun sollievo. Tuttavia pensavo che con un archibugio carico, una sacca piena di polvere da sparo e tre cacciatori letali al mio fianco non ci fosse da temere alcuna imboscata nemica.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225424"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 21",
				["material"] = "default",
				["text"] = {
					"Avevo affrontato un Infernale gigante in battaglia, con l'armata della Legione Infuocata che avanzava da tutte le direzioni. Un gruppo di Troll turbolenti per me era innocuo quanto un coniglio sulle colline di Dun Morogh.\r\n\r\nSuperammo le Rovine di Tkashi senza problemi, con grande sollievo di Barnil. Il gruppo poi proseguì verso ovest, in direzione del Grande Mare, girando intorno alle Rovine di Zul'Kunda a sud. Mentre stavamo per arrampicarci sugli alti promontori a picco sul mare, scoprimmo il nostro primo raptor.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225422"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 10",
				["material"] = "default",
				["text"] = {
					"L'uccisione servì a tirare su il morale della spedizione. Barnil versò a tutti dell'idromele per festeggiare. Ma la nostra euforia era destinata a durare poco. Mentre stavamo preparando la carcassa per trasportarla al campo base, fummo sorpresi da un orrendo ruggito che ci fece gelare il sangue nelle vene. Non avevo mai sentito niente di simile in tutta la mia vita.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225430"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 14",
				["material"] = "default",
				["text"] = {
					"Quel giorno ci dirigemmo a sud, seguendo alcune orme fresche di pantera. Ben presto raggiungemmo un burrone attraversato da un ponte di corda. Non appena lo vidi, il pensiero corse subito agli scritti di Brann su questa regione. Avevo considerato spesso i Troll nativi una razza primitiva e ignorante, ma dopo aver ammirato questa meraviglia dell'ingegneria, non potei fare a meno di riconoscere l'abilità con la quale i costruttori Troll avevano realizzato un'impresa praticamente impossibile.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225423"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 4",
				["material"] = "default",
				["text"] = {
					"Negli anni successivi al tradimento di Roccavento nei confronti della Gilda dei Tagliapietre, Ser Erlgadin divenne sempre più insofferente riguardo il ruolo dei nobili all'interno del Regno. Egli non voleva più mantenere la posizione che la discendenza di suo padre aveva conquistato per lui all'interno della Casata dei Nobili.\r\n\r\nMa sto divagando. Questo racconto non vuole essere un trattato politico, né una biografia. È solo un resoconto delle mie esperienze di caccia nelle colline verdi di Rovotorto.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225417"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 6",
				["material"] = "default",
				["text"] = {
					"Proprio quando stavo per criticare la mancanza d'interesse di Ajeck per la strategia di caccia, lei mise mano alla sua faretra, tirò fuori una freccia e la scoccò verso il povero Barnil. Ma non era Barnil il bersaglio di Ajeck. Alle sue spalle infatti giaceva un grosso crocolisco di fiume venuto in superficie, con le fauci spalancate e la freccia di Ajeck conficcata in mezzo ai suoi due grandi occhi.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225416"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 26",
				["material"] = "default",
				["text"] = {
					"Io feci un passo in avanti, lentamente, con l'arma spianata. Avevo condotto alla morte questi coraggiosi cacciatori e avrei dato la mia vita per difenderli. I Raptor Codafrusta sono creature particolarmente feroci e sanguinarie. Erano molto più numerosi di noi, ma non avrei mai permesso che uccidessero me e i miei compagni senza prima versare un po' del loro stesso sangue.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225426"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 25",
				["material"] = "default",
				["text"] = {
					"Avevo condotto il gruppo verso il mare, nella speranza che la spiaggia fosse un rifugio sicuro dai raptor. Nella fretta ci eravamo spinti troppo a nord, in posizione elevata e precaria, ma ormai il danno era stato fatto ed era tutta colpa mia. Ci fermammo poco prima di un promontorio a picco, con i raptor che ci inseguivano da vicino.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225421"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 16",
				["material"] = "default",
				["text"] = {
					"Sia Ajeck che Ser Erlgadin rimasero calmi, con le armi spianate verso la densa vegetazione alla base degli alberi ondeggianti. Il sole di mezzogiorno picchiava forte sulle nostre teste. Una goccia di sudore scese lentamente sulla tempia di Erlgadin quando tirò indietro il grilletto. Al suono del clic, la fitta vegetazione si diradò e un meraviglioso esemplare di pantera nera si fece avanti.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225428"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 1",
				["material"] = "default",
				["text"] = {
					"Verdi Colline di Rovotorto\r\n\r\nIl nostro primo giorno andò secondo le previsioni. Avevamo trascorso la maggior parte del tempo prendendo gli accorgimenti necessari per stabilire un campo base. Avevo trovato un posto ideale vicino all'insenatura di un fiume. A giudicare dalle vecchie banchine abbandonate, questo posto doveva essere abitato tempo fa. Ma da chi? Solo il tempo può dirlo.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225420"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 11",
				["material"] = "default",
				["text"] = {
					"Su un precipizio roccioso in alto, definita dalla luce del sole al tramonto, riconobbi la sagoma del predatore felino più grande che avessi mai visto. Riuscii a sparare un colpo con l'archibugio senza mirare, ma il felino non si scompose e ruggì di nuovo, più forte della prima volta, quindi sparì.\r\n\r\nRaccogliemmo le nostre cose e facemmo ritorno al campo.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225419"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 27",
				["material"] = "default",
				["text"] = {
					"Ajeck e Ser Erlgadin imbracciarono le loro armi e si posizionarono ai miei fianchi, con il mare alle spalle. Barnil emise un sospiro di rassegnazione e tirò fuori la sua ascia. I Codafrusta ci erano quasi addosso. Avevano rallentato la falcata. Stavano studiando la loro preda perché sapevano che eravamo in trappola.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225425"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 18",
				["material"] = "default",
				["text"] = {
					"L'arma rinculò con violenza tra le sue braccia, andando a sbattere contro l'archibugio di Ajeck, che aveva scelto proprio quel momento per fare fuoco. Partì un colpo maldestro, diretto verso la linea degli alberi. Uno stormo di uccelli si alzò dalle fronde e volò via in ogni direzione, mentre una cortina di fumo si levava dall'albero. Rimanemmo terrorizzati a guardare mentre un enorme ramo si abbatteva sulla pantera in fuga, spezzandole la schiena.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
	},
};

return end

if LOCALE == "itIT" then
	-- French text data go here

LK["LocalData"] = {
	["text"] = {
		["Item-225429"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 24",
				["material"] = "default",
				["text"] = {
					"I nostri colpi alla cieca erano bastati a coprire la fuga di Barnil e a farlo scendere dalla collina per riunirsi al resto del gruppo. Ci dirigemmo nella giungla, dove un gruppo di Raptor Codafrusta seguiva ogni nostra mossa. Ora i cacciatori erano diventati prede.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225418"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 8",
				["material"] = "default",
				["text"] = {
					"Dopo un altro di questi passi falsi, Erlgadin posò la mano sulla spalla di Barnil. Ajeck e io ci scambiammo una rapida occhiata, pensando che l'uomo volesse semplicemente sgridare Barnil per la sua imprudenza. Erlgadin, invece, fece un cenno lento con la testa verso un albero caduto nelle vicinanze. C'erano due occhi neri che ci fissavano, posti appena sopra una serie di zanne affilate come rasoi.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225427"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 20",
				["material"] = "default",
				["text"] = {
					"Ci mettemmo in marcia alle prime luci dell'alba, diretti a sud, oltre le Rovine di Tkashi. Barnil temeva che ci saremmo imbattuti nei membri della Tribù Scalporosso. Gli spiegai che gli Scalporosso erano impegnati a distruggere la loro tribù rivale, quella dei Fendicranio. Inutile dire che le mie parole non gli furono di alcun sollievo. Tuttavia pensavo che con un archibugio carico, una sacca piena di polvere da sparo e tre cacciatori letali al mio fianco non ci fosse da temere alcuna imboscata nemica.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225424"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 21",
				["material"] = "default",
				["text"] = {
					"Avevo affrontato un Infernale gigante in battaglia, con l'armata della Legione Infuocata che avanzava da tutte le direzioni. Un gruppo di Troll turbolenti per me era innocuo quanto un coniglio sulle colline di Dun Morogh.\r\n\r\nSuperammo le Rovine di Tkashi senza problemi, con grande sollievo di Barnil. Il gruppo poi proseguì verso ovest, in direzione del Grande Mare, girando intorno alle Rovine di Zul'Kunda a sud. Mentre stavamo per arrampicarci sugli alti promontori a picco sul mare, scoprimmo il nostro primo raptor.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225422"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 10",
				["material"] = "default",
				["text"] = {
					"L'uccisione servì a tirare su il morale della spedizione. Barnil versò a tutti dell'idromele per festeggiare. Ma la nostra euforia era destinata a durare poco. Mentre stavamo preparando la carcassa per trasportarla al campo base, fummo sorpresi da un orrendo ruggito che ci fece gelare il sangue nelle vene. Non avevo mai sentito niente di simile in tutta la mia vita.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225430"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 14",
				["material"] = "default",
				["text"] = {
					"Quel giorno ci dirigemmo a sud, seguendo alcune orme fresche di pantera. Ben presto raggiungemmo un burrone attraversato da un ponte di corda. Non appena lo vidi, il pensiero corse subito agli scritti di Brann su questa regione. Avevo considerato spesso i Troll nativi una razza primitiva e ignorante, ma dopo aver ammirato questa meraviglia dell'ingegneria, non potei fare a meno di riconoscere l'abilità con la quale i costruttori Troll avevano realizzato un'impresa praticamente impossibile.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225423"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 4",
				["material"] = "default",
				["text"] = {
					"Negli anni successivi al tradimento di Roccavento nei confronti della Gilda dei Tagliapietre, Ser Erlgadin divenne sempre più insofferente riguardo il ruolo dei nobili all'interno del Regno. Egli non voleva più mantenere la posizione che la discendenza di suo padre aveva conquistato per lui all'interno della Casata dei Nobili.\r\n\r\nMa sto divagando. Questo racconto non vuole essere un trattato politico, né una biografia. È solo un resoconto delle mie esperienze di caccia nelle colline verdi di Rovotorto.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225417"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 6",
				["material"] = "default",
				["text"] = {
					"Proprio quando stavo per criticare la mancanza d'interesse di Ajeck per la strategia di caccia, lei mise mano alla sua faretra, tirò fuori una freccia e la scoccò verso il povero Barnil. Ma non era Barnil il bersaglio di Ajeck. Alle sue spalle infatti giaceva un grosso crocolisco di fiume venuto in superficie, con le fauci spalancate e la freccia di Ajeck conficcata in mezzo ai suoi due grandi occhi.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225416"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 26",
				["material"] = "default",
				["text"] = {
					"Io feci un passo in avanti, lentamente, con l'arma spianata. Avevo condotto alla morte questi coraggiosi cacciatori e avrei dato la mia vita per difenderli. I Raptor Codafrusta sono creature particolarmente feroci e sanguinarie. Erano molto più numerosi di noi, ma non avrei mai permesso che uccidessero me e i miei compagni senza prima versare un po' del loro stesso sangue.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225426"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 25",
				["material"] = "default",
				["text"] = {
					"Avevo condotto il gruppo verso il mare, nella speranza che la spiaggia fosse un rifugio sicuro dai raptor. Nella fretta ci eravamo spinti troppo a nord, in posizione elevata e precaria, ma ormai il danno era stato fatto ed era tutta colpa mia. Ci fermammo poco prima di un promontorio a picco, con i raptor che ci inseguivano da vicino.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225421"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 16",
				["material"] = "default",
				["text"] = {
					"Sia Ajeck che Ser Erlgadin rimasero calmi, con le armi spianate verso la densa vegetazione alla base degli alberi ondeggianti. Il sole di mezzogiorno picchiava forte sulle nostre teste. Una goccia di sudore scese lentamente sulla tempia di Erlgadin quando tirò indietro il grilletto. Al suono del clic, la fitta vegetazione si diradò e un meraviglioso esemplare di pantera nera si fece avanti.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225428"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 1",
				["material"] = "default",
				["text"] = {
					"Verdi Colline di Rovotorto\r\n\r\nIl nostro primo giorno andò secondo le previsioni. Avevamo trascorso la maggior parte del tempo prendendo gli accorgimenti necessari per stabilire un campo base. Avevo trovato un posto ideale vicino all'insenatura di un fiume. A giudicare dalle vecchie banchine abbandonate, questo posto doveva essere abitato tempo fa. Ma da chi? Solo il tempo può dirlo.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225420"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 11",
				["material"] = "default",
				["text"] = {
					"Su un precipizio roccioso in alto, definita dalla luce del sole al tramonto, riconobbi la sagoma del predatore felino più grande che avessi mai visto. Riuscii a sparare un colpo con l'archibugio senza mirare, ma il felino non si scompose e ruggì di nuovo, più forte della prima volta, quindi sparì.\r\n\r\nRaccogliemmo le nostre cose e facemmo ritorno al campo.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225419"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 27",
				["material"] = "default",
				["text"] = {
					"Ajeck e Ser Erlgadin imbracciarono le loro armi e si posizionarono ai miei fianchi, con il mare alle spalle. Barnil emise un sospiro di rassegnazione e tirò fuori la sua ascia. I Codafrusta ci erano quasi addosso. Avevano rallentato la falcata. Stavano studiando la loro preda perché sapevano che eravamo in trappola.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225425"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Verdi Colline di Rovotorto - Pagina 18",
				["material"] = "default",
				["text"] = {
					"L'arma rinculò con violenza tra le sue braccia, andando a sbattere contro l'archibugio di Ajeck, che aveva scelto proprio quel momento per fare fuoco. Partì un colpo maldestro, diretto verso la linea degli alberi. Uno stormo di uccelli si alzò dalle fronde e volò via in ogni direzione, mentre una cortina di fumo si levava dall'albero. Rimanemmo terrorizzati a guardare mentre un enorme ramo si abbatteva sulla pantera in fuga, spezzandole la schiena.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
	},
};

return end

if LOCALE == "ptBR" then
	-- Brazilian Portuguese text data go here

LK["LocalData"] = {
	["text"] = {
		["Item-225429"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Grande Espinhaço: Veredas – Página 24",
				["material"] = "default",
				["text"] = {
					"E no que rebentava aquela onda de flecha e pólvora, o Eucunha botou asa no pé e desceu corrido a ladeira pra longe dos bicharocos e foi no passo mesmo que desembestamos selva afora em fuga, que no nosso encosto vinham lenhando uns quantos batecaudas.\r\n\r\nA gente era a caça da caça.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225418"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Grande Espinhaço: Veredas – Página 8",
				["material"] = "default",
				["text"] = {
					"Depois de ato tão erroso, Gramos botou mão com peso no ombro de Eucunha. Merília mais eu olhamos assim na esguelha, sem atenção prestada, como que presumindo que o dito apenas ralhava com besteira d'outro. O Gramos, tanta via, incitando o olhar de tudo com meneio da caveira para árvore ali caída. Espiando de volta com maldade nas vistas, tinha dois olho de piche encarapitados em fieira de dentes como que espinho de pau-marfim.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225427"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Grande Espinhaço: Veredas – Página 20",
				["material"] = "default",
				["text"] = {
					"A gente alevantou e deslizandou aquela selva junto do sol e lá no meio daqueles matos o Eucunha veio dizer que amedrontava uma topada com os Sanguescalpo. Pois não lembrava ele que Sanguescalpo e Rachacrânio viviam a quebrar-se a pau, rachando os cocos uns dos outros? E isso acalmou o coió? Nonada! Tremitremia que nem vara verde. Já eu tinha pra mim que de emboscada não tinha medo, pois que viesse e eu ia responder no berrante com olho d'águia, isso pra não falar que ali era todo mundo caçador, gente que não atira pr'errar.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225424"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Grande Espinhaço: Veredas – Página 21",
				["material"] = "default",
				["text"] = {
					"Emboscada eu já vi muito, fiquei no olho do fogo, tiroteando canhoto diabo, e numa dessas derrubei à bala o Corpulento, um Infernal da Legião que fez tremer a encruzilhada. Não conheço anão de Dun Morogh que fuja de embate.\r\n\r\nJá o frouxo do Eucunha estremecia por passo dado e só destremecia no intervalo duma ruína e outra, intervalo curto, pois até o Grande Mar, pr'onde se olhava era carcaça daquelas civilizações. Depois despencava pro céu e pro mar, onde a gente avistou o desamigo: naqueles dois azuis havia um raptor vermelistrado.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225422"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Grande Espinhaço: Veredas – Página 10",
				["material"] = "default",
				["text"] = {
					"A expedição toda tirou alegria da caçada e beberam o mulso que o Eucunha serviu a um-por-um. Enquanto a gente preparava o corpo do bichano pra levar arrastando pro capoeirão, um rugido fundo ecoou trincando numa zagaia. Em toda a minha vida, nunca senti o sangue ferver tão gelado no peito.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225430"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Grande Espinhaço: Veredas – Página 14",
				["material"] = "default",
				["text"] = {
					"Nesse dia nos desembrenhamos pro sul, seguindo rastro de onça. De pronto topamos com uma pirambeira funda que atravessava debaixo duma pinguela. E tudo o que o Brann falava em escrito vinha na minha cabeça quando eu vi tamanho engenho. Não admira terem julgado os trolls uma gente bugra rude e cascuda, mas a pontezinha era bem feitinha que só, feita por algum batuta dessa raça.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225423"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Grande Espinhaço: Veredas – Página 4",
				["material"] = "default",
				["text"] = {
					'Sucedeu que, no passa e corre dos anos, a Guilda dos Alvanéis caiu nos engodos de Ventobravo. Raciliano Gramos, homem de boa cepa, desacreditou-se dos brasões e coroas daquelas cercanias: "Carregação de nome afamilhado é bestagem grande de homem sem estofos. Pesa na canga e nos espíritos". E assim o fez, deixando na rabeira prenome de dom.\r\n\r\nMas voltemos ao causo sem cair em esparrelas de politiqueiras e contos de mim-mesmo: esta história é prosa de caçada pelas veredas da minha selva.',
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225417"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Grande Espinhaço: Veredas – Página 6",
				["material"] = "default",
				["text"] = {
					"Sucedeu que na hora mesma d'eu estranhar a Merília por falta de prestar cuidado na maquinação da caçada do dia, a cuja puxou uma flecha e disparou diretinho no desinfeliz do Eucunha. Só que não foi o Eucunha que ela atentou. Por conta que, depois que ele bandeou bocaberto, um crocolisco abitelado do rio veio boiando com a flecha da Merília justinha no meio dos olharrões.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225416"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Grande Espinhaço: Veredas – Página 26",
				["material"] = "default",
				["text"] = {
					"Lentamente me adiantei com a clavina erguida, pronto pra berrar fogo. Eu havia conduzido meus caçadores à morte, mas meu nome ainda era Rosarães Guima, e de mim pra mim firmei que morreria defendendo-os. O batecauda é um bicho cruel e violento, trasmontante de ruim, e ali eles estavam com a vantagem numérica, mas eu não iria entregar o couro sem antes derramar sangue muito.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225426"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Grande Espinhaço: Veredas – Página 25",
				["material"] = "default",
				["text"] = {
					"Levei o grupo em tropel desabalante até o mar, engenhando encontrar resguardo encantoado contra os Raptores na costa. Mas no medonho que é o tempo que falta pra gente pensar, derramamos pro norte em demasia, erramos mira e fomos dar em elevação precária e instável, de vertigem. Erro muito e culpa minha só. Estacamos diante do despenhadeiro, com os raptores seguindo junto a palmo e palmo, rilhando dentes.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225421"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Grande Espinhaço: Veredas – Página 16",
				["material"] = "default",
				["text"] = {
					"Merília e Dom Raciliano, os dois bem postados, de arma apontada pra relvinha de pé de árvore. O sol rachando nosso coco a pino. Uma gota suada lambeu o rosto de Raciliano e ele engatilhou o trabuco. Depois do barulhinho, o mato fendeu e uma onça-preta – bitela, formosa – pulou pra planura num trovejo.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225428"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Grande Espinhaço: Veredas – Página 1",
				["material"] = "default",
				["text"] = {
					"Grande Espinhaço: Veredas\r\n\r\nNonada! De tragédia nenhuma, que chegamos bem, ou tão bem quanto se espera de uma chegada. A preocupação que nos tomou maior do tempo foi montar tudo que era barraca, pra não passar noite escurifria ao relento. Encontrei um lugar ideal, borda dum fio d'água que desdescia pra costa. Havia de ter vida aqui, pois docas há que envelhecem sozinhas e pr'onde foi essa tal vida só o tempo sabe.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225420"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Grande Espinhaço: Veredas – Página 11",
				["material"] = "default",
				["text"] = {
					"Num penedo mais pra cima, peneirado pelo sol baixo de quase noite, vi o gato dentudo mais avantajado que qualquer outro que vi em pelo. Dei uma cusparada de chumbo com a espingarda, mas o gato ficou firme. Ele rugiu de novo – mais alto que em-antes – e escafedeu.\r\n\r\nJuntamos os teréns e marchamos de volta pro acampamento.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225419"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Grande Espinhaço: Veredas – Página 27",
				["material"] = "default",
				["text"] = {
					"Merília e Raciliano aprontaram as armas, me resguardando de cada lado, as costas pro mar. Eucunha suspirou triste-sombrio e puxou o machado. Os batecaudas já bafejavam na nossa cara, sanguissedentos, trincando dentes, chegando com tempo sobrante e calma sinistra. Pois decerto sabiam que a presa estava segura no papo, questão simples de abate. E eu pensei num carro-de-trem, que apanhando e moendo um tauren, na passagem de um corte.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225425"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Grande Espinhaço: Veredas – Página 18",
				["material"] = "default",
				["text"] = {
					"No que cambaleou o homem, Merília se apreparou pra espingardear a besta-fera e foi na minúcia do segundo que ela gatilhou a máquina: claquebum! Mas não mirava gata que nada, mirava era na reta d'árvore que corria do lado da bicha, assustando os bichos-ave que voejavam corridos de seus ninhos, berrando todos os cantos em protesto, tapando o resto do céu em colorido. E teve uma pluma esfumaçada que subiu foi de pássaro nenhum, mas d'árvore almejada. No exato metro em que corria a onça-preta caiu-se um galho que partiu a mioleira da criatura num estalo.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
	},
};

-- Note that the EU Portuguese WoW client also
-- uses the Brazilian Portuguese locale code.
return end

if LOCALE == "ruRU" then
	-- Russian text data go here

LK["LocalData"] = {
	["text"] = {
		["Item-225429"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Зеленые холмы Тернистой долины: стр. 24",
				["material"] = "default",
				["text"] = {
					"Наших суматошных выстрелов оказалось достаточно, чтобы дать Барнилу время убежать. Барнил скатился с холма и присоединился к нашей группе. Мы побежали в джунгли, преследуемые стаей свирепых ящеров-кнутохвостов.\r\n\r\nОхотники превратились в добычу.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225418"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Зеленые холмы Тернистой долины: стр. 8",
				["material"] = "default",
				["text"] = {
					"После очередного неверного шага Барнила Эрлджедин положил свою тяжелую руку ему на плечо. Мы с Аджек переглянулись, уверенные, что он решил-таки напомнить Барнилу о необходимости соблюдать осторожность. Но вместо этого Эрлджедин кивнул головой в сторону лежащего неподалеку дерева. Оттуда на нас пристально смотрели два черных глаза, а под ними была пасть, полная острых зубов.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225427"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Зеленые холмы Тернистой долины: стр. 20",
				["material"] = "default",
				["text"] = {
					"С первыми лучами солнца мы отправились на охоту на юг, за руины Ткаши. Барнил беспокоился, что мы можем наткнуться на троллей племени Кровавого Скальпа. Мои слова о том, что это племя сейчас занято войной со своими заклятыми врагами из племени Дробителей Черепов, конечно же, ничуть не успокоили его. Меня же возможность засады беспокоила гораздо меньше: в моих руках была заряженная винтовка, на поясе – полная сумка пороха, а рядом – трое отличных охотников.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225422"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Зеленые холмы Тернистой долины: стр. 10",
				["material"] = "default",
				["text"] = {
					"Первое убийство взбодрило нашу команду. Барнил налил всем меда, чтобы отметить его. Но нашему празднованию не суждено было продолжаться долго. Когда мы подготавливали тушу к транспортировке в лагерь, внезапно раздался ужасный рев. Я в жизни не слышал такого леденящего кровь звука.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225423"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Зеленые холмы Тернистой долины: стр. 4",
				["material"] = "default",
				["text"] = {
					"В последующие годы, после того как Штормград обманул братство Каменщиков, сэр Эрлджедин разочаровался в аристократии Королевства. Он больше не хотел принадлежать к Благородным Домам, хотя право это унаследовал от отца.\r\n\r\nНо не будем отвлекаться. Мое повествование не политический трактат и не биография. Я всего лишь делюсь опытом участия в большой охоте среди зеленых холмов Тернистой долины.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225430"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Зеленые холмы Тернистой долины: стр. 14",
				["material"] = "default",
				["text"] = {
					"В тот день мы пошли на юг, двигаясь по свежим следам пантеры. Вскоре мы пришли к ущелью, через которое был перекинут длинный веревочный мостик. При виде этого чуда инженерной мысли мне сразу вспомнилось, как описывал этот район Бранн. Тролли, коренные жители этих мест, всегда считались примитивной расой, но мастерство, с которым они сконструировали этот мост через непреодолимую пропасть, было неоспоримо.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225424"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Зеленые холмы Тернистой долины: стр. 21",
				["material"] = "default",
				["text"] = {
					"Я помню битву с армией Пылающего Легиона: враги надвигались со всех направлений, а прямо передо мной возвышался огромный инфернал. Толпа злобных троллей по сравнению с этим кажется безобидной, как заяц в горах Дун Морога.\r\n\r\nК величайшей радости Барнила, мы миновали руины Ткаши без всяких приключений. Мы продолжали двигаться на запад к Великому морю, обходя руины Зул'Кунды. Взобравшись на высокий утес над морем, мы увидели нашего первого ящера.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225417"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Зеленые холмы Тернистой долины: стр. 6",
				["material"] = "default",
				["text"] = {
					"Когда я уже собирался спросить, почему Аджек не участвует в обсуждении плана сегодняшней охоты, она выхватила стрелу из колчана, натянула тетиву и выстрелила в бедного Барнила. Однако стрела пролетела мимо. Разинув рот, Барнил наблюдал за тем, как возле него на поверхность реки всплыл огромный кроколиск, а между глаз у него торчала стрела Аджек.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225416"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Зеленые холмы Тернистой долины: стр. 26",
				["material"] = "default",
				["text"] = {
					"Я медленно шагнул вперед, держа ружье наготове. Я привел этих отважных охотников к гибели. И готов был погибнуть сам, защищая их. Ящеры-кнутохвосты известны своей свирепостью и неумолимой жаждой крови. Их было намного больше нас. Но я бы себе не простил, если бы позволил расправиться с собой и моими товарищами, не прикончив сначала несколько этих тварей!",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225426"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Зеленые холмы Тернистой долины: стр. 25",
				["material"] = "default",
				["text"] = {
					"Я вел отряд по направлению к морю в надежде, что вода остановит ящеров. Но в спешке мы зашли слишком далеко на север, на возвышенность. Исправлять ошибку было уже поздно. И вина была в этом моя. Мы остановились на краю отвесной скалы, а ящеры были уже в нескольких шагах от нас.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225421"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Зеленые холмы Тернистой долины: стр. 16",
				["material"] = "default",
				["text"] = {
					"Аджек и сэр Эрлджедин стояли наготове, направив ружья в сторону колючего кустарника у подножия раскачивающихся деревьев. Полуденное солнце нещадно палило. Капля пота медленно скатилась по виску Эрлджедина, когда он взводил курок. В момент щелчка из кустов на поляну выпрыгнула огромная черная пантера – невероятно грациозное животное.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225428"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Зеленые холмы Тернистой долины: стр. 1",
				["material"] = "default",
				["text"] = {
					"Зеленые холмы Тернистой долины\r\n\r\nНаш первый день прошел, как обычно проходят первые дни. Большую часть времени мы обустраивали лагерь. Мне удалось найти идеальное место у небольшой чистой заводи. Старые обветшавшие мостки указывали на то, что в этом месте когда-то жили. Кто именно там жил, мы пока не знали.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225420"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Зеленые холмы Тернистой долины: стр. 11",
				["material"] = "default",
				["text"] = {
					"На скалистом склоне, возвышавшемся над нами, в лучах заходящего солнца вырисовывался силуэт самой большой кошки, которую я когда-либо видел. Мне удалось сделать неловкий выстрел из ружья, но кошка не двинулась с места. Она издала еще один ужасный рык, громче прошлого, и исчезла.\r\n\r\nМы собрали вещи и мрачно двинулись в лагерь.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225419"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Зеленые холмы Тернистой долины: стр. 27",
				["material"] = "default",
				["text"] = {
					"Аджек и сэр Эрлджедин вскинули свое оружие, прикрывая меня с боков, спиной к морю. Барнил обреченно вздохнул и обнажил свой топор. Кнутохвосты были практически рядом с нами. Их уверенные шаги замедлились. Они крадучись подбирались к своим жертвам, зная, что загнали нас в ловушку.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225425"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "Зеленые холмы Тернистой долины: стр. 18",
				["material"] = "default",
				["text"] = {
					"Ружье резко подалось назад в его руках. Дуло ушло в сторону и попало под ствол ружья Аджек. И именно в этот момент Аджек спустила курок. Неуклюже вздернувшееся к кронам деревьев ружье отчетливо и громко выстрелило. Стая птиц, крича, вспорхнула в небо, разлетаясь во все стороны. Струйка дыма вилась из дерева. Мы в оцепенении смотрели, как гигантская ветка рухнула прямо на убегающую пантеру и сломала ей хребет.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
	},
};

return end

if LOCALE == "koKR" then
	-- Korean text data go here

LK["LocalData"] = {
	["text"] = {
		["Item-225429"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "가시덤불 골짜기의 푸른 언덕 - 24쪽",
				["material"] = "default",
				["text"] = {
					"우리의 재빠른 조준 사격으로 바닐은 도망칠 수 있었다. 그는 언덕 아래로 도망쳐서 우리와 다시 합류했다. 우리는 밀림 속으로 도망쳤다. 그러나 포악한 채찍꼬리랩터 무리가 계속 우리를 쫓아왔다.\r\n\r\n사냥꾼들이 오히려 사냥감이 되어 버린 셈이었다.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225418"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "가시덤불 골짜기의 푸른 언덕 - 8쪽",
				["material"] = "default",
				["text"] = {
					"바닐이 한 발짝 발을 헛디디자 얼가딘 경은 그 큰 손으로 바닐의 어깨를 잡았다. 아제크와 나는 그가 다만 부주의한 바닐에게 꼭 필요한 따끔한 질책을 하는 거라고 생각하며 별생각 없이 쳐다보았다. 하지만 얼가딘 경은 머리로 천천히 근처에 쓰러져 있는 나무를 가리켰다. 거기엔 면도날같이 날카로운 송곳니 바로 위로 두 개의 검은 눈이 뚫어질 듯 무섭게 우릴 쏘아보고 있었다.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225427"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "가시덤불 골짜기의 푸른 언덕 - 20쪽",
				["material"] = "default",
				["text"] = {
					"우리는 해가 뜨자마자 트카시 폐허를 지나 남쪽을 향해 출발했다. 바닐은 붉은머리 부족과 마주치게 되지 않을까 걱정했다. 나는 바닐에게 붉은머리 부족은 그들 일족의 숙적인 백골가루 부족을 처치하는 데 여념이 없을 거라고 상기시켜 주었다. 물론 바닐은 전혀 안심하지 않았지만, 나는 장전된 총, 화약을 가득 담은 가방, 그리고 세 명의 뛰어난 사냥꾼이 있어 어떤 적이 습격해 온다 해도 걱정이 없었다.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225424"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "가시덤불 골짜기의 푸른 언덕 - 21쪽",
				["material"] = "default",
				["text"] = {
					"나는 전장에서 수없이 지옥을 드나들었다. 바로 사방에서 공격해 오는 불타는 군단이라는 지옥의 군대를... 그들에 비하면 난폭한 트롤 무리는 던 모로의 언덕을 뛰어다니는 토끼만큼이나 안전하다고 할 수 있다.\r\n\r\n우리는 아무 문제 없이 트카시 폐허를 지나왔고 이로써 바닐도 많이 안심하게 되었다. 대해를 향해 서쪽으로 계속 가면서 바로 남쪽에 보이는 줄쿤다의 폐허의 가장자리를 지나쳤다. 높은 해안 절벽을 올라가던 도중에 첫 랩터 사냥감을 발견했다.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225422"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "가시덤불 골짜기의 푸른 언덕 - 10쪽",
				["material"] = "default",
				["text"] = {
					"놈의 죽음으로 원정대는 축제 분위기에 휩싸였다. 모두 즐길 수 있도록 바닐이 벌꿀술을 따라 주었으나 축제는 오래가지 못했다. 시체를 다시 기지로 보내기 위해 준비하느라 모두 방심하고 있던 중에 끔찍한 으르렁거리는 소리가 들려 온 것이었다. 내 생애에서 피가 얼어 붙는 것처럼 그렇게 섬뜩한 소리는 다시 들어 보지 못했다.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225430"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "가시덤불 골짜기의 푸른 언덕 - 14쪽",
				["material"] = "default",
				["text"] = {
					"오늘은 새로운 퓨마 흔적을 쫓아 남쪽으로 사냥을 나갔다. 출발한 지 얼마되지 않아 우리는 밧줄로 만들어진 멋진 다리가 놓인 계곡에 이르렀다. 기술이 낳은 이 경이로운 다리를 보는 순간 나는 이 지역을 묘사한 브란의 글을 떠올리지 않을 수 없었다. 종종 트롤 원주민은 원시적이고 교육 받지 못한 종족이라 생각했지만, 뛰어난 기술로 만들어진 다리를 올려다 보면서 나는 이 불가능해 보이는 일을 이뤄낸 트롤 건축가들의 솜씨를 인정하게 되었다.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225423"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "가시덤불 골짜기의 푸른 언덕 - 4쪽",
				["material"] = "default",
				["text"] = {
					"스톰윈드가 석공 길드를 배반한 이후 여러 해 동안 얼가딘 경은 왕국 내에서 귀족의 역할에 대해 비판을 가해왔다. 그리고 그는 아버지의 혈통으로 이어받은 귀족 평의회의 지위를 지킬 마음이 더는 없었다.\r\n\r\n여기서 다른 화제로 넘어가도록 하겠다. 이런 이야기를 하는 것은 정치 논문이나 전기 같은 것을 쓰기 위해서가 아니다. 이 책은 가시덤불 골짜기의 푸른 언덕에서 대단한 사냥을 하던 시절의 내 경험을 이야기하려는 것이다.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225417"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "가시덤불 골짜기의 푸른 언덕 - 6쪽",
				["material"] = "default",
				["text"] = {
					"내가 아제크에게 오늘 있을 사냥에 집중하지 않는 것에 대한 우려를 표하려는 순간, 그녀가 화살통에서 화살을 하나 꺼내더니 불쌍한 바닐을 향해 쏘는 것이었다. 하지만 아제크가 맞히려 했던 건 바닐이 아니었다. 바닐이 놀라 입을 벌린 채로 옆으로 비켜서자 아제크의 화살이 정확하게 미간 한가운데에 박힌 거대한 민물악어가 수면으로 떠올랐다.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225416"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "가시덤불 골짜기의 푸른 언덕 - 26쪽",
				["material"] = "default",
				["text"] = {
					"난 천천히 총을 들고 앞으로 나아갔다. 난 이 용감한 사냥꾼들을 죽음의 위기에 몰아넣고 말았다. 따라서 그들을 보호하기 위해서라면 목숨이라도 내놓고 싶은 심정이었다. 채찍꼬리랩터들은 특히 사나울 뿐 아니라 피에 대한 그칠 줄 모르는 굶주림으로 알려져 있다. 놈들은 수적으로도 우리보다 훨씬 우위였다. 나와 내 동료들이 희생되기 전에 놈들을 처치하지 못하면 나는 저주를 받아 마땅하다.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225426"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "가시덤불 골짜기의 푸른 언덕 - 25쪽",
				["material"] = "default",
				["text"] = {
					"나는 해안가에 랩터로부터 숨을 곳이 있기를 바라면서 동료들을 바다 쪽으로 안내했다. 그런데 서둘러 도망쳐 오는 바람에 북쪽으로 너무 멀리 도망쳐 와 위태로운 고지까지 오고 말았다. 이미 실수는 저질러졌고 그건 모두 내 잘못이었다. 우리는 깎아지른 절벽 끝에 멈춰 섰고, 랩터들은 겨우 몇 발자국 뒤에 있었다.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225421"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "가시덤불 골짜기의 푸른 언덕 - 16쪽",
				["material"] = "default",
				["text"] = {
					"아제크와 얼가딘 경은 균형을 잡고 서서 흔들리는 나무 밑에서 털을 곤두세우고 있는 거대한 놈에게 총을 겨누었다. 한낮의 태양은 따갑게 내리쬐고 있었다. 핀을 뒤로 당기는 얼가딘의 관자놀이에서 땀 한 방울이 천천히 흘러내렸다. 방아쇠를 당기는 소리와 함께 두꺼운 식물이 갈라지고 너무나도 아름다운 거대한 검은 표범이 곧 평원 위에 쓰러졌다.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225428"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "가시덤불 골짜기의 푸른 언덕 - 1쪽",
				["material"] = "default",
				["text"] = {
					"가시덤불 골짜기의 푸른 언덕\r\n\r\n첫째 날은 보통 그렇듯이 순조롭게 지나갔다. 우리는 기지 구축을 위해 필요한 준비를 하는 데 대부분의 시간을 보냈다. 나는 담수가 흘러드는 강어귀 가에서 이상적인 장소를 찾아냈다. 근처에 낡고 버려진 부두가 있는 걸로 보아 이곳은 예전에 어떤 종족이 거주하던 곳인 것 같다. 그러나 원래 누가 살던 땅이었는지는 시간이 흘러야만 알 수 있을 것이다.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225420"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "가시덤불 골짜기의 푸른 언덕 - 11쪽",
				["material"] = "default",
				["text"] = {
					"석양빛에 윤곽이 빛나는 바위 절벽 위에서 지금까지 본 것 중 가장 큰 고양잇과 사냥감을 발견했다. 나는 내 라이플 총으로 서투르게 한 발 쐈지만 놈은 꿈쩍도 하지 않았다. 놈은 처음보다 더 큰 소리로 한 번 더 으르렁거리고는 사라져 버렸다.\r\n\r\n우리는 소지품을 챙겨 무거운 마음으로 야영지로 돌아왔다.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225419"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "가시덤불 골짜기의 푸른 언덕 - 27쪽",
				["material"] = "default",
				["text"] = {
					"아제크와 얼가딘 경은 무기를 든 채 내 양옆에 서 있었고 우리의 등 뒤는 바다였다. 바닐은 한숨을 내쉬며 도끼를 꺼내 들었다. 채찍꼬리랩터들은 우리 바로 앞에까지 와 있었다. 그러고는 속도를 줄여 천천히 움직이기 시작했다. 놈들은 우리가 꼼짝없이 갇혀 버렸다는 사실을 알고 있었기 때문에 서두르지 않고 먹잇감에게 다가오고 있었던 것이다.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225425"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "가시덤불 골짜기의 푸른 언덕 - 18쪽",
				["material"] = "default",
				["text"] = {
					"그의 총이 반동으로 그의 팔 안에서 심하게 흔들렸다. 그리고 얼가딘의 총구가 옆으로 흔들렸다가 아제크의 총구 아래서 올라왔다. 아제크는 바로 그 순간 방아쇠를 당겼다. 갑자기 날아든 총구로 조준이 흐트러져 총알은 뚜렷한 소리를 내며 나무 꼭대기로 발사되고 말았다. 새 떼가 울부짖으며 하늘로 날아올라 사방으로 흩어졌다. 나무에선 연기가 나고 있었다. 우리는 거대한 나뭇가지가 똑바로 떨어져 달아나는 표범의 등을 부러뜨리는 광경을 놀라워하며 지켜보았다.",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
	},
};

return end

if LOCALE == "zhCN" then
	-- Simplified Chinese text data go here

LK["LocalData"] = {
	["text"] = {
		["Item-225429"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荆棘谷的青山 - 第24页",
				["material"] = "default",
				["text"] = {
					"我们匆忙射出的子弹为巴尼尔赢得了足够的逃跑时间。他大声叫嚷着跑下山丘，重新回到队伍之中。我们急忙离开了丛林，因为有一群凶残的鞭尾迅猛龙正在追寻着我们的足迹。\r\n\r\n现在攻守易位，猎手变成了猎物。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225418"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荆棘谷的青山 - 第8页",
				["material"] = "default",
				["text"] = {
					"埃尔加丁爵士似乎被绊了一下，将手重重地拍在巴尼尔的肩膀上。我和阿杰克瞥了一眼，以为他会责备粗心大意的巴尼尔。然而埃尔加丁爵士却摆了摆头，示意我们观察旁边的一棵倒下的大树。那里正有一双炯炯有神的黑眼睛瞪着我们，眼睛下面还有一口如剃刀般锋利的牙齿。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225427"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荆棘谷的青山 - 第20页",
				["material"] = "default",
				["text"] = {
					"我们在黎明时动身向南出发，一路穿过了伽什废墟。巴尼尔说他担心会遇到血顶部族的巨魔。我告诉巴尼尔，比起生吃我们这些冒险者来，血顶部族更关心的是如何摧毁他们的敌人，劈颅部族。不过巴尼尔显然没有因此而感到一丝的宽慰。但是，我有一把上好膛的火枪、满袋的黑火药，还有三个本领高强的猎人做伴，所以我一点也不担心会遭遇敌人的埋伏。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225424"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荆棘谷的青山 - 第21页",
				["material"] = "default",
				["text"] = {
					"我曾经在战场上面对过巨大的地狱火，还有从四面八方冲过来的燃烧军团。如今对我而言，一群蛮横的巨魔就跟丹莫罗的长耳大野兔一样不值一提。\r\n\r\n我们平静地穿过伽什废墟，巴尼尔总算是放下了他那颗惴惴不安的心。我们继续向西边的无尽之海前进，并绕了南边的祖昆达废墟。当我们攀上海边的悬崖之后，第一只迅猛龙出现在我们面前。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225422"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荆棘谷的青山 - 第10页",
				["material"] = "default",
				["text"] = {
					"这次成功的猎杀给探险队带来了一些愉快的心情，巴尼尔给大家倒了些蜜酒，但是这种喜悦只是暂时的。当我们准备把尸体运回营地时，丛林里传来了一阵可怕的嚎叫声。在我的一生中，我从来都没有听到过如此可怕的、几乎让人全身血液都凝固的声音。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225430"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荆棘谷的青山 - 第14页",
				["material"] = "default",
				["text"] = {
					"这一天，我们沿着一些新的黑豹足迹向南进发。很快我们就来到了一座架着巨大索桥的峡谷。看到这个工程奇迹的时候，我忍不住想起了布莱恩对这一带的描写。我们常常认为巨魔是原始而无知的族类，然而当我认识到这座索桥所体现的精湛技术时，我开始认为巨魔的建造技术已经达到令人难以想象的地步。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225423"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荆棘谷的青山 - 第4页",
				["material"] = "default",
				["text"] = {
					"接下来的几年，在暴风城背叛了石工协会后，埃尔加丁爵士开始厌恶他的贵族身份。他不愿因继承了他父亲的高贵血统而在贵族中获得崇高的地位。不过我跑题了。这个故事的主题不是政治文章或者人物传记，而是要叙述我在荆棘谷的青山中猎捕的经历。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225417"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荆棘谷的青山 - 第6页",
				["material"] = "default",
				["text"] = {
					"正在我准备问阿杰克为什么一整天都无精打采的时候，她突然从箭囊中抽出一支箭，向可怜的巴尼尔射去——当然她的目标并非巴尼尔。瞠目结舌的巴尼尔向后退了几步，看着自己身后的一只巨大的鳄鱼浮出水面，阿杰克的箭正好射在了它的两只眼睛的中间。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225416"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荆棘谷的青山 - 第26页",
				["material"] = "default",
				["text"] = {
					"我举着枪缓缓地前进。是我将这些勇敢的猎人带向了死亡的边缘，我至死都要保护他们！鞭尾迅猛龙异常凶残，它们一向都以残酷嗜血而闻名，而且现在它们的数量远远多于我们。但是，我决不能就让这些野兽轻易地杀了我和我的同伴。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225426"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荆棘谷的青山 - 第25页",
				["material"] = "default",
				["text"] = {
					"我带着队伍继续往海边走去，希望在那里的海岸线旁找到某个可以避开迅猛龙的地方。但是在匆忙之中，我们跑到了一处危险的高地，这是个可怕的错误，全都是我的错。我们停在了一个陡峭的悬崖边，而那些迅猛龙距离我们仅有几步之遥。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225421"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荆棘谷的青山 - 第16页",
				["material"] = "default",
				["text"] = {
					"阿杰克和埃尔加丁爵士悄无声息地用枪瞄准着正在晃动的树丛。正午的强烈阳光照在我们身上，当埃尔加丁爵士终于扣动扳机的时候，他的额头流下了一丝汗水。一声枪响过后，浓密的树叶被打得乱飞，一头非常漂亮的大黑豹像离弦的箭一般冲向了平原。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225428"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荆棘谷的青山 - 第1页",
				["material"] = "default",
				["text"] = {
					"荆棘谷的青山\r\n\r\n第一天和我们预想中的完全一样。我们大部分时间都忙于为建立营地做一些必要的准备。我在一条淡水河的入口处找到了理想的驻扎点。根据旁边被废弃的古老码头判断，这个地方曾经有人住过，不过只有时间才能说明这里究竟住过些什么人。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225420"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荆棘谷的青山 - 第11页",
				["material"] = "default",
				["text"] = {
					"在遍布岩石的悬崖上，一头迄今为止我见过的最巨大的豹子在晚霞的映衬中冒了出来。我笨拙地开了枪，但是那头豹子丝毫未动。它又咆哮了一声，比第一次的声音更大，然后就消失了。\r\n\r\n我们把东西收好，然后神色黯然地返回了营地。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225419"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荆棘谷的青山 - 第27页",
				["material"] = "default",
				["text"] = {
					"阿杰克和埃尔加丁爵士拿起他们的武器，守在我的两侧，我们的背后就是大海。巴尼尔沮丧地叹了一口长气，然后拿起了他的斧子。迅猛龙在慢慢地逼近，它们高傲地注视着我们，因为它们知道我们已经无路可逃了。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225425"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荆棘谷的青山 - 第18页",
				["material"] = "default",
				["text"] = {
					"他的枪重重地击在他的肩膀上，枪管歪向一边，正好落在在阿杰克的枪下面。阿杰克瞄准树冠适时地扣动了扳机，一声清晰的枪响过后，树冠上的一群鸟尖叫着四处飞散，树上冒出了一阵烟，我们惊异地看到一根巨大的树枝掉落下来，正好砸中了疾驰的黑豹。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
	},
};

return end

if LOCALE == "zhTW" then
	-- Traditional Chinese text data go here

LK["LocalData"] = {
	["text"] = {
		["Item-225429"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荊棘谷的青山 - 第24頁",
				["material"] = "default",
				["text"] = {
					"我們匆忙射出的子彈為巴尼爾贏得了足夠的逃跑時間。他大聲叫嚷著跑下山丘，重新回到隊伍之中。我們急忙離開了叢林，因為有一群兇殘的鞭尾迅猛龍正在追尋著我們的足跡。\r\n\r\n現在攻守易位，獵手變成了獵物。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225418"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荊棘谷的青山 - 第8頁",
				["material"] = "default",
				["text"] = {
					"艾爾加丁爵士似乎被絆了一下，將手重重地拍在巴尼爾的肩膀上。我和艾耶克瞥了一眼，以為他會責備粗心大意的巴尼爾。然而艾爾加丁爵士卻擺了擺頭，示意我們觀察旁邊的一棵倒下的大樹。那裡正有一雙炯炯有神的黑眼睛瞪著我們，眼睛下面還有一口如剃刀般鋒利的牙齒。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225427"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荊棘谷的青山 - 第20頁",
				["material"] = "default",
				["text"] = {
					"我們在黎明時動身向南出發，一路穿過了伽什廢墟。巴尼爾說他擔心會遇到血頂部族的食人妖。我告訴巴尼爾，比起生吃我們這些冒險者來，血頂部族更關心的是如何摧毀他們的敵人，劈顱部族。不過巴尼爾顯然沒有因此而感到一絲的寬慰。但是，我有一把上好膛的火槍、滿袋的黑火藥，還有三個本領高強的獵人做伴，所以我一點也不擔心會遭遇敵人的埋伏。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225424"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荊棘谷的青山 - 第21頁",
				["material"] = "default",
				["text"] = {
					"我曾經在戰場上面對過巨大的煉獄火，還有從四面八方衝過來的燃燒軍團。如今對我而言，一群蠻橫的食人妖就跟丹莫洛的長耳大野兔一樣不值一提。\r\n\r\n我們平靜地穿過伽什廢墟，巴尼爾總算是放下了他那顆惴惴不安的心。我們繼續向西邊的無盡之海前進，並繞了南邊的祖昆達廢墟。當我們攀上海邊的懸崖之後，第一隻迅猛龍出現在我們面前。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225422"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荊棘谷的青山 - 第10頁",
				["material"] = "default",
				["text"] = {
					"這次成功的獵殺給探險隊帶來了一些愉快的心情，巴尼爾給大家倒了些蜜酒，但是這種喜悅只是暫時的。當我們準備把屍體運回營地時，叢林裡傳來了一陣可怕的嚎叫聲。在我的一生中，我從來都沒有聽到過如此可怕的、幾乎讓人全身血液都凝固的聲音。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225430"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荊棘谷的青山 - 第14頁",
				["material"] = "default",
				["text"] = {
					"這一天，我們沿著一些新的黑豹足跡向南進發。很快我們就來到了一座架著巨大索橋的峽谷。看到這個工程奇蹟的時候，我忍不住想起了布萊恩對這一帶的描寫。我們常常認為食人妖是原始而無知的族類，然而當我認識到這座索橋所體現的精湛技術時，我開始認為食人妖的建造技術已經達到令人難以想像的地步。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225423"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荊棘谷的青山 - 第4頁",
				["material"] = "default",
				["text"] = {
					"接下來的幾年，在暴風城背叛了石匠公會後，艾爾加丁爵士開始厭惡他的貴族身分。他顯然對繼承他父親的高貴血統，而獲得崇高地位的這件事感到厭惡。\r\n\r\n不過我離題了。這個故事的主題不是政治文章或者人物傳記，而是要敘述我在荊棘谷的青山中獵捕的經歷。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225417"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荊棘谷的青山 - 第6頁",
				["material"] = "default",
				["text"] = {
					"正在我準備問艾耶克為什麼一整天都無精打采的時候，她突然從箭囊中抽出一支箭，向可憐的巴尼爾射去─當然她的目標並非巴尼爾。瞠目結舌的巴尼爾向後退了幾步，看著自己身後的一隻巨大的鱷魚浮出水面，艾耶克的箭正好射在了它的兩隻眼睛的中間。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225416"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荊棘谷的青山 - 第26頁",
				["material"] = "default",
				["text"] = {
					"我舉著槍緩緩地前進。是我將這些勇敢的獵人帶向了死亡的邊緣，我至死都要保護他們！鞭尾迅猛龍異常兇殘，它們一向都以殘酷嗜血而聞名，而且現在它們的數量遠遠多於我們。但是，我絕不能就讓這些野獸輕易地殺了我和我的同伴。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225426"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荊棘谷的青山 - 第25頁",
				["material"] = "default",
				["text"] = {
					"我帶著隊伍繼續往海邊走去，希望在那裡的海岸線旁找到某個可以避開迅猛龍的地方。但是在匆忙之中，我們跑到了一處危險的高地，這是個可怕的錯誤，全都是我的錯。我們停在了一個陡峭的懸崖邊，而那些迅猛龍距離我們僅有幾步之遙。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225421"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荊棘谷的青山 - 第16頁",
				["material"] = "default",
				["text"] = {
					"艾耶克和艾爾加丁爵士悄無聲息地用槍瞄準著正在晃動的樹叢。正午的強烈陽光照在我們身上，艾爾加丁爵士的額頭流下了一絲汗水，然後拉動槍機準備射擊，發出喀的一聲。這時，濃密的樹叢忽然分開，一隻非常漂亮的大黑豹像離弦的箭一般衝了出來。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225428"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荊棘谷的青山 - 第1頁",
				["material"] = "default",
				["text"] = {
					"荊棘谷的青山\r\n\r\n第一天和我們預想中的完全一樣。我們大部分時間都忙於為建立營地，做一些必要的準備。我在一條河流的匯流處找到了理想的駐紮點。根據旁邊被廢棄的古老碼頭判斷，這個地方曾經有人住過，不過只有時間才知道，這裡究竟住過些什麼人。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225420"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荊棘谷的青山 - 第11頁",
				["material"] = "default",
				["text"] = {
					"在遍佈岩石的懸崖上，一隻迄今為止我見過的最巨大的獵豹在晚霞的映襯中冒了出來。我笨拙地開了槍，但是那隻豹絲毫未動。它又咆哮了一聲，比第一次的聲音更大，然後就消失了。\r\n\r\n我們把東西收好，然後神色黯然地返回了營地。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225419"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荊棘谷的青山 - 第27頁",
				["material"] = "default",
				["text"] = {
					"艾耶克和艾爾加丁爵士拿起他們的武器，守在我的兩側，我們的背後就是大海。巴尼爾沮喪地歎了一口長氣，然後拿起了他的斧頭。迅猛龍在慢慢地逼近，它們高傲地注視著我們，因為它們知道我們已經無路可逃了。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
		["Item-225425"] = {
			["base"] = {
				["pageCount"] = 0,
				["title"] = "荊棘谷的青山 - 第18頁",
				["material"] = "default",
				["text"] = {
					"他的槍猛然一震，槍管歪向一邊，撞到艾耶克的槍下面，打得她的槍往上揚起。好巧不巧，艾耶克正好在這時扣下扳機，砰的一聲只打中了樹頂。樹冠上的一群鳥尖叫著四處飛散，樹上冒出了一陣煙，然後我們驚異地看到一根巨大的樹枝掉落下來，正好砸中了疾馳的黑豹。",
				},
				["singlePage"] = true,
				["isObtainable"] = false,
				["isClassSpecific"] = false,
			},
		},
	},
};

return end
