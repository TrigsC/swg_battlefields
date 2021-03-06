imp_tp_convo_handler = conv_handler:new {}

function imp_tp_convo_handler:getInitialScreen(pPlayer, pNpc, pConvTemplate)

	-- Sets how the screens are called from /mobile/conversation.lua
	local convoTemplate = LuaConversationTemplate(pConvTemplate)

	-- If the player has no relevant screenplay states, it returns the first screen.	
	return convoTemplate:getScreen("first_screen")
end


function imp_tp_convo_handler:runScreenHandlers(pConvTemplate, pPlayer, pNpc, selectedOption, pConvScreen)

	local screen = LuaConversationScreen(pConvScreen)
	local screenID = screen:getScreenID()

	-- This checks what the player has chosen and runs the code accordingly.
	if (screenID == "fight") then
        CreatureObject(pPlayer):playMusicMessage("sound/ui_tie_target_enemy.snd")  -- Plays a sound message
		CreatureObject(pPlayer):sendSystemMessage(" \\#FFFF00\\Sending you to the frontline!") -- Sends an on screen system message.
        if (WarzoneManager:getCurrentPhaseID() == 1) then
            --CENT
            warzoneLoc = { "corellia", -210, 28, -4057 }
        elseif (WarzoneManager:getCurrentPhaseID() == 2) then
            --THEED
            warzoneLoc = { "naboo", -5987, 6, 4292 }
        elseif (WarzoneManager:getCurrentPhaseID() == 3) then
            --WAYFAR
            warzoneLoc = { "tatooine", -5308, 75, -6574 }
        elseif (WarzoneManager:getCurrentPhaseID() == 4) then
            --ARB
            warzoneLoc = { "dantooine", -6622, 30, 5481 }
        else
            warzoneLoc = { "naboo", 2423, 292, -3915 }
        end
            --if (councilType == self.COUNCIL_LIGHT) then
            --    warzoneLoc = { -5575, 0, 4905 }
            --else
            --    warzoneLoc = { 5079, 0, 305 }
            --end
    
        local player = CreatureObject(pPlayer)
    
        if (player:isRidingMount()) then
                player:dismount()
        end
        SceneObject(pPlayer):switchZone(warzoneLoc[1], warzoneLoc[2], warzoneLoc[3], warzoneLoc[4], 0)
        --SceneObject(pPlayer):switchZone("corellia", -210, 28, -4057, 0)

	end

    return pConvScreen
end