WarZoneSpawner = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "WarZoneSpawner"
}

registerScreenPlay("WarZoneSpawner", true)

function WarZoneSpawner:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function WarZoneSpawner:spawnMobiles()

    --Naboo Imp HQ
    spawnMobile("naboo", "tp_imperial", 0, 2437.594971, 291.989197, -3895.646484, 170, 0)
    --spawnMobile("yavin4", "tp_hq", 0, -0.0559132, -43.4244, -56.2239, 90, 17)
    spawnMobile("yavin4", "tp_hq", 0, 5089, 79, 309, 270, 0)
    --Cnet Reb HQ
    spawnMobile("corellia", "tp_rebel", 0, -6522, 398, 6040, 130, 0)
    spawnMobile("corellia", "rebel_recruiter", 0, -6537, 398, 6037, 130, 0)

    --Corellia Zone
    -- imp
    spawnMobile("corellia", "tp_hq", 0, -210, 28, -4057, 0, 0)
    --spawnMobile("corellia", "fbase_stormtrooper_extreme", 60, -154, 28, -4175, 0, 0)
    --spawnMobile("corellia", "fbase_stormtrooper_extreme", 60, -174, 28, -4177, 0, 0)
    --spawnMobile("corellia", "fbase_stormtrooper_extreme", 60, -243, 28, -4153, 0, 0)
    --spawnMobile("corellia", "fbase_stormtrooper_extreme", 60, -250, 28, -4151, 0, 0)
    -- reb
    spawnMobile("corellia", "tp_hq", 0, -173, 28, -4839, 0, 0)
    --spawnMobile("corellia", "fbase_rebel_soldier_extreme", 60, -83, 28, -4805, 0, 0)
    --spawnMobile("corellia", "fbase_rebel_soldier_extreme", 60, -80, 28, -4820, 0, 0)
    --spawnMobile("corellia", "fbase_rebel_soldier_extreme", 60, -133, 28, -4700, 0, 0)
    --spawnMobile("corellia", "fbase_rebel_soldier_extreme", 60, -154, 28, -4698, 0, 0)
    --spawnMobile("corellia", "fbase_rebel_soldier_extreme", 60, -198, 28, -4733, 0, 0)

    -- Wayfar
    -- imp
    spawnMobile("tatooine", "tp_hq", 0, -5309, 75, -6567, 180, 0)
    --reb
    spawnMobile("tatooine", "tp_hq", 0, -5070, 75, -6539, 180, 0)

    -- THEED
    -- imp
    
    --reb
    

    -- REBHIDEOUT
    -- imp
    spawnMobile("dantooine", "tp_hq", 0, -6622, 30, 5481, 0, 0)
    --spawnMobile("dantooine", "fbase_stormtrooper_extreme", 60, -6613, 30, 5523, 0, 0)
    --spawnMobile("dantooine", "fbase_stormtrooper_extreme", 60, -6622, 30, 5517, 0, 0)
    --spawnMobile("dantooine", "fbase_stormtrooper_rifleman_hard", 60, -6641, 30, 5556, 270, 0)
    --spawnMobile("dantooine", "fbase_stormtrooper_rifleman_hard", 60, -6640, 30, 5531, 270, 0)
    --spawnMobile("dantooine", "fbase_stormtrooper", 60, -6683, 30, 5505, 270, 0)
    --spawnMobile("dantooine", "fbase_stormtrooper", 60, -6684, 30, 5513, 270, 0)
    --reb
    spawnMobile("dantooine", "tp_hq", 0, -7049, 25, 5390, 20, 0)
    --spawnMobile("dantooine", "fbase_rebel_soldier_extreme", 60, -7038, 25, 5410, 0, 0)
    --spawnMobile("dantooine", "fbase_rebel_soldier_extreme", 60, -7044, 25, 5415, 0, 0)
    --spawnMobile("dantooine", "fbase_rebel_rifleman_hard", 60, -7001, 25, 5413, 20, 0)
    --spawnMobile("dantooine", "fbase_rebel_rifleman_hard", 60, -7014, 25, 5399, 210, 0)
    --spawnMobile("dantooine", "fbase_rebel_soldier", 60, -6950, 25, 5419, 30, 0)
    --spawnMobile("dantooine", "fbase_rebel_soldier", 60, -6956, 25, 5425, 30, 0)

    -- THEED
    -- reb
    spawnMobile("naboo", "tp_hq", 0, -4582, 7, 4136, 270, 0)
    --spawnMobile("naboo", "fbase_rebel_soldier", 60, -4828, 6, 4122, 290, 0)
    --spawnMobile("naboo", "fbase_rebel_soldier", 60, -4842, 6, 4101, 290, 0)
    --spawnMobile("naboo", "fbase_rebel_soldier", 60, -4829, 6, 4064, 200, 0)
    --spawnMobile("naboo", "fbase_rebel_rifleman_hard", 60, -4681, 6, 4011, 210, 0)
    --spawnMobile("naboo", "fbase_rebel_rifleman_hard", 60, -4630, 6, 4033, 210, 0)
    --spawnMobile("naboo", "fbase_rebel_soldier_extreme", 60, -4620, 6, 4085, 190, 0)
    --spawnMobile("naboo", "fbase_rebel_soldier_extreme", 60, -4596, 6, 4118, 190, 0)
    -- imp
    spawnMobile("naboo", "tp_hq", 0, -5995, 6, 4295, 90, 0)
    --spawnMobile("naboo", "fbase_stormtrooper_extreme", 60, -5969, 6, 4303, 40, 0)
    --spawnMobile("naboo", "fbase_stormtrooper_extreme", 60, -5975, 6, 4263, 180, 0)
    --spawnMobile("naboo", "fbase_stormtrooper_rifleman_hard", 60, -5940, 6, 4249, 90, 0)
    --spawnMobile("naboo", "fbase_stormtrooper_rifleman_hard", 60, -5976, 6, 4210, 90, 0)
    --spawnMobile("naboo", "fbase_stormtrooper_rifleman_hard", 60, -5895, 6, 4151, 90, 0)
    --spawnMobile("naboo", "fbase_stormtrooper_rifleman_hard", 60, -5897, 6, 4126, 40, 0)
    --spawnMobile("naboo", "fbase_stormtrooper_rifleman_hard", 60, -5872, 6, 4227, 40, 0)
    --spawnMobile("naboo", "fbase_stormtrooper", 60, -5835, 6, 4125, 90, 0)
    --spawnMobile("naboo", "fbase_stormtrooper", 60, -5827, 6, 4151, 90, 0)
    --spawnMobile("naboo", "fbase_stormtrooper", 60, -5812, 6, 4263, 90, 0)
    --spawnMobile("naboo", "fbase_stormtrooper", 60, -5802, 6, 4296, 90, 0)

end

function WarZoneSpawner:spawnSceneObjects()

	-- Dark Enclave
    spawnSceneObject("yavin4", "object/static/structure/corellia/corl_imprv_wall_4x32_s04.iff", 5082.293945, 79.815178, 304.940796, 9995396, 0.999785, 0.000000, 0.020744, 0.000000)
    spawnSceneObject("yavin4", "object/static/structure/corellia/corl_imprv_wall_4x32_s04.iff", 5082.030762, 78.458969, 314.276062, 9995396, 0.999540, -0.000000 ,0.030326, 0.000002)
    spawnSceneObject("yavin4", "object/static/structure/corellia/corl_imprv_wall_4x16_s04.iff", 5095.313965, 79.999283, 311.800903, 9995396, 0.705704, -0.000000, 0.708507, -0.000000)
    

    -- Imperial Spawn
    -- Character builder
    spawnSceneObject("naboo", "object/tangible/terminal/terminal_character_builder.iff", 2428.552979, 292.000000, -3910.535889, 9995396, 0.103863, -0.000001, 0.994592, -0.000001)
    spawnSceneObject("naboo", "object/tangible/crafting/station/weapon_station.iff", 2408.881348, 292.000000, -3917.783203, 9995427, 0.788138, -0.000000, 0.615498, 0.000001)
    spawnSceneObject("naboo", "object/tangible/crafting/station/clothing_station.iff", 2409.980713, 292.000000, -3923.220947, 9995427, 0.089515, -0.000002, 0.995985, -0.000001)
    spawnSceneObject("naboo", "object/tangible/terminal/terminal_dark_enclave_voting.iff", 2408.460693, 292.000000, -3914.206299, 9995427, 0.764783, -0.000001, 0.644287, 0.000001)
    spawnSceneObject("naboo", "object/tangible/terminal/terminal_dark_enclave_challenge.iff", 2408.092773, 292.000000, -3910.553467, 9995427, 0.763180, 0.000000, 0.646186, 0.000000)
    spawnSceneObject("naboo", "object/tangible/terminal/terminal_guild.iff", 2406.652588, 292.000000, -3906.270020, 9995407, 0.766893, 0.000000, 0.641775, 0.000000)
    --military_wall_weak_imperial_32_style_01
    spawnSceneObject("naboo", "object/static/structure/military/military_wall_weak_imperial_32_style_01.iff", 2454.300293, 290.171356, -3914.878906, 9995397, 0.751653, -0.000001, 0.659551, -0.000000)
    spawnSceneObject("naboo", "object/static/structure/military/military_wall_weak_imperial_32_style_01.iff", 2451.142822, 290.279938, -3947.072754, 9995398, 0.582305, -0.000001, 0.812970, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/military/military_wall_weak_imperial_32_style_01.iff", 2433.604248, 290.405853, -3973.836670, 9995399, 0.351802, -0.000001, 0.936074, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/military/military_wall_weak_imperial_32_style_01.iff", 2405.982178, 290.490753, -3981.321777, 9995400, -0.093148, -0.000001, 0.995652, -0.000001)
    
    --military_wall_weak_imperial_style_01
    spawnSceneObject("naboo", "object/static/structure/military/military_wall_weak_imperial_style_01.iff", 2406.934326, 290.173584, -3890.299316, 9995401, 0.993324, 0.000000, -0.115355, 0.000000)
    --bfield_column_impl_med
    spawnSceneObject("naboo", "object/installation/battlefield/destructible/bfield_column_impl_med.iff", 2456.594482, 290.464935, -3931.302979, 9995402, 0.718681, 0.000000, 0.695340, 0.000000)
    spawnSceneObject("naboo", "object/installation/battlefield/destructible/bfield_column_impl_med.iff", 2445.539795, 290.835907, -3962.948242, 9995403, 0.443769, -0.000000, 0.896141, -0.000000)
    spawnSceneObject("naboo", "object/installation/battlefield/destructible/bfield_column_impl_med.iff", 2421.414551, 290.693207, -3984.122803, 9995404, 0.004853, -0.000001, 0.999988, -0.000001)
    

    -- Rebel Spawn
    -- Character builder
    spawnSceneObject("corellia", "object/tangible/terminal/terminal_character_builder.iff", -6525.165527, 398.000000, 6010.492676, 9995397, 0.918580, 0.000000, -0.395236, 0.000001)
    spawnSceneObject("corellia", "object/tangible/terminal/terminal_light_enclave_voting.iff", -6519.513672, 398.000000, 6016.104004, 9995397, 0.918580, 0.000000, -0.395236, 0.000001)
    spawnSceneObject("corellia", "object/tangible/terminal/terminal_light_enclave_challenge.iff", -6521.921875, 398.000000, 6013.890137, 9995397, 0.918580, 0.000000, -0.395236, 0.000001)
    spawnSceneObject("corellia", "object/tangible/terminal/terminal_guild.iff", -6516.572754, 398.000000, 6019.006348, 9995398, 0.912366, -0.000001, -0.409375, 0.000000)
    spawnSceneObject("corellia", "object/tangible/crafting/station/weapon_station.iff", -6515.637695, 397.974060, 6020.520020, 9995404, 0.924643, 0.000843, -0.380742, 0.008069)
    spawnSceneObject("corellia", "object/tangible/crafting/station/clothing_station.iff", -6512.155273, 398.000000, 6023.971680, 9995405, 0.930131, -0.000001, 0.367228, -0.000000)
    --military_wall_strong_rebl_style_01
    spawnSceneObject("corellia", "object/static/structure/military/military_wall_strong_rebl_style_01.iff", -6559.655273, 403.794922, 5940.076660, 9995405, -0.400055, -0.000002, 0.916491, -0.000002)
    spawnSceneObject("corellia", "object/static/structure/military/military_wall_strong_rebl_style_01.iff", -6491.673828, 403.793701, 5917.130859, 9995406, 0.102275, -0.000001, 0.994756, -0.000001)
    spawnSceneObject("corellia", "object/static/structure/military/military_wall_strong_rebl_style_01.iff", -6435.701660, 403.709076, 6023.416016, 9995407, 0.843996, 0.000000, 0.536349, 0.000000)


    --Corellia Coronet
	--Perimeter
	spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x32_s01.iff", -307.2, 28,-4146.5, 9995397, 0)
	spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x32_s01.iff", -429.3, 28,-4147, 9995396, 0)
	spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x32_s01.iff", -518.2, 28,-4217.8, 9995395, math.rad(135) )
	spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x32_s01.iff", -563.4, 28,-4239.9, 9995394, math.rad(135) )
	spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x32_s01.iff", -591.5, 28,-4330.6, 9995393, math.rad(90) )
	spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x16_s01.iff", -591.6, 28,-4480.56, 9995392, math.rad(90) )
	spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x16_s01.iff", -591.6, 28,-4506.78, 9995391, math.rad(90) )
	spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x32_s01.iff", -535.9, 28,-4626.4, 9995390, math.rad(0) )
	spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x32_s01.iff", -523.57, 28,-4642.17, 9995389, math.rad(90) )
	spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x16_s02.iff", -524.57, 28.6,-4666.34, 9995388, math.rad(90) )
	spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x16_s02.iff", -524.3, 28.6,-4679.34, 9995387, math.rad(90) )
	spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x16_s02.iff", -503.84, 28.0,-4699, 9995386, math.rad(0) )
	spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x16_s01.iff", -301.5, 28,-4783.65, 9995385, math.rad(0) )
	spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x16_s01.iff", -218.99, 28,-4794.91, 9995384, math.rad(90) )
	spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x16_s01.iff", -120.9, 28,-4814.69, 9995383, math.rad(0) )
	spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x16_s01.iff", -90.84, 28,-4833.5, 9995382, math.rad(0) )
	spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x16_s01.iff", -26.62, 28,-4838.64, 9995381, math.rad(0) )
	spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x16_s01.iff", -1.37, 28,-4847.86, 9995380, math.rad(0) )
	spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x16_s01.iff", 24.55, 28,-4836.67, 9995379, math.rad(350) )
	spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x32_s04.iff", 163.37, 28,-4700.05, 9995378, math.rad(315) )
	spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x16_s04.iff", 126.03, 28,-4542.33, 9995372, math.rad(270) )
	spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x16_s01.iff", 141.94, 28,-4536.77, 9995373, math.rad(315) )
	spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x16_s01.iff", 109.26, 28,-4467.42, 9995374, math.rad(180) )
	spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x32_s01.iff", 93.69, 28,-4402.79, 9995375, math.rad(270) )
	spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x16_s01.iff", 20.53, 28,-4242.06, 9995376, math.rad(180) )
	spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x16_s01.iff", -116.13, 28,-4206.98, 9995377, math.rad(180) )
    spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x32_s02.iff", -220.569458, 28.857870, -4053.783936, 9995408, 0.943396, 0.000000, -0.331669, 0.000002)
    spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x32_s02.iff", -198.512894, 28.333174, -4053.550049, 9995409, -0.257574, -0.000001, 0.966259, -0.000001)
    spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x16_s01.iff", -441.376343, 28.000000, -4746.615234, 9995410, 0.920660, 0.000000, 0.390365, 0.000000)
    spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x32_s01.iff", -164.238113, 28.000000, -4844.681641, 9995411, 0.961303, 0.000000, -0.275494, 0.000000)
    spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x32_s01.iff", -187.891632, 28.000000, -4843.392090, 9995412, 0.937082, 0.000000, 0.349109, 0.000000)
    --Imperial Side
    --Banners
    spawnSceneObject("corellia", "object/static/structure/general/banner_imperial_style_01.iff", -242.764572, 28.000000, -4158.641602, 9995413, -0.003379, -0.000001, 0.999994, -0.000001)
    spawnSceneObject("corellia", "object/static/structure/general/banner_imperial_style_01.iff", -253.933563, 28.000000, -4152.202148, 9995414, -0.456698, -0.000001, 0.889622, -0.000001)
    spawnSceneObject("corellia", "object/static/structure/general/banner_imperial_style_01.iff", -175.364273, 27.999969, -4219.573730, 9995415, 0.023047, -0.000001, 0.999727, -0.000001)
    spawnSceneObject("corellia", "object/static/structure/general/banner_imperial_style_01.iff", -152.595520, 28.000000, -4218.673828, 9995416, -0.000258, -0.000001, 1.000000, -0.000001)
    --Rebel Side
    --Banners
    spawnSceneObject("corellia", "object/static/structure/general/banner_rebel_style_01.iff", -44.192482, 28.000000, -4799.090820, 9995417, 0.782615, 0.000000, 0.622506, 0.000000)
    spawnSceneObject("corellia", "object/static/structure/general/banner_rebel_style_01.iff", -43.403961, 28.000000, -4818.764648, 9995418, 0.697644, -0.000000, 0.716437, -0.000000)
    spawnSceneObject("corellia", "object/static/structure/general/banner_rebel_style_01.iff", -229.352127, 28.000000, -4724.079590, 9995419, 0.766234, 0.000000, 0.642561, 0.000000)
    spawnSceneObject("corellia", "object/static/structure/general/banner_rebel_style_01.iff", -230.021210, 28.000000, -4712.869141, 9995420, 0.766234, 0.000000, 0.642561, 0.000000)
    spawnSceneObject("corellia", "object/static/structure/general/banner_rebel_style_01.iff", -214.209076, 28.000000, -4694.008789, 9995421, -0.699209, -0.000001, 0.714917, -0.000001)
    spawnSceneObject("corellia", "object/static/structure/general/banner_rebel_style_01.iff", -212.977936, 28.000000, -4672.692871, 9995422, 0.726985, 0.000000, 0.686654, 0.000000)
    spawnSceneObject("corellia", "object/static/structure/general/banner_rebel_style_01.iff", -157.715775, 27.993208, -4655.173828, 9995423, -0.005131, -0.000002, 0.999986, -0.000001)
    spawnSceneObject("corellia", "object/static/structure/general/banner_rebel_style_01.iff", -149.948181, 28.000000, -4655.267090, 9995424, 0.065267, -0.000003, 0.997868, -0.000002)
    spawnSceneObject("corellia", "object/static/structure/general/banner_rebel_style_01.iff", -105.338020, 28.000000, -4659.260254, 9995425, 0.989940, 0.000000, 0.141486, 0.000000)
    spawnSceneObject("corellia", "object/static/structure/general/banner_rebel_style_01.iff", -97.703972, 28.000000, -4663.101074, 9995426, 0.989940, 0.000000, 0.141486, 0.000000)

    --Wayfar
    spawnSceneObject("tatooine", "object/static/structure/tatooine/wall_junkshop_watto.iff", -5076.979492, 75.000000, -6537.668457, 9995426, 0.862556, 0.000000, -0.505962, 0.000000)
    spawnSceneObject("tatooine", "object/static/structure/tatooine/wall_junkshop_watto.iff", -5065.906738, 75.000000, -6535.527344, 9995426, -0.217006, -0.000001, 0.976170, -0.000001)
    spawnSceneObject("tatooine", "object/static/structure/tatooine/wall_junkshop_watto.iff", -5055.346680, 75.000114, -6548.510254, 9995426, -0.606940, 0.000000, 0.794748, -0.000000)
    spawnSceneObject("tatooine", "object/static/structure/tatooine/wall_junkshop_watto.iff", -5052.854980, 74.999939, -6566.514160, 9995426, 0.707727, 0.000002, -0.706486, 0.000003)
    spawnSceneObject("tatooine", "object/static/structure/tatooine/wall_junkshop_watto.iff", -5043.961914, 75.000000, -6577.602539, 9995426, -0.227420, -0.000001, 0.973797, -0.000001)
    spawnSceneObject("tatooine", "object/static/structure/tatooine/wall_junkshop_watto.iff", -5032.822266, 75.000000, -6590.876953, 9995426, -0.611130, -0.000004, 0.791530, -0.000004)
    spawnSceneObject("tatooine", "object/static/structure/tatooine/wall_junkshop_watto.iff", -5031.292969, 74.942459, -6610.369629, 9995426, 0.740473, 0.000001, -0.672086, 0.000002)
    spawnSceneObject("tatooine", "object/static/structure/tatooine/wall_junkshop_watto.iff", -5033.739258, 75.000000, -6629.738281, 9995426, 0.758985, 0.000000, -0.651108, 0.000000)
    spawnSceneObject("tatooine", "object/static/structure/tatooine/wall_junkshop_watto.iff", -5044.986816, 75.003777, -6640.376953, 9995426, 0.998951, 0.000000, -0.045788, 0.000000)
    spawnSceneObject("tatooine", "object/static/structure/tatooine/wall_junkshop_watto.iff", -5210.791504, 75.000000, -6618.606445, 9995426, 0.996886, 0.000000, 0.078843, 0.000000)
    spawnSceneObject("tatooine", "object/static/structure/tatooine/wall_junkshop_watto.iff", -5306.751953, 75.000000, -6521.432617, 9995426, 0.701502, -0.000001, 0.712667, -0.000001)
    spawnSceneObject("tatooine", "object/static/structure/tatooine/wall_junkshop_watto.iff", -5219.171387, 75.000000, -6452.943848, 9995426, 0.600407, -0.000000, 0.799694, -0.000000)
    spawnSceneObject("tatooine", "object/static/structure/tatooine/wall_junkshop_watto.iff", -5167.296875, 75.000000, -6455.758301, 9995426, -0.504749, -0.000001, 0.863266, -0.000001)
    spawnSceneObject("tatooine", "object/static/structure/tatooine/wall_junkshop_watto.iff", -5092.387207, 75.000000, -6507.812012, 9995426, -0.676348, -0.000001, 0.736582, -0.000002)
    spawnSceneObject("tatooine", "object/static/structure/tatooine/wall_junkshop_watto.iff", -5307.867188, 75.114388, -6564.445313, 9995426, 0.998404, 0.000000, -0.056483, 0.000000)
    spawnSceneObject("tatooine", "object/static/structure/tatooine/wall_junkshop_watto.iff", -5313.798828, 75.557137, -6574.905762, 9995426, -0.651379, -0.000000, 0.758752, 0.000000)
    spawnSceneObject("tatooine", "object/static/structure/tatooine/wall_junkshop_watto.iff", -5311.210449, 75.651894, -6591.282715, 9995426, -0.653040, -0.000000, 0.757323, 0.000000)
    spawnSceneObject("tatooine", "object/static/structure/tatooine/wall_junkshop_watto.iff", -5300.781738, 75.225380, -6605.636719, 9995426, -0.242926, -0.000001, 0.970045, 0.000001)
    spawnSceneObject("tatooine", "object/static/structure/tatooine/wall_junkshop_watto.iff", -5286.918457, 74.984978, -6602.675293, 9995426, 0.475142, -0.000002, 0.879909, 0.000002)

    --Dantooine Rebel Hideout
	--Perimeter
    spawnSceneObject("dantooine", "object/static/structure/military/military_wall_strong_rebl_16_style_01.iff", -6960.492676, 24.996916, 5361.170410, 9995430, 0.389242, -0.000000, 0.921136, -0.000000)
    spawnSceneObject("dantooine", "object/static/structure/military/military_wall_strong_rebl_16_style_01.iff", -7032.614746, 24.902138, 5343.525879, 9995430, -0.368210, 0.000001, 0.929742, 0.000001)
    spawnSceneObject("dantooine", "object/static/structure/military/military_wall_strong_rebl_16_style_01.iff", -6663.572754, 30.021053, 5597.991699, 9995430, 0.999998, -0.000001, 0.002065, 0.000001)
    spawnSceneObject("dantooine", "object/static/structure/military/military_wall_strong_rebl_16_style_01.iff", -6623.630859, 30.017553, 5474.550781, 9995430, 0.010929, -0.000001, 0.999940, 0.000001)
    spawnSceneObject("dantooine", "object/static/structure/military/military_wall_strong_rebl_16_style_01.iff", -6609.315430, 30.000000, 5478.166992, 9995430, 0.228907, -0.000001, 0.973448, 0.000001)
    spawnSceneObject("dantooine", "object/static/structure/military/military_wall_strong_rebl_16_style_01.iff", -6624.975098, 30.000000, 5547.953125, 9995430, 0.999856, 0.000000, 0.016963, 0.000000)
    spawnSceneObject("dantooine", "object/static/structure/military/military_wall_strong_rebl_16_style_01.iff", -7042.058105, 25.000000, 5434.697266, 9995430, 0.978673, 0.000000, -0.205425, 0.000000)
    spawnSceneObject("dantooine", "object/static/structure/military/military_wall_strong_rebl_32_style_01.iff", -6603.877441, 30.000000, 5543.691406, 9995430, 0.989788, 0.000000, 0.142544, 0.000000)
    spawnSceneObject("dantooine", "object/static/structure/military/military_wall_strong_rebl_32_style_01.iff", -6590.883301, 30.000000, 5525.974609, 9995430, 0.681494, -0.000000, 0.731824, -0.000000)
    spawnSceneObject("dantooine", "object/static/structure/military/military_wall_strong_rebl_32_style_01.iff", -6597.332031, 30.000000, 5495.721191, 9995430, 0.574651, -0.000001, 0.818398, -0.000001)
    spawnSceneObject("dantooine", "object/static/structure/military/military_wall_strong_rebl_32_style_01.iff", -7025.170410, 24.686785, 5429.686035, 9995430, 0.928553, 0.000000, 0.371200, 0.000000)
    spawnSceneObject("dantooine", "object/static/structure/military/military_wall_strong_rebl_32_style_01.iff", -7059.090332, 25.000071, 5418.524414, 9995430, 0.887992, 0.000001, -0.459857, 0.000000)
    spawnSceneObject("dantooine", "object/static/structure/military/military_wall_strong_rebl_32_style_01.iff", -7058.447266, 25.340925, 5393.011230, 9995430, -0.466497, -0.000001, 0.884523, -0.000001)

    --Theed
    --Perimeter
    --wall_a1_naboo_thee
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -4600.791992, 4.953713, 4147.437500, 9995555, 0.973922, 0.000000, -0.226882, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -4592.079102, 4.937226, 4139.590332, 9995555, 0.949077, 0.000000, 0.315044, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -4587.640137, 5.433326, 4105.718262, 9995555, 0.690107, -0.000000, 0.723707, -0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -4610.002441, 5.344826, 4036.388428, 9995555, 0.475471, -0.000000, 0.879731, -0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -4643.806641, 4.867226, 3979.439209, 9995555, 0.412463, -0.000000, 0.910975, -0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -4651.948730, 4.341861, 3950.016113, 9995555, 0.486957, -0.000000, 0.873426, -0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -4714.901367, 4.737531, 3934.195068, 9995555, -0.323440, -0.000001, 0.946249, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -4708.070801, 4.661374, 3953.229248, 9995555, 0.813328, 0.000000, -0.581805, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -4717.637695, 5.254897, 4021.449707, 9995555, -0.328247, -0.000001, 0.944592, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -4701.343750, 5.493885, 4033.787598, 9995555, 0.909436, 0.000000, -0.415845, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -4789.528809, 4.680633, 4096.093262, 9995555, 0.415318, -0.000003, 0.909676, -0.000003)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -4802.799316, 4.944348, 4079.959229, 9995555, 0.428177, -0.000000, 0.903695, -0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -4816.924316, 4.999059, 4064.973877, 9995555, 0.387791, -0.000000, 0.921747, -0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -4831.284180, 5.094501, 4049.946533, 9995555, 0.381938, -0.000000, 0.924188, -0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -4849.946777, 5.051955, 4046.602783, 9995555, 0.086357, -0.000001, 0.996264, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -4905.864258, 4.455986, 3990.797363, 9995555, 0.317054, -0.000001, 0.948407, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -4976.826660, 5.193132, 3995.777344, 9995555, 0.314502, -0.000002, 0.949257, -0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -4995.435059, 5.304938, 3987.248291, 9995555, 0.198065, -0.000003, 0.980189, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5014.026367, 5.188818, 3979.452148, 9995555, 0.192392, -0.000001, 0.981318, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5031.459961, 5.119454, 3990.011719, 9995555, -0.266866, -0.000001, 0.963733, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5049.444824, 4.782485, 4000.128906, 9995555, -0.263706, -0.000001, 0.964603, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5064.390137, 4.836903, 4014.340332, 9995555, -0.354035, -0.000001, 0.935232, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5079.574707, 4.787710, 4027.291260, 9995555, -0.354035, -0.000001, 0.935232, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5095.293457, 4.647629, 4040.278809, 9995555, -0.339170, -0.000001, 0.940725, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5111.380859, 4.596026, 4053.486084, 9995555, -0.339170, -0.000001, 0.940725, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5127.532227, 4.564675, 4066.392578, 9995555, -0.328846, -0.000001, 0.944383, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5143.486816, 4.519213, 4079.099365, 9995555, -0.328846, -0.000001, 0.944383, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5159.924805, 4.314777, 4090.789063, 9995555, -0.310228, -0.000001, 0.950662, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5176.427734, 4.133477, 4102.490723, 9995555, -0.310228, -0.000001, 0.950662, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5189.146484, 4.042949, 4119.051270, 9995555, -0.456948, -0.000001, 0.889494, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5201.282715, 4.164775, 4135.250488, 9995555, -0.453186, -0.000001, 0.891416, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5214.007813, 4.071135, 4151.660645, 9995555, -0.453186, -0.000001, 0.891416, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5229.401367, 4.046175, 4165.773438, 9995555, -0.372281, -0.000001, 0.928120, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5248.239746, 3.990959, 4173.292480, 9995555, -0.208627, -0.000001, 0.977995, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5453.710449, 4.902830, 3940.856934, 9995555, -0.321931, -0.000001, 0.946763, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5469.958984, 4.917494, 3952.961182, 9995555, -0.324159, -0.000001, 0.946003, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5487.006348, 4.858059, 3965.259033, 9995555, -0.324159, -0.000001, 0.946003, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5502.100098, 4.836150, 3977.026123, 9995555, -0.324159, -0.000001, 0.946003, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5518.737793, 4.877150, 3988.301025, 9995555, -0.304246, -0.000001, 0.952593, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5534.823730, 4.795637, 3999.063965, 9995555, -0.294397, -0.000001, 0.955683, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5534.659668, 4.831459, 4019.503906, 9995555, 0.711844, 0.000000, -0.702337, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5535.288086, 4.646645, 4040.015625, 9995555, -0.706128, -0.000001, 0.708084, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5539.216309, 4.606155, 4054.788086, 9995555, -0.636320, -0.000001, 0.771425, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5543.923828, 0.000000, 4053.448242, 9995555, 0.997463, 0.000000, 0.071193, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5586.276855, 0.271004, 4058.133545, 9995555, -0.071193, -0.000001, 0.997463, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5608.797363, 4.692166, 4062.684570, 9995555, -0.132649, -0.000001, 0.991163, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5629.016113, 4.591846, 4068.359131, 9995555, -0.132649, -0.000001, 0.991163, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5636.883301, 4.991918, 4087.363281, 9995555, -0.530714, -0.000003, 0.847550, -0.000002)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5644.792480, 4.742116, 4098.523438, 9995555, -0.461007, -0.000001, 0.887396, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5691.626953, 6.000010, 4101.893555, 9995555, -0.102096, -0.000001, 0.994775, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5738.532715, 4.496419, 4113.294434, 9995555, 0.033097, -0.000001, 0.999452, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5814.140137, 4.868800, 4104.329590, 9995555, -0.004255, -0.000001, 0.999991, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5888.479004, 4.988128, 4114.925293, 9995555, -0.227490, -0.000001, 0.973780, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5907.413086, 4.909814, 4123.682129, 9995555, -0.227490, -0.000001, 0.973780, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5924.689941, 4.802218, 4133.081543, 9995555, -0.261118, -0.000001, 0.965307, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5941.200684, 4.759312, 4145.579102, 9995555, -0.331638, -0.000001, 0.943407, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5956.150879, 4.733468, 4160.380859, 9995555, -0.391215, -0.000001, 0.920299, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5968.336426, 4.596830, 4176.557129, 9995555, -0.459386, -0.000001, 0.888237, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5980.314941, 4.456795, 4193.339355, 9995555, -0.457733, -0.000001, 0.889090, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5986.454102, 4.329018, 4212.732910, 9995555, -0.604411, -0.000001, 0.796673, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5992.911621, 4.131909, 4232.663574, 9995555, -0.604411, -0.000001, 0.796673, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -6013.248047, 4.316893, 4268.448730, 9995555, -0.166322, -0.000001, 0.986072, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5996.562988, 3.847936, 4321.821289, 9995555, 0.897223, 0.000000, -0.441577, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5962.211426, 3.168185, 4340.003906, 9995555, 0.965192, 0.000000, -0.261544, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5895.536621, 4.725898, 4372.756836, 9995555, 0.984346, 0.000000, -0.176244, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5854.168945, 3.998933, 4379.177246, 9995555, 0.999681, 0.000000, -0.025243, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5841.457520, 3.999774, 4361.233887, 9995555, 0.896917, 0.000000, 0.442198, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5810.773926, 4.411695, 4332.521484, 9995555, 0.947630, 0.000000, 0.319371, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5791.866211, 4.341003, 4324.041016, 9995555, 0.974240, 0.000000, 0.225516, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5719.287109, 4.252272, 4323.134766, 9995555, 0.955954, 0.000000, -0.293517, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5700.145020, 4.184929, 4323.937500, 9995555, 0.999909, 0.000000, 0.010975, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5646.302734, 0.000000, 4272.038574, 9995555, 0.179598, -0.000001, 0.983740, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5627.399902, -0.000000, 4279.811523, 9995555, 0.138097, -0.000001, 0.990419, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5608.107422, 3.746492, 4285.459961, 9995555, 0.312834, -0.000001, 0.949808, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5591.019043, 3.707839, 4298.359863, 9995555, 0.356590, -0.000001, 0.934261, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5575.724609, 4.205341, 4312.196289, 9995555, 0.414942, -0.000000, 0.909848, -0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5547.491699, 4.489571, 4394.406250, 9995555, -0.697657, -0.000001, 0.716432, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5550.061035, 4.349630, 4431.229004, 9995555, 0.718930, 0.000000, -0.695082, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5525.625488, 4.921006, 4460.645020, 9995555, 0.999164, 0.000000, -0.040817, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5379.487305, 4.980903, 4522.079102, 9995555, 0.999142, 0.000000, 0.041415, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5359.034668, 5.025126, 4528.054199, 9995555, 0.990893, 0.000000, -0.134650, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5338.620117, 4.920015, 4534.024902, 9995555, 0.990893, 0.000000, -0.134650, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5318.133789, 4.910122, 4539.421387, 9995555, 0.992923, 0.000000, -0.118762, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5297.674316, 4.840103, 4545.183594, 9995555, 0.992923, 0.000000, -0.118762, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5186.549316, 4.908379, 4377.346680, 9995555, 0.997382, 0.000000, -0.072313, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -4764.808594, 6.000000, 4316.142090, 9995555, 0.999173, 0.000000, -0.040667, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -4749.872070, 5.870318, 4302.841797, 9995555, 0.935932, 0.000000, 0.352177, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -4733.388672, 5.934508, 4288.750977, 9995555, 0.937319, 0.000000, 0.348473, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -4733.380371, 5.895620, 4288.803711, 9995555, -0.325023, -0.000001, 0.945706, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -4675.822754, 5.192561, 4022.401367, 9995555, 0.947079, 0.000000, 0.321000, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -4644.739746, 4.974399, 4049.992920, 9995555, 0.978911, 0.000000, -0.204288, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -4639.939453, 5.579536, 4082.246582, 9995555, -0.626877, -0.000001, 0.779118, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -4644.909180, 6.000012, 4104.276855, 9995555, -0.628118, -0.000001, 0.778118, -0.000001)
    
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5644.661133, -0.323419, 4256.747559, 9995555, 0.813009, 0.000000, 0.582251, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/naboo/wall_a1_naboo_theed_style_1.iff", -5310.085938, 0.880184, 4177.045898, 9995555, 0.876803, 0.000000, 0.480850, 0.000000)
    
    --imp banners
    spawnSceneObject("naboo", "object/static/structure/general/banner_imperial_style_01.iff", -5829.174316, 6.000000, 4155.972656, 9995555, 0.495115, -0.000000, 0.868827, -0.000000)
    spawnSceneObject("naboo", "object/static/structure/general/banner_imperial_style_01.iff", -5839.462891, 6.000000, 4122.976563, 9995555, 0.765768, 0.000001, -0.643116, 0.000001)
    spawnSceneObject("naboo", "object/static/structure/general/banner_imperial_style_01.iff", -5827.498535, 6.000000, 4258.668945, 9995555, 0.842640, 0.000000, 0.538477, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/general/banner_imperial_style_01.iff", -5856.772949, 6.000000, 4278.491699, 9995555, 0.855424, 0.000000, 0.517928, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/general/banner_imperial_style_01.iff", -5855.461426, 6.000000, 4322.578125, 9995555, 0.446602, -0.000000, 0.894733, -0.000000)
    spawnSceneObject("naboo", "object/static/structure/general/banner_imperial_style_01.iff", -5835.289063, 6.000000, 4332.331055, 9995555, 0.446107, -0.000000, 0.894980, -0.000000)
    spawnSceneObject("naboo", "object/static/structure/general/banner_imperial_style_01.iff", -5919.058594, 6.000000, 4322.823242, 9995555, 0.866413, 0.000000, 0.499328, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/general/banner_imperial_style_01.iff", -5927.886230, 6.000000, 4338.248535, 9995555, 0.866413, 0.000000, 0.499328, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/general/banner_imperial_style_01.iff", -5950.387695, 6.000000, 4254.495117, 9995555, 0.564389, -0.000001, 0.825509, 0.000001)
    spawnSceneObject("naboo", "object/static/structure/general/banner_imperial_style_01.iff", -5982.961426, 6.000000, 4247.802246, 9995555, 0.279167, -0.000001, 0.960243, 0.000001)
    --reb banners
    spawnSceneObject("naboo", "object/static/structure/general/banner_rebel_style_01.iff", -4589.584961, 6.000000, 4124.054688, 9995555, 0.929787, 0.000000, 0.368098, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/general/banner_rebel_style_01.iff", -4598.379395, 6.000000, 4140.702148, 9995555, 0.967751, 0.000000, 0.251910, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/general/banner_rebel_style_01.iff", -4629.918457, 6.002994, 4090.009521, 9995555, 0.981484, 0.000000, 0.191543, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/general/banner_rebel_style_01.iff", -4614.406738, 5.983288, 4042.001465, 9995555, -0.161454, 0.014122, 0.986778, 0.000787)
    spawnSceneObject("naboo", "object/static/structure/general/banner_rebel_style_01.iff", -4660.082031, 6.000000, 4014.475830, 9995555, 0.860897, 0.000000, 0.508780, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/general/banner_rebel_style_01.iff", -4686.621094, 6.000000, 3999.290771, 9995555, -0.360794, 0.000001, 0.932646, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/general/banner_rebel_style_01.iff", -4710.546387, 6.000000, 4018.667480, 9995555, 0.780550, 0.000000, -0.625093, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/general/banner_rebel_style_01.iff", -4821.174805, 6.000000, 4063.895996, 9995555, -0.373104, -0.000001, 0.927789, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/general/banner_rebel_style_01.iff", -4847.840332, 6.000000, 4091.183838, 9995555, 0.832917, 0.000000, -0.553398, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/general/banner_rebel_style_01.iff", -4825.842285, 6.000000, 4134.761230, 9995555, 0.767747, 0.000000, -0.640753, 0.000000)

    --Naboo Imperial Starting Area (OLD)
    --spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_wall_4x32_s03.iff", 3571.38, -209.32, 6985.26, 9995373, math.rad(150) )
    --spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_wall_4x32_s03.iff", 3598.9, -209.34, 7001.14, 9995372, math.rad(150) )
    --spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_wall_4x32_s03.iff", 3544.121582, -209.295563, 6968.811523, 9995376, 0.276633, 0.000001, 0.960973, 0.000001)
    --spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_column_s03.iff", 3613.18, -210, 7009.50, 9995374, math.rad(150) )
    --spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_wall_4x32_s03.iff", 3621.591064, -209.122543, 6995.301270, 9995375, 0.870852, 0.000000, 0.491545, 0.000000)
    --spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_wall_4x16_s03.iff", 3632.952881, -208.916412, 6976.823730, 9995376, -0.478077, -0.000001, 0.878318, -0.000001)
    --spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_column_s03.iff", 3637.642334, -209.015625, 6969.504883, 9995377, 0.273972, -0.000002, 0.961738, -0.000001)
    --spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_wall_4x16_s03.iff", 3631.239502, -208.629471, 6964.253418, 9995378, 0.324152, -0.000001, 0.946005, -0.000001)
    --spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_column_s03.iff", 3624.408203, -208.361389, 6958.934570, 9995379, -0.409846, -0.000001, 0.912155, -0.000001)
    --spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_wall_4x16_s03.iff", 3617.696289, -207.646317, 6953.504883, 9995380, 0.324152, -0.000001, 0.946005, -0.000001)
    --spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_column_s03.iff", 3610.841309, -207.540054, 6948.175781, 9995381, -0.424894, -0.000001, 0.905243, -0.000001)
    --spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_wall_4x32_s03.iff", 3596.981689, -206.974045, 6938.857422, 9995382, 0.289061, -0.000001, 0.957311, -0.000001)
    --spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_wall_4x32_s03.iff", 3575.136719, -206.676285, 6924.275879, 9995383, 0.956972, 0.000000, -0.290180, 0.000000)
    --spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_column_s03.iff", 3562.151855, -206.956787, 6915.563965, 9995384, 0.286988, -0.000001, 0.957934, -0.000001)
    --spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_wall_4x32_s03.iff", 3552.773193, -207.475281, 6928.137207, 9995385, -0.452297, -0.000001, 0.891867, -0.000001)
    --spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_wall_4x32_s03.iff", 3539.551514, -208.073944, 6946.337891, 9995386, -0.469837, -0.000001, 0.882753, -0.000001)
    --spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_column_s03.iff", 3530.288818, -209.081100, 6960.103027, 9995387, 0.884247, 0.000000, 0.467019, 0.000000)

    --spawnSceneObject("naboo", "object/building/military/military_base_gate_house_imperial.iff", 3631.350586, -209.819199, 6972.072266, 9995388, 0.889216, 0.000000, 0.457487, 0.000000)
    --spawnSceneObject("naboo", "object/building/military/military_base_gate_house_imperial.iff", 3612.228516, -210.549561, 7002.398438, 9995389, 0.882553, -0.000000, 0.470214, -0.000000)
    --spawnSceneObject("naboo", "object/building/military/military_base_gate_house_imperial.iff", 3536.751221, -209.267822, 6957.563965, 9995390, -0.466464, -0.000000, 0.884540, 0.000000)
    --spawnSceneObject("naboo", "object/building/military/military_base_gate_house_imperial.iff", 3561.656006, -207.786469, 6922.701172, 9995391, -0.479285, -0.000001, 0.877659, -0.000001)

    --spawnSceneObject("naboo", "object/tangible/event_perk/lambda_shuttle.iff", 3565.625488, -207.386780, 6949.822266, 9995392, 0.892182, 0.000001, 0.451676, 0.000001)

    --spawnSceneObject("naboo", "object/building/military/military_imperial_field_hospital.iff", 3613.689941, -207.561172, 6960.862305, 9995393, 0.942201, 0.000001, -0.335048, 0.000002)

    --spawnSceneObject("naboo", "object/building/military/small_imperial_cloning_facility.iff", 3595.409180, -208.759308, 6989.313965, 9995394, 0.268415, 0.000001, 0.963303, 0.000001)

    --spawnSceneObject("naboo", "object/tangible/terminal/terminal_guild.iff", 3591.895996, -208.514969, 6979.841309, 9995395, -0.500295, -0.000304, 0.865850, 0.000109)
    --spawnSceneObject("naboo", "object/tangible/terminal/terminal_character_builder.iff", 3606.756836, -207.112717, 6956.389648, 9995396, -0.419645, 0.000001, 0.907688, 0.000001)

    --shuttle /tool tjt 3556.129639 -208.060806 6941.846680 0.882746 0.000000 0.469851 0.000000
    --spawnSceneObject(self.planet, "object/tangible/terminal/terminal_elevator_up.iff", .5, 0, -21.4, 1076971, 1, 0, 0, 0)
    
end