CreatureTemplates:addCreatureTemplate(wf_a, "wf_a")

wf_a = Creature:new {
	objectName = "",
	customName = "A",
	socialGroup = "",
	faction = "",
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
	creatureBitmask = PACK,
	optionsBitmask = INVULNERABLE + CONVERSABLE,
	diet = HERBIVORE,

	templates = {"object/mobile/3po_protocol_droid_red.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "wf_a_convo_template",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(wf_a, "wf_a")