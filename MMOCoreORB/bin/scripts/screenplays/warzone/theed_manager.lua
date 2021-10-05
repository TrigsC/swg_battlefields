TheedManager = ScreenPlay:new {
	THEED_TOTAL_NUMBER_OF_PHASES = 3,
}

-- Set the current Warzone Phase for the first time.
function TheedManager.setCurrentPhaseInit()
	if (not hasServerEvent("TheedPhaseChange")) then
        local warzoneCurrentPhase = WarzoneManager.getCurrentPhase()
        if (warzoneCurrentPhase == 2) then
		    TheedManager.setCurrentPhase(1)
		    TheedManager.setCurrentPhaseID(1)
        else
            TheedManager.setCurrentPhase(0)
		    TheedManager.setCurrentPhaseID(0)
        end
		--createServerEvent(TheedManager.WARZONE_PHASE_DURATION, "TheedManager", "switchToNextPhase", "TheedPhaseChange")
	else
		local eventID = getServerEventID("TheedPhaseChange")

		if (eventID == nil) then
			TheedManager:switchToNextPhase(true)
			return
		end
	end
end

function TheedManager.setCurrentPhaseID(phaseID)
	setQuestStatus("Theed:phaseID", phaseID)
end

function TheedManager.getCurrentPhaseID()
	local curPhase = tonumber(getQuestStatus("Theed:phaseID"))

	if (curPhase == nil) then
        local warzoneCurrentPhase = WarzoneManager.getCurrentPhase()
        if (warzoneCurrentPhase == 2) then
		    return 1
        else
            return 0
        end
	end

	return curPhase
end

-- Set the current Theed Phase.
function TheedManager.setCurrentPhase(nextPhase)
	setQuestStatus("Theed:CurrentPhase", nextPhase)
end

function TheedManager.getCurrentPhase()
	local curPhase = tonumber(getQuestStatus("Theed:CurrentPhase"))

	if (curPhase == nil) then
		return 1
	end

	return curPhase
end

function TheedManager:switchToNextPhase(manualSwitch)
	if (manualSwitch == nil) then
		manualSwitch = false
	end

	local currentPhase = TheedManager.getCurrentPhase()
	local phaseID = TheedManager.getCurrentPhaseID()
	TheedManager:despawnMobiles(currentPhase)
	TheedManager:despawnSceneObjects(currentPhase)
	--WarzoneManager:handlePhaseChangeActiveQuests(phaseID, currentPhase)
	--VillageCommunityCrafting:doEndOfPhaseCheck()
	--VillageCommunityCrafting:doEndOfPhasePrizes()
	--VillageJediManagerTownship:destroyVillageMasterObject()

	-- Despawn camps going into phase 4
	--if (currentPhase == 3) then
	--	FsCounterStrike:despawnAllCamps()
	--end

	--if (currentPhase == 3 or currentPhase == 4) then
	--	VillageRaids:despawnTurrets()
	--end

	currentPhase = currentPhase + 1

	if currentPhase > TheedManager.THEED_TOTAL_NUMBER_OF_PHASES then
		currentPhase = 3
	end

	TheedManager.setCurrentPhase(currentPhase)
	--WarzoneManager.setCurrentPhaseID(phaseID + 1)
    
	TheedManager.setCurrentPhaseID(currentPhase)
	TheedManager:spawnMobiles(currentPhase)
	TheedManager:spawnSceneObjects(currentPhase)

    if(currentPhase == 1) then
        TheedManager:spawnMobilesPhase1()
    end
    if(currentPhase == 2) then
        TheedManager:spawnMobilesPhase2()
    end

	Logger:log("Switching theed phase to " .. currentPhase, LT_INFO)
end

function TheedManager:start()
	if (isZoneEnabled("naboo")) then
		
        Logger:log("Starting the Theed warzone Screenplay.", LT_INFO)
        local warzoneCurrentPhase = WarzoneManager.getCurrentPhase()
        local currentPhase = TheedManager.getCurrentPhase()
        TheedManager.setCurrentPhaseInit()

        if(warzoneCurrentPhase == 2) then
            TheedManager.setCurrentPhase(1)
		    TheedManager.setCurrentPhaseID(1)
            TheedManager:spawnMobiles(1)
            TheedManager:spawnMobilesPhase1()
            TheedManager:spawnSceneObjects(1)
        else
            TheedManager.setCurrentPhase(0)
		    TheedManager.setCurrentPhaseID(0)
        end
	end
end

-- Spawning functions.

function TheedManager:spawnMobiles(currentPhase)
	local mobileTable = theedMobileSpawns[currentPhase]
	for i = 1, #mobileTable, 1 do
		local mobile = mobileTable[i]
		local pMobile = spawnMobile(mobile[1], mobile[2], mobile[3], mobile[4], mobile[5], mobile[6], mobile[7], mobile[8])

        local mobileID = SceneObject(pMobile):getObjectID()
			writeData("theed:npc:object:" .. i, mobileID)
	end
    
end

-- Despawn and cleanup current phase mobiles.
function TheedManager:despawnMobiles(currentPhase)
	local mobileTable = theedMobileSpawns[currentPhase]
	for i = 1, #mobileTable, 1 do
		local objectID = readData("theed:npc:object:" .. i)
		local pMobile = getSceneObject(objectID)

		if (pMobile ~= nil) then
			SceneObject(pMobile):destroyObjectFromWorld()
			deleteData("theed:npc:object:" .. i)
		end
	end
end

function TheedManager:spawnSceneObjects(currentPhase)
	local objectTable = theedObjectSpawns[currentPhase]
	for i = 1, #objectTable, 1 do
		local sceneObject = objectTable[i]
		local pObject = spawnSceneObject("naboo", sceneObject[1], sceneObject[2], sceneObject[3], sceneObject[4], sceneObject[5], sceneObject[6], sceneObject[7], sceneObject[8], sceneObject[9])

		local objectID = SceneObject(pObject):getObjectID()
		writeData("theed:scene:object:" .. i, objectID)
	end
end

-- Despawn and cleanup current phase scene objects.
function TheedManager:despawnSceneObjects(currentPhase)
	local objectTable = theedObjectSpawns[currentPhase]
	for i = 1, #objectTable, 1 do
		local objectID = readData("theed:scene:object:" .. i)
		local pObject = getSceneObject(objectID)

		if (pObject ~= nil) then
			SceneObject(pObject):destroyObjectFromWorld()
			deleteData("theed:npc:object:" .. i)
		end
	end
end

function TheedManager:spawnMobilesPhase1()
    --local pRebel_Extreme = spawnMobile("naboo", "fbase_rebel_soldier_extreme", 0, -5592, 6, 4071, 174, 0)
    local pRebel_Extreme = spawnMobile(theedPhase1Kill[1], theedPhase1Kill[2], theedPhase1Kill[3], theedPhase1Kill[4], theedPhase1Kill[5], theedPhase1Kill[6], theedPhase1Kill[7], theedPhase1Kill[8])
	createObserver(OBJECTDESTRUCTION, "TheedManager", "notifyRebelExtremeDead1", pRebel_Extreme)
end

function TheedManager:notifyRebelExtremeDead1(pRebel_Extreme, pKiller)
	TheedManager:switchToNextPhase(true)
    return 1
end

function TheedManager:spawnMobilesPhase2()
    if (readData("theed:rebelextreme2") == 0) then
        --spawnMobile("naboo", "fbase_rebel_soldier_extreme", 0, -5507, 6, 4388, 180, 0)
        --local pRebel_Extreme2 = spawnMobile("naboo", "fbase_rebel_soldier_extreme", 0, -5483, 6, 4387, 180, 0)
        local pRebel_Extreme2 = spawnMobile(theedPhase2_1Kill[1], theedPhase2_1Kill[2], theedPhase2_1Kill[3], theedPhase2_1Kill[4], theedPhase2_1Kill[5], theedPhase2_1Kill[6], theedPhase2_1Kill[7], theedPhase2_1Kill[8])
	    createObserver(OBJECTDESTRUCTION, "TheedManager", "spawnMobilesPhase2_2", pRebel_Extreme2)
        writeData("theed:rebelextreme2", 1)
	end
    return 0
end

function TheedManager:spawnMobilesPhase2_2(pRebel_Extreme2, pKiller)
	if (readData("theed:rebelextreme2") == 1) then
		--local pLJS = spawnMobile("naboo", "light_jedi_sentinel", 0, -5495, 6, 4406, 180, 0)
        local pLJS = spawnMobile(theedPhase2_2Kill[1], theedPhase2_2Kill[2], theedPhase2_2Kill[3], theedPhase2_2Kill[4], theedPhase2_2Kill[5], theedPhase2_2Kill[6], theedPhase2_2Kill[7], theedPhase2_2Kill[8])
		createObserver(OBJECTDESTRUCTION, "TheedManager", "notifyPhase2Done", pLJS)
		writeData("theed:rebelextreme2", 2)
	end

	return 0
end

function TheedManager:notifyPhase2Done(pLJS, pKiller)
	deleteData("theed:rebelextreme2")
    TheedManager:switchToNextPhase(true)
	return 1
end

--function TheedManager:notifyRebelExtremeDead(pRebel_Extreme)
	--deleteData("spiderclancave:kiindray")
	--return 1
--end

registerScreenPlay("TheedManager", true)

return TheedManager