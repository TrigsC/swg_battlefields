tp_imperial = Creature:new {
	objectName = "@mob/creature_names:imperial_recruiter",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 20,
	chanceHit = 0.33,
	damageMin = 190,
	damageMax = 200,
	baseXp = 1426,
	baseHAM = 5000,
	baseHAMmax = 6100,
	armor = 0,
	resists = {0,0,0,40,-1,40,-1,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_imperial_recruiter_human_female_01.iff",
		"object/mobile/dressed_imperial_recruiter_human_female_02.iff",
		"object/mobile/dressed_imperial_recruiter_moncal_male_01.iff",
		"object/mobile/dressed_imperial_recruiter_twilek_female_01.iff"},
	lootGroups = {},
	weapons = {},
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster,brawlermaster),
	conversationTemplate = "tp_imperialConversationTemplate",
	containerComponentTemplate = "",
	optionsBitmask = INVULNERABLE + CONVERSABLE

}

CreatureTemplates:addCreatureTemplate(tp_imperial, "tp_imperial")