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

    --Cnet Imp HQ
    spawnMobile("naboo", "tp_imperial", 0, 2437.594971, 291.989197, -3895.646484, 170, 0)
    --spawnMobile("yavin4", "tp_hq", 0, -0.0559132, -43.4244, -56.2239, 90, 17)
    spawnMobile("yavin4", "tp_hq", 0, 5089, 79, 309, 270, 0)
    --Cnet Reb HQ
    spawnMobile("corellia", "tp_rebel", 0, -6522, 398, 6040, 130, 0)
    spawnMobile("corellia", "rebel_recruiter", 0, -6537, 398, 6037, 130, 0)

    --Corellia Zone
    -- imp
    spawnMobile("corellia", "tp_hq", 0, -210, 28, -4057, 0, 0)
    spawnMobile("corellia", "fbase_stormtrooper_extreme", 30, -154, 28, -4175, 0, 0)
    spawnMobile("corellia", "fbase_stormtrooper_extreme", 30, -174, 28, -4177, 0, 0)
    spawnMobile("corellia", "fbase_stormtrooper_extreme", 30, -243, 28, -4153, 0, 0)
    spawnMobile("corellia", "fbase_stormtrooper_extreme", 30, -250, 28, -4151, 0, 0)
    -- reb
    spawnMobile("corellia", "tp_hq", 0, -173, 28, -4839, 0, 0)
    spawnMobile("corellia", "fbase_rebel_soldier_extreme", 60, -83, 28, -4805, 0, 0)
    spawnMobile("corellia", "fbase_rebel_soldier_extreme", 60, -80, 28, -4820, 0, 0)
    spawnMobile("corellia", "fbase_rebel_soldier_extreme", 60, -133, 28, -4700, 0, 0)
    spawnMobile("corellia", "fbase_rebel_soldier_extreme", 60, -154, 28, -4698, 0, 0)
    spawnMobile("corellia", "fbase_rebel_soldier_extreme", 60, -198, 28, -4733, 0, 0)

    -- Wayfar
    -- imp
    spawnMobile("tatooine", "tp_hq", 0, -5309, 75, -6567, 180, 0)

    --reb
    spawnMobile("tatooine", "tp_hq", 0, -5070, 75, -6539, 180, 0)

end

function WarZoneSpawner:spawnSceneObjects()

	-- Dark Enclave
    spawnSceneObject("yavin4", "object/static/structure/corellia/corl_imprv_wall_4x32_s04.iff", 5082.293945, 79.815178, 304.940796, 9995396, 0.999785, 0.000000, 0.020744, 0.000000)
    spawnSceneObject("yavin4", "object/static/structure/corellia/corl_imprv_wall_4x32_s04.iff", 5082.030762, 78.458969, 314.276062, 9995396, 0.999540, -0.000000 ,0.030326, 0.000002)
    spawnSceneObject("yavin4", "object/static/structure/corellia/corl_imprv_wall_4x16_s04.iff", 5095.313965, 79.999283, 311.800903, 9995396, 0.705704, -0.000000, 0.708507, -0.000000)
    

    -- Imperial Spawn
    -- Character builder
    spawnSceneObject("naboo", "object/tangible/terminal/terminal_character_builder.iff", 2428.552979, 292.000000, -3910.535889, 9995396, 0.103863, -0.000001, 0.994592, -0.000001)
    spawnSceneObject("naboo", "object/tangible/crafting/station/public_weapon_station.iff", 2440.973389, 292.000000, -3965.747803, 9995427, 0.926448, 0.000001, -0.376422, 0.000002)
    spawnSceneObject("naboo", "object/tangible/terminal/terminal_dark_enclave_voting.iff", 2408.428223, 292.005066, -3914.252686, 9995405, -0.641751, -0.000003, 0.766913, -0.000003)
    spawnSceneObject("naboo", "object/tangible/terminal/terminal_dark_enclave_challenge.iff", 2407.919189, 292.000000, -3910.608398, 9995406, -0.659468, -0.000004, 0.751732, -0.000004)
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
    spawnSceneObject("naboo", "object/tangible/terminal/terminal_guild.iff", -6516.572754, 398.000000, 6019.006348, 9995398, 0.912366, -0.000001, -0.409375, 0.000000)
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