reb_tp_convo_handler = ScreenPlay:new {
	numberOfActs = 1,

    screenplayName = "reb_tp_convo_handler"
}

registerScreenPlay("reb_tp_convo_handler", true)

function reb_tp_convo_handler:start()
	if (isZoneEnabled("corellia")) then
	    self:spawnMobiles()
	end
end

function reb_tp_convo_handler:spawnMobiles()

	--local preb = spawnMobile("corellia", "tp_rebel", 1, -10.5, -0.9, 24.3, 179, 0)-- planet, template, x, z, y, yaw, cellID
    spawnMobile("corellia", "tp_rebel", 0, -6522.184570, 398, 6040.704590, 0, 0)
end

reb_tp_convo_handler = conv_handler:new {}

function reb_tp_convo_handler:getInitialScreen(pPlayer, pNpc, pConvTemplate)

	-- Sets how the screens are called from /mobile/conversation.lua
	local convoTemplate = LuaConversationTemplate(pConvTemplate)

	-- If the player has no relevant screenplay states, it returns the first screen.	
	return convoTemplate:getScreen("first_screen")
end

function reb_tp_convo_handler:runScreenHandlers(pConvTemplate, pPlayer, pNpc, selectedOption, pConvScreen)

	local screen = LuaConversationScreen(pConvScreen)
	local screenID = screen:getScreenID()
    local pConvScreen = screen:cloneScreen()

	-- This checks what the player has chosen and runs the code accordingly.
	if (screenID == "fight") then
		CreatureObject(pPlayer):playMusicMessage("sound/ui_xwing_target_enemy.snd")  -- Plays a sound message
		CreatureObject(pPlayer):sendSystemMessage(" \\#FFFF00\\Sending you to the battlefield!") -- Sends an on screen system message.
        if (isZoneEnabled("corellia")) then
            -- Will need to somehow get the current pvp zone to pass here
            --if (councilType == self.COUNCIL_LIGHT) then
            --    enclaveLoc = { -5575, 0, 4905 }
            --else
            --    enclaveLoc = { 5079, 0, 305 }
            --end
    
            local player = CreatureObject(pPlayer)
    
            if (player:isRidingMount()) then
                player:dismount()
            end
            --SceneObject(pPlayer):switchZone("yavin4", enclaveLoc[1], enclaveLoc[2], enclaveLoc[3], 0)
            SceneObject(pPlayer):switchZone("corellia", 50, 100, 200, 0)
        end
	end

    return pConvScreen
end