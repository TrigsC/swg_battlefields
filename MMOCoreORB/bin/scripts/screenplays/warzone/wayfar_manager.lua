WayfarManager = ScreenPlay:new {
	--THEED_TOTAL_NUMBER_OF_PHASES = 4,
    WAYFAR_RESET_TIME = 1 * 60 * 60 * 1000 -- 1 hour
    WAYFAR_TICKER = 1 * 60 * 1000 -- 1 minute
}

-- Set the current Warzone Phase for the first time.
function WayfarManager:setCurrentPhaseInit()
	if (not hasServerEvent("WayfarPhaseChange")) then
        local warzoneCurrentPhase = WarzoneManager.getCurrentPhase()
        if (warzoneCurrentPhase == 3) then
            WayfarManager:setLastPhaseChangeTime(os.time())
            createServerEvent(WayfarManager.WAYFAR_RESET_TIME, "WayfarManager", "switchToNextPhase", "WayfarPhaseChange")
        else
            local eventID = getServerEventID("WayfarPhaseChange")

            if (eventID == nil) then
                WayfarManager:switchToNextPhase()
                return
            end
    
            local eventTimeLeft = getServerEventTimeLeft(eventID)
    
            if (eventTimeLeft == nil) then
                WayfarManager:switchToNextPhase()
                return
            end
    
            if (eventTimeLeft < 0) then
                return
            end
    
            -- Fixes servers that were already running the Wayfar prior to the change in schedule handling
            local lastChange = tonumber(getQuestStatus("Wayfar:lastPhaseChangeTime"))
    
            if (lastChange ~= nil and lastChange ~= 0) then
                return
            end
    
            WayfarManager.setLastPhaseChangeTime(os.time())
    
            local timeToSchedule = (WayfarManager:getNextPhaseChangeTime(false) - os.time()) * 1000
    
            rescheduleServerEvent("WayfarPhaseChange", timeToSchedule)
        end

		WayfarManager:setCurrentPhaseID(0)
		WayfarManager:setCurrentPhase(0)
	end
end

function WayfarManager:setLastPhaseChangeTime(time)
	setQuestStatus("Wayfar:lastPhaseChangeTime", time)
end

function WayfarManager.getLastPhaseChangeTime()
	local lastChange = tonumber(getQuestStatus("Wayfar:lastPhaseChangeTime"))

	if (lastChange == nil) then
		lastChange = os.time()
		setQuestStatus("Wayfar:lastPhaseChangeTime", lastChange)
	end

	return lastChange
end

function WayfarManager:getWayfarPhaseDuration()
	return WayfarManager.WAYFAR_RESET_TIME
end

function WayfarManager:getNextPhaseChangeTime(includePast)
	local lastPhaseChange = WayfarManager:getLastPhaseChangeTime()
	local nextPhaseChange = lastPhaseChange + (WayfarManager:getWayfarPhaseDuration() / 1000)

	local timeTable = os.date("*t", nextPhaseChange)
	local disregardTimeOfDay = WayfarManager.getWayfarPhaseDuration() < (1 * 60 * 60 * 1000)

	--if (WayfarManager.phaseChangeTimeOfDay ~= nil) then
	--	if (disregardTimeOfDay) then
	--		printf("WayfarManager:getNextPhaseChangeTime disregarding phaseChangeTimeOfDay due to a phase duration under 1 hour.\n")
	--	else
	--		timeTable.hour = WayfarManager.phaseChangeTimeOfDay.hour
	--		timeTable.min = WayfarManager.phaseChangeTimeOfDay.min
	--		timeTable.sec = 0
	--	end
	--end
	local returnTime = os.time(timeTable)

	if (returnTime < os.time() and not includePast and not disregardTimeOfDay) then
		returnTime = returnTime + 3600 -- If the time was modified by phaseChangeTimeOfDay and ended up being in the past, push it forward by 1 hour
	end

	return returnTime
end

function WayfarManager:start()
	if (isZoneEnabled("tatooine")) then
		
        Logger:log("Starting the Wayfar warzone Screenplay.", LT_INFO)
        local warzoneCurrentPhase = WarzoneManager.getCurrentPhase()
        local currentPhase = WayfarManager:getCurrentPhase()
        WayfarManager.setCurrentPhaseInit()

        if(warzoneCurrentPhase == 3) then
            WayfarManager:setCurrentPhaseID(0)
		    WayfarManager:setCurrentPhase(0)
            WayfarManager:spawnSceneObjects(0)
            WayfarManager:switchA(0, faction)
            WayfarManager:switchB(0, faction)
            WayfarManager:spawnMobileA()
            WayfarManager:spawnMobileB()
        else
            WayfarManager:setCurrentPhaseID(0)
		    WayfarManager:setCurrentPhase(0)
            WayfarManager:spawnSceneObjects(0)
            WayfarManager:switchA(0, faction)
            WayfarManager:switchB(0, faction)
        end
	end
end

function WayfarManager:setCurrentPhaseID(phaseID)
	setQuestStatus("Wayfar:phaseID", phaseID)
end

function WayfarManager:getCurrentPhaseID()
	local curPhase = tonumber(getQuestStatus("Wayfar:phaseID"))

	if (curPhase == nil) then
        local warzoneCurrentPhase = WarzoneManager.getCurrentPhase()
        if (warzoneCurrentPhase == 3) then
		    return 0
        else
            return 0
        end
	end
	return curPhase
end

-- Set the current Theed Phase.
function WayfarManager:setCurrentPhase(nextPhase)
	setQuestStatus("Wayfar:CurrentPhase", nextPhase)
end

function WayfarManager:getCurrentPhase()
	local curPhase = tonumber(getQuestStatus("Wayfar:CurrentPhase"))

	if (curPhase == nil) then
		return 1
	end

	return curPhase
end

function WayfarManager:switchA(switch, faction)
    setQuestStatus("Wayfar:APoint", switch)
    if(faction ~= nil) then
        local objectID = readData("wf_a_spawn:npc:object:" .. 1)
        local pMobile = getSceneObject(objectID)
        local broadcastTemplate = ""
        if(faction == FACTIONREBEL) then
            broadcastTemplate = "\\#00ff00 Rebels have captured A!"
            WayfarManager:broadcastMessage(pMobile, broadcastTemplate)
        else
            broadcastTemplate = "\\#00ff00 Imperials have captured A!"
            WayfarManager:broadcastMessage(pMobile, broadcastTemplate)
        end
    end
end

function WayfarManager:switchB(switch, faction)
    setQuestStatus("Wayfar:BPoint", switch)
    if(faction ~= nil) then
        local objectID = readData("wf_b_spawn:npc:object:" .. 1)
        local pMobile = getSceneObject(objectID)
        local broadcastTemplate = ""
        if(faction == FACTIONREBEL) then
            broadcastTemplate = "\\#00ff00 Rebels have captured B!"
            WayfarManager:broadcastMessage(pMobile, broadcastTemplate)
        else
            broadcastTemplate = "\\#00ff00 Imperials have captured B!"
            WayfarManager:broadcastMessage(pMobile, broadcastTemplate)
        end
    end
end

function WayfarManager:switchToNextPhase()

    local nextPhaseChange = WarzoneManager.getNextPhaseChangeTime(true)
    WayfarManager:setLastPhaseChangeTime(nextPhaseChange)
    local timeToSchedule = (WayfarManager:getNextPhaseChangeTime(false) - os.time()) * 1000

    if (hasServerEvent("WayfarPhaseChange")) then
		rescheduleServerEvent("WayfarPhaseChange", timeToSchedule)
	else
		createServerEvent(timeToSchedule, "WayfarManager", "switchToNextPhase", "WayfarPhaseChange")
	end

	local currentPhase = WayfarManager:getCurrentPhase()
	--local phaseID = WayfarManager:getCurrentPhaseID()
	WayfarManager:despawnSceneObjects(currentPhase)

    local aPoint = tonumber(getQuestStatus("Wayfar:APoint"))
    local bPoint = tonumber(getQuestStatus("Wayfar:BPoint"))

    -- No Point, No Point
    if (aPoint == 0 and bPoint == 0) then
        currentPhase = 0
    end
    -- Imperial A, No Point
    if (aPoint == 1 and bPoint == 0) then
        currentPhase = 1
    end
    -- Rebel A, No Point
    if (aPoint == 2 and bPoint == 0) then
        currentPhase = 2
    end
    -- No Point, Imperial B
    if (aPoint == 0 and bPoint == 1) then
        currentPhase = 3
    end
    -- No Point, Rebel B
    if (aPoint == 0 and bPoint == 2) then
        currentPhase = 4
    end
    -- Imperial A, Imperial B
    if (aPoint == 1 and bPoint == 1) then
        currentPhase = 5
    end
    -- Rebel A, Rebel B
    if (aPoint == 2 and bPoint == 2) then
        currentPhase = 6
    end
    -- Imperial A, Rebel B
    if (aPoint == 1 and bPoint == 2) then
        currentPhase = 7
    end
    -- Rebel A, Imperial B
    if (aPoint == 2 and bPoint == 1) then
        currentPhase = 8
    end

	WayfarManager:setCurrentPhase(currentPhase)
	WayfarManager:setCurrentPhaseID(currentPhase)

	WayfarManager:spawnSceneObjects(currentPhase)

	Logger:log("Switching wayfar phase to " .. currentPhase, LT_INFO)
end

function WayfarManager:spawnSceneObjects(currentPhase)
	local objectTable = wayfarObjectSpawns[currentPhase]
	for i = 1, #objectTable, 1 do
		local sceneObject = objectTable[i]
		local pObject = spawnSceneObject("tatooine", sceneObject[1], sceneObject[2], sceneObject[3], sceneObject[4], sceneObject[5], sceneObject[6], sceneObject[7], sceneObject[8], sceneObject[9])
        
        if (pObject ~= nil) then
		    local objectID = SceneObject(pObject):getObjectID()
		    writeData("wayfar:scene:object:" .. i, objectID)
        end
	end
end

-- Despawn and cleanup current phase scene objects.
function WayfarManager:despawnSceneObjects(currentPhase)
	local objectTables = wayfarObjectSpawns[currentPhase]
	for i = 1, #objectTables, 1 do
		local objectID = readData("wayfar:scene:object:" .. i)
		local pObject = getSceneObject(objectID)

        if (pObject ~= nil) then
		    SceneObject(pObject):destroyObjectFromWorld()
		    deleteData("wayfar:scene:object:" .. i)
        end
	end
end

function WayfarManager:spawnMobileA()
    local wfA = spawnMobile(wf_a_spawn[1], wf_a_spawn[2], wf_a_spawn[3], wf_a_spawn[4], wf_a_spawn[5], wf_a_spawn[6], wf_a_spawn[7], wf_a_spawn[8])
    local mobileID = SceneObject(wfA):getObjectID()
	writeData("wf_a_spawn:npc:object:" .. 1, mobileID)
end

function WayfarManager:despawnMobileA()
    local objectID = readData("wf_a_spawn:npc:object:" .. 1)
	local pMobile = getSceneObject(objectID)

	if (pMobile ~= nil) then
		SceneObject(pMobile):destroyObjectFromWorld()
		deleteData("wf_a_spawn:npc:object:" .. 1)
	end
end

function WayfarManager:spawnMobileB()
    local wfB = spawnMobile(wf_b_spawn[1], wf_b_spawn[2], wf_b_spawn[3], wf_b_spawn[4], wf_b_spawn[5], wf_b_spawn[6], wf_b_spawn[7], wf_b_spawn[8])
    local mobileID = SceneObject(wfB):getObjectID()
	writeData("wf_b_spawn:npc:object:" .. 1, mobileID)
end

function WayfarManager:despawnMobileB()
    local objectID = readData("wf_b_spawn:npc:object:" .. 1)
	local pMobile = getSceneObject(objectID)

	if (pMobile ~= nil) then
		SceneObject(pMobile):destroyObjectFromWorld()
		deleteData("wf_b_spawn:npc:object:" .. 1)
	end
end

function WayfarManager:broadcastMessage(pMobile, broadcastTemplate)
	if (pMobile == nil) then
		return
	end

	local playerTable = SceneObject(pMobile):getPlayersInRange(400)

	if (#playerTable > 0) then
		for i = 1, #playerTable, 1 do
			local pPlayer = playerTable[i]

			if (pPlayer ~= nil and broadcastTemplate ~= nil) then
				CreatureObject(pPlayer):sendSystemMessage(broadcastTemplate)
			end
		end
	end
end

registerScreenPlay("WayfarManager", true)

return WayfarManager