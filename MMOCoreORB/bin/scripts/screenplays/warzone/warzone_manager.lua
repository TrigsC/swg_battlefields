WarzoneManager = ScreenPlay:new {
	WARZONE_TOTAL_NUMBER_OF_PHASES = 4,
	phaseChangeTimeOfDay = { hour = 08, min = 30 }, -- Hour of day, server military time, to change the phase. Comment out to disable

	--WARZONE_PHASE_DURATION = 168 * 60 * 60 * 1000 -- 7 days
    WARZONE_PHASE_DURATION = 24 * 60 * 60 * 1000 -- 1 day
}

-- Set the current Warzone Phase for the first time.
function WarzoneManager:setCurrentPhaseInit()
	if (not hasServerEvent("WarzonePhaseChange")) then
		WarzoneManager:setCurrentPhase(1)
		WarzoneManager:setCurrentPhaseID(1)
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

function WarzoneManager:setCurrentPhaseID(phaseID)
	setQuestStatus("Warzone:phaseID", phaseID)
end

function WarzoneManager:getCurrentPhaseID()
	local curPhase = tonumber(getQuestStatus("Warzone:phaseID"))

	if (curPhase == nil) then
		return 1
	end

	return curPhase
end

-- Set the current Warzone Phase.
function WarzoneManager:setCurrentPhase(nextPhase)
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
	local phaseID = WarzoneManager:getCurrentPhaseID()
	WarzoneManager:despawnMobiles(currentPhase)

	if (currentPhase == 2) then
		local theedCurrentPhase = tonumber(TheedManager:getCurrentPhaseID())
		--printf("theedCurrentPhaseID = " .. theedCurrentPhase)
		TheedManager:despawnMobiles(theedCurrentPhase)
		TheedManager:despawnMobilesPhases(theedCurrentPhase)
		TheedManager:despawnSceneObjects(theedCurrentPhase)
		TheedManager:setCurrentPhase(0)
		TheedManager:setCurrentPhaseID(0)
	end

	if(currentPhase == 3) then
		WayfarManager:despawnMobileA()
		WayfarManager:despawnMobileB()
		WayfarManager:setCurrentPhaseID(0)
		WayfarManager:setCurrentPhase(0)
		WayfarManager:switchA(0, faction)
		WayfarManager:switchB(0, faction)
	end

	currentPhase = currentPhase + 1

	if currentPhase > WarzoneManager.WARZONE_TOTAL_NUMBER_OF_PHASES then
		currentPhase = 1
	end

	WarzoneManager:setCurrentPhase(currentPhase)
	--WarzoneManager:setCurrentPhaseID(phaseID + 1)
    
	WarzoneManager:setCurrentPhaseID(currentPhase)
	WarzoneManager:spawnMobiles(currentPhase)
	if(currentPhase == 2) then
		--TheedManager:despawnSceneObjects(theedCurrentPhase)
		--TheedManager:despawnMobiles(theedCurrentPhase)
		TheedManager:setCurrentPhase(1)
		TheedManager:setCurrentPhaseID(1)
        TheedManager:spawnMobiles(1)
        TheedManager:spawnMobilesPhase1()
        TheedManager:spawnSceneObjects(1)
	end
	if(currentPhase == 3) then
		WayfarManager:setCurrentPhaseID(0)
		WayfarManager:setCurrentPhase(0)
        WayfarManager:spawnSceneObjects(0)
        WayfarManager:switchA(0, faction)
        WayfarManager:switchB(0, faction)
        WayfarManager:spawnMobileA()
        WayfarManager:spawnMobileB()
	end

	Logger:log("Switching warzone phase to " .. currentPhase, LT_INFO)
end

function WarzoneManager:start()
	if (isZoneEnabled("corellia")) then
		Logger:log("Starting the Warzone Township Screenplay.", LT_INFO)

		local currentPhase = WarzoneManager.getCurrentPhase()
		WarzoneManager:setCurrentPhaseInit()
		WarzoneManager:spawnMobiles(currentPhase)
	end
end

-- Spawning functions.

function WarzoneManager:spawnMobiles(currentPhase)
	local mobileTable = warzoneMobileSpawns[currentPhase]
	for i = 1, #mobileTable, 1 do
		local mobile = mobileTable[i]
		local pMobile = spawnMobile(mobile[1], mobile[2], mobile[3], mobile[4], mobile[5], mobile[6], mobile[7], mobile[8])

        local mobileID = SceneObject(pMobile):getObjectID()
			writeData("warzone:npc:object:" .. i, mobileID)
	end
end

-- Despawn and cleanup current phase mobiles.
function WarzoneManager:despawnMobiles(currentPhase)
	local mobileTable = warzoneMobileSpawns[currentPhase]
	for i = 1, #mobileTable, 1 do
		local objectID = readData("warzone:npc:object:" .. i)
		local pMobile = getSceneObject(objectID)

		if (pMobile ~= nil) then
			SceneObject(pMobile):destroyObjectFromWorld()
			deleteData("warzone:npc:object:" .. i)
		end
	end
end

registerScreenPlay("WarzoneManager", true)

return WarzoneManager