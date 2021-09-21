ammow_dowwop = Creature:new {
	objectName = "",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 6,
	chanceHit = 0.250000,
	damageMin = 50,
	damageMax = 55,
	baseXp = 113,
	baseHAM = 180,
	baseHAMmax = 220,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_noble_bothan_male_01.iff",
		"object/mobile/dressed_noble_fat_human_male_01.iff",
		"object/mobile/dressed_noble_fat_human_male_02.iff",
		"object/mobile/dressed_noble_fat_twilek_male_01.iff",
		"object/mobile/dressed_noble_fat_twilek_male_02.iff",
		"object/mobile/dressed_noble_fat_zabrak_male_01.iff",
		"object/mobile/dressed_noble_fat_zabrak_male_02.iff",
		"object/mobile/dressed_noble_naboo_twilek_male_01.iff",
		"object/mobile/dressed_noble_old_twk_male_01.iff",
		"object/mobile/dressed_noble_old_twk_male_02.iff",
		"object/mobile/dressed_noble_old_zabrak_male_01.iff",
		"object/mobile/dressed_noble_old_zabrak_male_02.iff",
		"object/mobile/dressed_noble_rodian_male_01.iff",
		"object/mobile/dressed_noble_trandoshan_male_01.iff",
		"object/mobile/dressed_noble_twilek_male_01.iff",
		"object/mobile/dressed_noble_zabrak_male_01.iff",
	},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "lt_harburik_mission_target_convotemplate",
	attacks = brawlermaster
}

CreatureTemplates:addCreatureTemplate(ammow_dowwop, "ammow_dowwop")
