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
        if (WarzoneManager:getCurrentPhase() ~= 1) then
            warzoneLoc = { "corellia", -210, 28, -4057 }
        elseif (WarzoneManager:getCurrentPhase() ~= 2) then
            warzoneLoc = { "naboo", -5987, 6, 4292 }
        else
            warzoneLoc = { "naboo", -5987, 6, 4292 }
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