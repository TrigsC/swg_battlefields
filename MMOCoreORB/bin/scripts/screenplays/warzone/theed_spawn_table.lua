theedMobileSpawns = {
	[0] = {
		--{ "paemos", 5289, 78, -4149, 240, "", "" },
	},
	[1] = {
		--{ "captain_sarguillo", 5313.9, 78.5, -4161.5, -72, "", "villageSarguilloPhase1ConvoTemplate" },
	},
	[2] = {
		--{ "captain_sarguillo", 5313.9, 78.5, -4161.5, -72, "", "villageSarguilloPhase2ConvoTemplate" },
        { "naboo", "fbase_rebel_soldier_extreme", 0, -5507, 6, 4388, 180, 0 }
	},
	[3] = {
		--{ "dageerin", 5238.25, 78.5, -4189.05, 97, "", "villageDageerinPhase3ConvoTemplate" },
	},
}

theedObjectSpawns = {
    [0] = {
            
    },
	[1] = {
            { "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5537.314941, 4.508315, 4072.702393, 9995555, 0.731819, 0.000000, -0.681491, 0.000000 },
    },
    [2] = {
            { "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5272.303223, -0.211444, 4310.262207, 9995555, 0.530207, -0.000000, 0.847868, -0.000000 },
            --{ "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5322.784668, 6.000000, 4305.860352, 9995555, -0.123345, -0.000001, 0.992364, -0.000001 },
    },
    [3] = {
            --spawnSceneObject("object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5537.314941, 4.508315, 4072.702393, 9995555, 0.731819, 0.000000, -0.681491, 0.000000)
    },
}

theedPhase1Kill = { "naboo", "fbase_rebel_soldier_extreme", 0, -5592, 6, 4071, 174, 0 }

theedPhase2_1Kill = { "naboo", "fbase_rebel_soldier_extreme", 0, -5483, 6, 4387, 180, 0 }

theedPhase2_2Kill = { "naboo", "light_jedi_sentinel", 0, -5495, 6, 4406, 180, 0 }