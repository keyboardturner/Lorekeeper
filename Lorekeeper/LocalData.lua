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
						0.7955633401870728
					}
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
					'Greetings, Eliabell.\r\n\r\nI\'ve received word of your exploits in this fair land of ours, as well as your recent treaties with the individuals known as "The Weaver" and "The General".\r\n\r\nI believe that it is now my turn.\r\n\r\nCome to the Burrows in the City of Threads. I understand that you\'ve acquired Pheromones from Anub\'azal? Those should be adequate enough to provide you umbrage in said Burrows, but no where else. I\'ll provide you something more substantial than that should we come to a pact during our conference.\r\n\r\nOh. If you\'re still uncertain of our meeting, then just know that I\'ve got information on your lost lordling of Stormwind. You\'re not likely to learn of it elsewhere.',
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
	},
};


LK["LocalData"] = {
	["questItems"] = {
		[136785] = {
			["isQuestItem"] = true,
			["isObtainable"] = true,
			["isClassSpecific"] = false,
		},
	},
};

end

if LOCALE == "esES" or LOCALE == "esMX" then
	-- Spanish text data goes here

return end

if LOCALE == "deDE" then
	-- German text data go here

return end

if LOCALE == "frFR" then
	-- French text data go here

return end

if LOCALE == "itIT" then
	-- French text data go here

return end

if LOCALE == "ptBR" then
	-- Brazilian Portuguese text data go here

-- Note that the EU Portuguese WoW client also
-- uses the Brazilian Portuguese locale code.
return end

if LOCALE == "ruRU" then
	-- Russian text data go here

return end

if LOCALE == "koKR" then
	-- Korean text data go here

return end

if LOCALE == "zhCN" then
	-- Simplified Chinese text data go here

return end

if LOCALE == "zhTW" then
	-- Traditional Chinese text data go here

return end