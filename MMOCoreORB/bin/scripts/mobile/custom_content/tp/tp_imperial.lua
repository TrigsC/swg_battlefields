tp_imperial = Creature:new {
	objectName = "",
	customName = "Imperial Battlefield",
	socialGroup = "imperial",
	faction = "imperial",
	level = 100,
	chanceHit = 1,
	damageMin = 645,
	damageMax = 1000,
	baseXp = 9429,
	baseHAM = 24000,
	baseHAMmax = 30000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,0,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = INVULNERABLE + CONVERSABLE,
	diet = HERBIVORE,

	--templates = {"object/mobile/4lom.iff"},
	templates = {"object/mobile/dressed_fs_village_whip.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "tp_imperialConversationTemplate",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(tp_imperial, "tp_imperial")