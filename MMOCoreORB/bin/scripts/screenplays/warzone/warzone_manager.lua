WarzoneManager = ScreenPlay:new {
	WARZONE_TOTAL_NUMBER_OF_PHASES = 2,
	--phaseChangeTimeOfDay = { hour = 18, min = 0 }, -- Hour of day, server military time, to change the phase. Comment out to disable

	--WARZONE_PHASE_DURATION = 168 * 60 * 60 * 1000 -- 7 days
    WARZONE_PHASE_DURATION = 1 * 60 * 60 * 1000 -- 1 hour
}

-- Set the current Warzone Phase for the first time.
function WarzoneManager.setCurrentPhaseInit()
	if (not hasServerEvent("WarzonePhaseChange")) then
		WarzoneManager.setCurrentPhase(1)
		WarzoneManager.setCurrentPhaseID(1)
		WarzoneManager.setLastPhaseChangeTime(os.time())
		createServerEvent(WarzoneManager.WARZONE_PHASE_DURATION, "WarzoneManager", "switchToNextPhase", "WarzonePhaseChange")
	else
		local eventID = getServerEventID("WarzonePhaseChange")

		if (eventID == nil) then
			WarzoneManager:switchToNextPhase(true)
			return
		end

		local eventTimeLeft = getServerEventTimeLeft(eventID)

		if (eventTimeLeft == nil) then
			WarzoneManager:switchToNextPhase(true)
			return
		end

		if (eventTimeLeft < 0) then
			return
		end

		-- Fixes servers that were already running the Warzone prior to the change in schedule handling
		local lastChange = tonumber(getQuestStatus("Warzone:lastPhaseChangeTime"))

		if (lastChange ~= nil and lastChange ~= 0) then
			return
		end

		WarzoneManager.setLastPhaseChangeTime(os.time())

		local timeToSchedule = (WarzoneManager.getNextPhaseChangeTime(false) - os.time()) * 1000

		rescheduleServerEvent("WarzonePhaseChange", timeToSchedule)
	end
end

function WarzoneManager.getWarzonePhaseDuration()
	return WarzoneManager.WARZONE_PHASE_DURATION
end

function WarzoneManager.getNextPhaseChangeTime(includePast)
	local lastPhaseChange = WarzoneManager.getLastPhaseChangeTime()
	local nextPhaseChange = lastPhaseChange + (WarzoneManager.getWarzonePhaseDuration() / 1000)

	local timeTable = os.date("*t", nextPhaseChange)
	local disregardTimeOfDay = WarzoneManager.getWarzonePhaseDuration() < (24 * 60 * 60 * 1000)

	if (WarzoneManager.phaseChangeTimeOfDay ~= nil) then
		if (disregardTimeOfDay) then
			printf("WarzoneManager.getNextPhaseChangeTime disregarding phaseChangeTimeOfDay due to a phase duration under 24 hours.\n")
		else
			timeTable.hour = WarzoneManager.phaseChangeTimeOfDay.hour
			timeTable.min = WarzoneManager.phaseChangeTimeOfDay.min
			timeTable.sec = 0
		end
	end
	local returnTime = os.time(timeTable)

	if (returnTime < os.time() and not includePast and not disregardTimeOfDay) then
		returnTime = returnTime + 86400 -- If the time was modified by phaseChangeTimeOfDay and ended up being in the past, push it forward by 24 hours
	end

	return returnTime
end

function WarzoneManager.setLastPhaseChangeTime(time)
	setQuestStatus("Warzone:lastPhaseChangeTime", time)
end

function WarzoneManager.getLastPhaseChangeTime()
	local lastChange = tonumber(getQuestStatus("Warzone:lastPhaseChangeTime"))

	if (lastChange == nil) then
		lastChange = os.time()
		setQuestStatus("Warzone:lastPhaseChangeTime", lastChange)
	end

	return lastChange
end

function WarzoneManager.setCurrentPhaseID(phaseID)
	setQuestStatus("Warzone:phaseID", phaseID)
end

function WarzoneManager.getCurrentPhaseID()
	local curPhase = tonumber(getQuestStatus("Warzone:phaseID"))

	if (curPhase == nil) then
		return 1
	end

	return curPhase
end

-- Set the current Warzone Phase.
function WarzoneManager.setCurrentPhase(nextPhase)
	setQuestStatus("Warzone:CurrentPhase", nextPhase)
end

function WarzoneManager.getCurrentPhase()
	local curPhase = tonumber(getQuestStatus("Warzone:CurrentPhase"))

	if (curPhase == nil) then
		return 1
	end

	return curPhase
end

function WarzoneManager:switchToNextPhase(manualSwitch)
	if (manualSwitch == nil) then
		manualSwitch = false
	end

	if (not isZoneEnabled("corellia")) then
		if (hasServerEvent("WarzonePhaseChange")) then
			rescheduleServerEvent("WarzonePhaseChange", 60 * 60 * 1000)
		end

		return
	end

	local nextPhaseChange = WarzoneManager.getNextPhaseChangeTime(true)

	if (manualSwitch) then
		nextPhaseChange = os.time()
	end

	WarzoneManager.setLastPhaseChangeTime(nextPhaseChange)

	local timeToSchedule = (WarzoneManager.getNextPhaseChangeTime(false) - os.time()) * 1000

	if (hasServerEvent("WarzonePhaseChange")) then
		rescheduleServerEvent("WarzonePhaseChange", timeToSchedule)
	else
		createServerEvent(timeToSchedule, "WarzoneManager", "switchToNextPhase", "WarzonePhaseChange")
	end

	local currentPhase = WarzoneManager.getCurrentPhase()
	local phaseID = WarzoneManager.getCurrentPhaseID()
	--WarzoneManager:despawnMobiles(currentPhase)
	--WarzoneManager:despawnSceneObjects(currentPhase)
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

	if currentPhase > WarzoneManager.WARZONE_TOTAL_NUMBER_OF_PHASES then
		currentPhase = 1
	end

	WarzoneManager.setCurrentPhase(currentPhase)
	--WarzoneManager.setCurrentPhaseID(phaseID + 1)
	--WarzoneManager:spawnMobiles(currentPhase, false)
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

	Logger:log("Switching warzone phase to " .. currentPhase, LT_INFO)
end

function WarzoneManager:start()
	if (isZoneEnabled("corellia")) then
		Logger:log("Starting the Warzone Township Screenplay.", LT_INFO)

		local currentPhase = WarzoneManager.getCurrentPhase()
		WarzoneManager.setCurrentPhaseInit()
		--WarzoneManager:spawnMobiles(currentPhase, true)
		--WarzoneManager:spawnSceneObjects(currentPhase, true)
		--WarzoneManager:createVillageMasterObject()

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

registerScreenPlay("WarzoneManager", true)

return WarzoneManager