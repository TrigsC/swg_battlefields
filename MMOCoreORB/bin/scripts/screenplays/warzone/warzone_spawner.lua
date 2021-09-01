WarZoneSpawner = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "WarZoneSpawner"
}

registerScreenPlay("WarZoneSpawner", true)

function WarZoneSpawner:start()
	if (isZoneEnabled("corellia")) then
		--self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function WarZoneSpawner:spawnSceneObjects()

	--Guild Hall regular
	--spawnSceneObject("corellia", "object/static/structure/corellia/corl_imprv_wall_4x32_s02.iff", -218.9, 28.6,-4049.5, 0, 0)

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

    --Naboo Imperial Starting Area
    spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_wall_4x32_s03.iff", 3571.38, -209.32, 6985.26, 9995373, math.rad(150) )
    spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_wall_4x32_s03.iff", 3598.9, -209.34, 7001.14, 9995372, math.rad(150) )
    spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_wall_4x32_s03.iff", 3544.121582, -209.295563, 6968.811523, 9995376, 0.276633, 0.000001, 0.960973, 0.000001)
    spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_column_s03.iff", 3613.18, -210, 7009.50, 9995374, math.rad(150) )
    --spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_wall_4x32_s03.iff", 3622.7, -209.57, 6996.46, 9995375, math.rad(239) )
    spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_wall_4x32_s03.iff", 3621.591064, -209.122543, 6995.301270, 9995375, 0.870852, 0.000000, 0.491545, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_wall_4x16_s03.iff", 3632.952881, -208.916412, 6976.823730, 9995376, -0.478077, -0.000001, 0.878318, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_column_s03.iff", 3637.642334, -209.015625, 6969.504883, 9995377, 0.273972, -0.000002, 0.961738, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_wall_4x16_s03.iff", 3631.239502, -208.629471, 6964.253418, 9995378, 0.324152, -0.000001, 0.946005, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_column_s03.iff", 3624.408203, -208.361389, 6958.934570, 9995379, -0.409846, -0.000001, 0.912155, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_wall_4x16_s03.iff", 3617.696289, -207.646317, 6953.504883, 9995380, 0.324152, -0.000001, 0.946005, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_column_s03.iff", 3610.841309, -207.540054, 6948.175781, 9995381, -0.424894, -0.000001, 0.905243, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_wall_4x32_s03.iff", 3596.981689, -206.974045, 6938.857422, 9995382, 0.289061, -0.000001, 0.957311, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_wall_4x32_s03.iff", 3575.136719, -206.676285, 6924.275879, 9995383, 0.956972, 0.000000, -0.290180, 0.000000)
    spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_column_s03.iff", 3562.151855, -206.956787, 6915.563965, 9995384, 0.286988, -0.000001, 0.957934, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_wall_4x32_s03.iff", 3552.773193, -207.475281, 6928.137207, 9995385, -0.452297, -0.000001, 0.891867, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_wall_4x32_s03.iff", 3539.551514, -208.073944, 6946.337891, 9995386, -0.469837, -0.000001, 0.882753, -0.000001)
    spawnSceneObject("naboo", "object/static/structure/corellia/corl_imprv_column_s03.iff", 3530.288818, -209.081100, 6960.103027, 9995387, 0.884247, 0.000000, 0.467019, 0.000000)

    --shuttle /tool tjt 3556.129639 -208.060806 6941.846680 0.882746 0.000000 0.469851 0.000000
    --spawnSceneObject(self.planet, "object/tangible/terminal/terminal_elevator_up.iff", .5, 0, -21.4, 1076971, 1, 0, 0, 0)
end