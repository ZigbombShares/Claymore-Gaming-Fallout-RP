local category = "secondary"

nut.fallout.templates.secondary = {
	["revolver"] = {["component_steel"] = 1, ["component_wood"] = 1, ["component_springs"] = 3, ["component_screws"] = 3, ["component_adhesive"] = 1, ["component_rubber"] = 1},
	["pistol"] = {["component_steel"] = 1, ["component_wood"] = 1, ["component_springs"] = 2, ["component_screws"] = 2, ["component_adhesive"] = 1, ["component_rubber"] = 1},
	["energypistol"] = {["component_steel"] = 1, ["component_plastic"] = 1, ["component_springs"] = 2, ["component_screws"] = 2, ["component_adhesive"] = 1, ["component_rubber"] = 1, ["component_fiberoptics"] = 1},
}

nut.fallout.registry.secondary = {
	["weapon_huntingrevolver"] = {
		["name"] = "Hunting Revolver",
		["desc"] = "A Hunting Revolver.",
		["model"] = "models/Halokiller38/fallout/weapons/Pistols/huntingrevolver.mdl",
		["class"] = "weapon_huntingrevolver_len_r",
		["ammo"] = "45-70Govt",
		["type"] = "revolver",
	},
	["weapon_laserpistol"] = {
		["name"] = "Laser Pistol",
		["desc"] = "A pre-war laser pistol, a trusty sidearm.",
		["model"] = "models/Halokiller38/fallout/weapons/Energy Weapons/laserpistol.mdl",
		["class"] = "weapon_laserpistol_le",
		["ammo"] = "EnergyCell",
		["type"] = "energypistol",
	},
	["fonv_pn_pldisrupter"] = {
		["name"] = "Plasma Disruptor",
		["desc"] = "A Plasma Disruptor.",
		["model"] = "models/weapons/w_plasmadisrupter.mdl",
		["class"] = "fonv_pn_pldisrupter",
		["ammo"] = "MicrofusionCell",
		["type"] = "energypistol",
	},
	["weapon_laserpistolu"] = {
		["name"] = "Shit Shit �",
		["desc"] = "The literal worst weapon in the entire wasteland.",
		["model"] = "models/halokiller38/fallout/weapons/energy weapons/laserpistolunique.mdl",
		["class"] = "weapon_laserpistol",
		["ammo"] = "EnergyCell",
		["type"] = "energypistol",
	},
	["weapon_plasmapistol"] = {
		["name"] = "Plasma Pistol",
		["desc"] = "A Plasma Pistol.",
		["model"] = "models/Halokiller38/fallout/weapons/Plasma Weapons/plasmapistol.mdl",
		["class"] = "tfa_fwp_plasmapistol",
		["ammo"] = "EnergyCell",
		["type"] = "energypistol",
	},
	["weapon_plasmadefender"] = {
		["name"] = "Plasma Defender",
		["desc"] = "A Plasma Defender.",
		["model"] = "models/Halokiller38/fallout/weapons/Plasma Weapons/plasmadefender.mdl",
		["class"] = "tfa_ke_plasmadefender",
		["ammo"] = "EnergyCell",
		["type"] = "energypistol",
		["intelligence"] = 20,
	},
	["weapon_357revolverlonghdcyl"] = {
		["name"] = ".357 Magnum Long Barrel Revolver",
		["desc"] = "A .357 Magnum Long Barrel Revolver.",
		["model"] = "models/Halokiller38/fallout/weapons/Pistols/357revolverhdcyl.mdl",
		["class"] = "weapon_357rev_len",
		["ammo"] = "357Magnum",
		["type"] = "revolver",
	},
	["weapon_chinesepistol"] = {
		["name"] = "Chinese Pistol",
		["desc"] = "A Chinese Pistol.",
		["model"] = "models/Halokiller38/fallout/weapons/Pistols/chinesepistol.mdl",
		["class"] = "weapon_chinesepistol_len",
		["ammo"] = "10mm",
		["type"] = "pistol",
	},
	["weapon_9mmpistol"] = {
		["name"] = "9mm Pistol",
		["desc"] = "A 9mm Pistol.",
		["model"] = "models/Halokiller38/fallout/weapons/Pistols/9mmpistol.mdl",
		["class"] = "weapon_9mmpistol_len",
		["ammo"] = "9mm",
		["type"] = "pistol",
	},
	["weapon_maria_len"] = { -- Unique Legendary
		["name"] = "Maria",
		["desc"] = "A uniquely engraded pistol with Mother Maria on the grip. Engrade that it was crafted by M & A Guns Manufacturers. | UNIQUE LEGENDARY",
		["model"] = "models/halokiller38/fallout/weapons/pistols/9mmunique.mdl",
		["class"] = "weapon_maria_len",
		["ammo"] = "9mm",
		["type"] = "pistol",
	},
	["weapon_22mmpistolsil"] = {
		["name"] = "Silenced 22mm Pistol",
		["desc"] = "A Silenced 22mm Pistol.",
		["model"] = "models/Halokiller38/fallout/weapons/Pistols/silenced22pistol.mdl",
		["class"] = "weapon_22silenced_len",
		["ammo"] = "9mm",
		["type"] = "pistol",
	},
	["weapon_policepistol"] = {
		["name"] = "Police Pistol",
		["desc"] = "A Police Pistol.",
		["model"] = "models/Halokiller38/fallout/weapons/Pistols/policepistol.mdl",
		["class"] = "weapon_policepistol_len_r",
		["ammo"] = "357Magnum",
		["type"] = "pistol",
	},
	["weapon_rangersequoia"] = {
		["name"] = "Ranger Sequoia",
		["desc"] = "A terrifying revolver often only wielded by Rangers who have earned the right to do so.",
		["model"] = "models/Halokiller38/fallout/weapons/Pistols/rangersequoia.mdl",
		["class"] = "weapon_rangersequoia_lenn",
		["ammo"] = "45-70Govt",
		["type"] = "revolver",
	},
	["weapon_rangersequoia_ncr"] = {
		["name"] = "NCR Ranger Sequoia",
		["desc"] = "A terrifying revolver often only wielded by NCR Rangers who have earned the right to do so.",
		["model"] = "models/Halokiller38/fallout/weapons/Pistols/rangersequoia.mdl",
		["class"] = "weapon_rangersequoia_lenn",
		["ammo"] = "45-70Govt",
		["type"] = "revolver",
		["brand"] = "New California Republic"
	},
	["weapon_357lucky_len"] = { -- Unique Legendary
		["name"] = "Lucky",
		["desc"] = "The luckiest big iron on your hip. | UNIQUE LEGENDARY",
		["model"] = "models/Halokiller38/fallout/weapons/Pistols/rangersequoia.mdl",
		["class"] = "weapon_357lucky_len",
		["ammo"] = "45-70Govt",
		["type"] = "revolver",
	},
	["weapon_45autopistol"] = {
		["name"] = ".45 Auto Pistol",
		["desc"] = "A .45 Auto Pistol.",
		["model"] = "models/Halokiller38/fallout/weapons/Pistols/45pistol.mdl",
		["class"] = "weapon_45pistol_len",
		["ammo"] = "45Auto",
		["type"] = "pistol",
	},
	["weapon_44revolver"] = {
		["name"] = ".44 Magnum Revolver",
		["desc"] = "A .44 Magnum Revolver.",
		["model"] = "models/Halokiller38/fallout/weapons/Pistols/44magnumrevolver.mdl",
		["class"] = "tfa_fwp_44magnum",
		["ammo"] = "44Magnum",
		["type"] = "revolver",
	},
	["weapon_mysteriousmagnum_len"] = { -- Unique legendary
		["name"] = "The Mysterious Magnum",
		["desc"] = "A revolver that has more questions than answers. | UNIQUE LEGENDARY",
		["model"] = "models/Halokiller38/fallout/weapons/Pistols/44magnumrevolver.mdl",
		["class"] = "weapon_44mysterious_len",
		["ammo"] = "44Magnum",
		["type"] = "revolver",
	},
	["weapon_45autopistolu"] = {
		["name"] = "A Light in Shining Darkness",
		["desc"] = "The house always wins. And you, my friend, are in the house of God. | UNIQUE LEGENDARY",
		["model"] = "models/Halokiller38/fallout/weapons/Pistols/45autopistolunique.mdl",
		["class"] = "weapon_45autopistolu",
		["ammo"] = "45Auto",
		["type"] = "pistol",
	},
	["weapon_32pistol"] = {
		["name"] = ".32 Revolver",
		["desc"] = "A .32 Pistol.",
		["model"] = "models/Halokiller38/fallout/weapons/Pistols/32pistol.mdl",
		["class"] = "weapon_32revolver_ke",
		["ammo"] = "32",
		["type"] = "pistol",
	},
	["weapon_32pistol"] = {
		["name"] = "10mm Pistol",
		["desc"] = "A 10mm Pistol.",
		["model"] = "models/Halokiller38/fallout/weapons/pistols/10mmpistol.mdl",
		["class"] = "weapon_10mmpistol_len",
		["ammo"] = "10mm",
		["type"] = "pistol",
	},

	["weapon_127mmpistolsil"] = {
		["name"] = "Silenced .127 Pistol",
		["desc"] = "A Silenced .127 Machine Pistol.",
		["model"] = "models/Halokiller38/fallout/weapons/Pistols/127mmpistolsilencer.mdl",
		["class"] = "weapon_127pistolsil_len",
		["ammo"] = "127mm",
		["type"] = "pistol",
	},

	["weapon_127pistol_len"] = {
		["name"] = ".127 Pistol",
		["desc"] = "A .127 Machine Pistol.",
		["model"] = "models/Halokiller38/fallout/weapons/Pistols/127mmpistolsilencer.mdl",
		["class"] = "weapon_127pistol_len",
		["ammo"] = "127mm",
		["type"] = "pistol",
	},

	["weapon_thatgun_len"] = {
		["name"] = "That Gun",
		["desc"] = "You know, the one.",
		["model"] = "models/Halokiller38/fallout/weapons/Pistols/127mmpistolsilencer.mdl",
		["class"] = "weapon_thatgun_len",
		["ammo"] = "127mm",
		["type"] = "pistol",
	},
	/**	["weapon_cuff_elastic"] = {
		["name"] = "Handcuff Ties",
		["desc"] = "A set of handcuffs used to tie and capture people | This weapon has a weapon rule: Advanced Rules Page",
		["model"] = "models/weapons/w_suitcase_passenger.mdl",
		["class"] = "weapon_cuff_elastic",
		["ammo"] = "none",
	["type"] = "pistol",
	}, **/
	/*["hmc_fiberwire"] = {
		["name"] = "Fiber Wire",
		["desc"] = "A fiber wire used to choke out unsuspecting victims from behind | Requires Strength Stat",
		["model"] = "models/hmc/weapons/w_fibrewire2.mdl",
		["class"] = "hmc_fiberwire",
		["ammo"] = "none",
		["type"] = "pistol",
	},*/

	--[[			["weapon_camo"] = {
		["name"] = "Stealth Boy MKII",
		["desc"] = "A valuable piece of equipment used to turn invisible.",
		["model"] = "models/maxib123/suitcase.mdl",
		["class"] = "weapon_camo",
		["ammo"] = "none",
		["type"] = "pistol",
	},]]--
	/**		["weapon_mad_collar"] = {
		["name"] = "Slave Collar",
		["desc"] = "A slave collar used to control the work force | This weapon has a weapon rule: Advanced Rules Page",
		["model"] = "models/marvless/slavecollar.mdl",
		["class"] = "weapon_mad_collar",
		["ammo"] = "none",
		["type"] = "pistol",
	},**/
		["tabletcomm"] = {
		["name"] = "Communication Tablet",
		["desc"] = "A communication tablet developed and used by The United States Armed Forces during the war. Refurbished by capital technicians and only recently discovered.",
		["model"] = "models/visualitygaming/fallout/prop/backpack5.mdl",
		["class"] = "tabletcomm",
		["ammo"] = "none",
		["type"] = "pistol",
	},
	/**	["weapon_vj_flaregun"] = {
		["name"] = "Grapple Hook",
		["desc"] = "A grapple tool used to climb and grab.",
		["model"] = "models/weapons/w_pistol.mdl",
		["class"] = "realistic_hook",
		["ammo"] = "none",
		["type"] = "pistol",
	},**/
	/**		["realistic_hook"] = {
		["name"] = "Flare Gun",
		["desc"] = "A flare gun that will notify your faction members of distress.",
		["model"] = "models/vj_weapons/w_flaregun.mdl",
		["class"] = "sh_flare_gun",
		["ammo"] = "none",
		["type"] = "pistol",
	},**/
		["weapon_9mmsmgdrum"] = {
		["name"] = "9mm Sub-Machine Gun",
		["desc"] = "A 9mm Sub-Machine Gun (/w Drum).",
		["model"] = "models/halokiller38/fallout/weapons/smgs/9mmsmgdrumunique.mdl",
		["class"] = "weapon_9mm_sub",
		["ammo"] = "9mm",
		["type"] = "pistol",
	},
		["weapon_45smg"] = {
		["name"] = ".45 Sub-Machine Gun",
		["desc"] = "A .45 Sub-Machine Gun.",
		["model"] = "models/Halokiller38/fallout/weapons/SMGs/45smg.mdl",
		["class"] = "weapon_45_sub",
		["ammo"] = "45Auto",
		["type"] = "pistol",

	},
		["weapon_127mmsmgsil"] = {
		["name"] = ".127 Sub-Machine Gun",
		["desc"] = "A .127 Sub-Machine Gun",
		["model"] = "models/Halokiller38/fallout/weapons/SMGs/127smgsilencer.mdl",
		["class"] = "weapon_127mmsmg_len",
		["ammo"] = "127mm",
		["type"] = "pistol",
	},
		["weapon_127mm_silenced"] = {
		["name"] = "Silenced .127 Sub-Machine Gun",
		["desc"] = "A Silenced .127 Sub-Machine Gun",
		["model"] = "models/Halokiller38/fallout/weapons/SMGs/127smgsilencer.mdl",
		["class"] = "weapon_127mm_silenced",
		["ammo"] = "127mm",
		["type"] = "pistol",
	},
		["weapon_10mmsmg"] = {
		["name"] = "10mm Submachine Gun",
		["desc"] = "A 10mm SMG.",
		["model"] = "models/halokiller38/fallout/weapons/smgs/10mmsmgextclip.mdl",
		["class"] = "weapon_10mm_sub",
		["ammo"] = "10mm",
		["type"] = "pistol",
	},
		["weapon_infiltratorsil"] = {
		["name"] = "Infiltrator",
		["desc"] = "A submachine gun",
		["model"] = "models/halokiller38/fallout/weapons/assaultrifles/infiltratorsil.mdl",
		["class"] = "weapon_infiltrator_len",
		["ammo"] = "5.56mm",
		["type"] = "pistol",
	},
		["weapon_22smg"] = {
		["name"] = ".22 Sub-Machine Gun",
		["desc"] = "A 10mm SMG.",
		["model"] = "models/halokiller38/fallout/weapons/smgs/22smgext.mdl",
		["class"] = "weapon_22smg",
		["ammo"] = "22",
		["type"] = "pistol",
	},
	/**		["lockpick"] = {
		["name"] = "Lockpick Tool",
		["desc"] = "A tool that can be used to lockpick crates, doors, and extractors if skilled enough.",
		["model"] = "models/weapons/w_crowbar.mdl",
		["class"] = "fallout_lockpick",
		["ammo"] = "none",
		["type"] = "pistol",
	},**/
	/**			["builder"] = {
		["name"] = "Mine Refinery Building Kit [DISABLED]",
		["desc"] = "A tool that can be used to build and deploy mining refinery machinery at will.",
		["model"] = "models/clutter/toolbox.mdl",
		["class"] = "",
		["ammo"] = "none",
		["type"] = "pistol",
	},**/
	["weapon_judicator"] = {
		["name"] = "Judicator",
		["desc"] = "A shotgun-pistol sidearm.",
		["model"] = "models/Halokiller38/fallout/weapons/Pistols/44magnumrevolver.mdl",
		["class"] = "weapon_corder_judicator",
		["ammo"] = "12Guage",
		["type"] = "revolver",
	},
	/**		["realistic_hook"] = {
		["name"] = "Grappling Hook",
		["desc"] = "A grappling hook that can be used to navigate up obstacles.",
		["model"] = "models/halokiller38/fallout/weapons/pistols/556pistol.mdl",
		["class"] = "realistic_hook",
		["ammo"] = "none",
		["type"] = "pistol",
	},**/
	["weapon_maresleg"] = {
		["name"] = "Mare's Leg",
		["desc"] = "A mobilility oriented modified rifle. Crafted and used by The Nomads.",
		["model"] = "models/halokiller38/fallout/weapons/shotguns/sawedoffshotgun.mdl",
		["class"] = "weapon_corder_maresleg",
		["ammo"] = ".44",
		["type"] = "revolver",
	},
	/**	["weapon_extinguisher_infinite"] = {
	["name"] = "Fire Extinguisher",
	["desc"] = "A pre-war fire extinguisher used to put-out fires.",
	["model"] = "models/weapons/w_fire_extinguisher.mdl",
	["class"] = "weapon_extinguisher_infinite",
	["ammo"] = "none",
	["type"] = "pistol",
	},**/
	["roman_banner_spqr"] = {
		["name"] = "Caesar's Legion Imperium Banner",
		["desc"] = "A Banner of the Legion | Representation of Power",
		["model"] = "models/roman_flags_standard/roman_banner_spqr.mdl",
		["class"] = "roman_banner_spqr",
		["ammo"] = "none",
		["type"] = "pistol",
		["brand"] = "Caesar Legion"
	},
	["weapon_banner_glory"] = { -- Custom order by Meeps#0690
		["name"] = "Old Glory Banner",
		["desc"] = "A Banner of the old & glorious.",
		["model"] = "models/Halokiller38/fallout/weapons/Melee/eagleflagpoll.mdl",
		["class"] = "weapon_banner_glory",
		["ammo"] = "none",
		["type"] = "pistol",
	},
	["roman_silver_signum"] = {
		["name"] = "Caesar's Legion Bellum Banner",
		["desc"] = "A Banner of the Legion | Representation of Honor",
		["model"] = "models/roman_flags_standard/roman_silver_signum.mdl",
		["class"] = "roman_silver_signum",
		["ammo"] = "none",
		["type"] = "pistol",
		["brand"] = "Caesar Legion"
	},
	["roman_banner_pretorian"] = {
		["name"] = "Caesar's Legion Deus Banner",
		["desc"] = "A Banner of the Legion | Representation of Caesar, himself",
		["model"] = "models/roman_flags_standard/roman_banner_pretorian.mdl",
		["class"] = "roman_banner_pretorian",
		["ammo"] = "none",
		["type"] = "pistol",
		["brand"] = "Caesar Legion"
	},
	["weapon_huntingbow"] = {
		["name"] = "Hellfire Bow",
		["desc"] = "A hand-made Bow that shoots flaming Arrows | Uses Railway Spikes for Ammo",
		["model"] = "models/weapons/w_huntingbow.mdl",
		["class"] = "weapon_huntingbow",
		["ammo"] = "railway",
		["type"] = "rifle",
	},
	["weapon_glyph_crossbow"] = {
		["name"] = "Hellfire Crossbow",
		["desc"] = "A hand-made Explosive Crossbow that shoots Explosive Rods | Uses Railway Spikes for Ammo",
		["model"] = "models/weapons/w_crossbow.mdl",
		["class"] = "weapon_glyph_crossbow",
		["ammo"] = "railway",
		["type"] = "rifle",
	},
	["weapon_corder_deagle"] = {	-- Custom order by Novawolf#7378
		["name"] = "Desert Eagle",
		["desc"] = "An ancient Desert Eagle pistol, loads .50 MG.",
		["model"] = "models/weapons/cgc/c_deserteagle_lenm.mdl",
		["class"] = "weapon_corder_deagle",
		["ammo"] = "50MG",
		["type"] = "rifle",
	},
	/**
	["harpoon_hook"] = {
		["name"] = "Crosshook",
		["desc"] = "A crossbow equipped with a hook used for kidnapping",
		["model"] = "models/weapons/w_crossbow.mdl",
		["class"] = "harpoon_hook",
		["ammo"] = "none",
		["type"] = "rifle",
	},
	**/
	["deployable_shield"] = {
		["name"] = "BOS Deployable Shield",
		["desc"] = "An old refurbished Deployable Riot Control shield. Bears the mark of the Brotherhood of Steel. ",
		["model"] = "models/bshields/dshield.mdl",
		["class"] = "deployable_shield",
		["ammo"] = "None",
		["type"] = "shield",
	},
	["heavy_shield"] = {
		["name"] = "Heavy Shield",
		["desc"] = "An old pre-war Riot Control Shield. ",
		["model"] = "models/bshields/dshield.mdl",
		["class"] = "heavy_shield",
		["ammo"] = "None",
		["type"] = "shield",
	},
	["riot_shield"] = {
		["name"] = "NCR Riot Shield",
		["desc"] = "An old refurbished Riot Shield. Bears the mark of the NCR. ",
		["model"] = "models/bshields/dshield.mdl",
		["class"] = "riot_shield",
		["ammo"] = "None",
		["type"] = "shield",
	},
	["weapon_enclavescanner"] = {
		["name"] = "Mutation Scanner",
		["desc"] = "An Enclave developed scanner that detects the amount of DNA differentiation between pure human and mutant. It can be unreliable on non-humanoid scans due to the DNA being nearly unrecognizable.",
		["model"] = "models/halokiller38/fallout/weapons/explosives/c4det.mdl",
		["class"] = "weapon_enclavescanner",
		["ammo"] = "None",
		["type"] = "energypistol",
	},
	["weapon_sawedoffshotgun"] = { -- Previously was in primary registry
		["name"] = "Sawed Off Shotgun",
		["desc"] = "A 'Mad Max' of a weapon.",
		["model"] = "models/halokiller38/fallout/weapons/shotguns/sawedoffshotgun.mdl",
		["class"] = "weapon_sawnoffshot_len",
		["ammo"] = "shotgunr",
		["type"] = "shotgun",
	},
	["tfa_fwp_pipebolt"] = {
		["name"] = "Pipe Bolt-Action",
		["desc"] = "A bolt-action sidearm made of pipe and scrap.",
		["model"] = "models/illusion/fwp/w_pipebolt.mdl",
		["class"] = "tfa_fwp_pipebolt",
		["ammo"] = "railway",
		["type"] = "pistol",
	},
	["tfa_fwp_pipeboltscoped"] = {
		["name"] = "Pipe Bolt-Action (Scoped)",
		["desc"] = "A bolt-action sidearm made of pipe and scrap with a scope glued to the top.",
		["model"] = "models/illusion/fwp/w_pipeboltscoped.mdl",
		["class"] = "tfa_fwp_pipeboltscoped",
		["ammo"] = "railway",
		["type"] = "pistol",
	},
	["tfa_fwp_piperevolver"] = {
		["name"] = "Pipe Revolver",
		["desc"] = "A revolver made of pipe and scrap.",
		["model"] = "models/illusion/fwp/w_piperevolver.mdl",
		["class"] = "tfa_fwp_piperevolver",
		["ammo"] = "railway",
		["type"] = "revolver",
	},
	["weapon_corder_flamepistol"] = {	-- Custom order by noctusterrorem#4953
		["name"] = "Mini Brimstone",
		["desc"] = "A compact & hand-held flame thrower.",
		["model"] = "models/fallout/weapons/w_freezeray.mdl",
		["class"] = "weapon_corder_flamepistol",
		["ammo"] = "EnergyCell",
		["type"] = "pistol",
	},
}