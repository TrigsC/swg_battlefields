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
	--TheedManager:spawnMobiles(currentPhase)
	--WarzoneManager:spawnSceneObjects(currentPhase, false)

	-- Spawn camps going into phase 3
	--if (currentPhase == 3) then
	--	FsCounterStrike:pickPhaseCamps()
	--end

	--if (currentPhase == 2 or currentPhase == 3) then
	--	VillageCommunityCrafting:createAttributeValueTables()
	--	VillageCommunityCrafting:createProjectStatsTables()
	--end

	--WarzoneManager:createVillageMasterObject()

	--if (currentPhase == 3 or currentPhase == 4) then
	--	local pMaster = WarzoneManager:getMasterObject()
	---	createEvent(60 * 1000, "VillageRaids", "doPhaseInit", pMaster, "")
	--end

	Logger:log("Switching theed phase to " .. currentPhase, LT_INFO)
end

function TheedManager:start()
	if (isZoneEnabled("naboo")) then
		

        --local warzoneCurrentPhase = WarzoneManager.getCurrentPhase()
        --if (warzoneCurrentPhase == 2) then
        Logger:log("Starting the Theed warzone Screenplay.", LT_INFO)
        local currentPhase = TheedManager.getCurrentPhase()
        TheedManager.setCurrentPhaseInit()
            --TheedManager:spawnMobiles(currentPhase)
        TheedManager:spawnSceneObjects(currentPhase, true)
            --TheedManager:createVillageMasterObject()

            --createNavMesh("dathomir", 5292, -4119, 210, true, "village_township")

            --if (currentPhase == 3 or currentPhase == 4) then
            --	local pMaster = VillageJediManagerTownship:getMasterObject()
            --	createEvent(60 * 1000, "VillageRaids", "doPhaseInit", pMaster, "")

            --	if (currentPhase == 3) then
            --		local campList = FsCounterStrike:getPhaseCampList()

            --		if (campList == nil) then
            --			FsCounterStrike:pickPhaseCamps()
            --		else
            --			FsCounterStrike:spawnCamps()
            --		end
            --	end
        --end
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

	--local mobileTable = warzoneMobileSpawns[currentPhase]
    


	--for i = 1, #mobileTable, 1 do
	--	local mobile = mobileTable[i]
	--	local pMobile = spawnMobile(mobile[1], mobile[2], mobile[3], mobile[4], mobile[5], mobile[6], mobile[7], mobile[8])
	--end
    
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

function TheedManager:spawnSceneObjects(currentPhase, spawnStaticObjects)
	if (spawnStaticObjects == true) then
		local objectTable = theedObjectSpawns[0]
		foreach(objectTable, function(sceneObject)
			spawnSceneObject("naboo", sceneObject[1], sceneObject[2], sceneObject[3], sceneObject[4], sceneObject[5], sceneObject[6], sceneObject[7], sceneObject[8], sceneObject[9])
		end)
	end

	local objectTable = theedObjectSpawns[currentPhase]
	for i = 1, #objectTable, 1 do
		local sceneObject = objectTable[i]
		local pObject = spawnSceneObject("naboo", sceneObject[1], sceneObject[2], sceneObject[3], sceneObject[4], sceneObject[5], sceneObject[6], sceneObject[7], sceneObject[8], sceneObject[9])

		if (pObject ~= nil) then
			local objectID = SceneObject(pObject):getObjectID()
			writeData("theed:scene:object:" .. i, objectID)
		end
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

registerScreenPlay("TheedManager", true)

return TheedManager