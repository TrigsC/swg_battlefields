tp_hq_convo_handler = conv_handler:new {}

function tp_hq_convo_handler:getInitialScreen(pPlayer, pNpc, pConvTemplate)

	-- Sets how the screens are called from /mobile/conversation.lua
	local convoTemplate = LuaConversationTemplate(pConvTemplate)

	-- If the player has no relevant screenplay states, it returns the first screen.	
	return convoTemplate:getScreen("first_screen")
end


function tp_hq_convo_handler:runScreenHandlers(pConvTemplate, pPlayer, pNpc, selectedOption, pConvScreen)

	local screen = LuaConversationScreen(pConvScreen)
	local screenID = screen:getScreenID()
    local faction = CreatureObject(pPlayer):getFaction()

	-- This checks what the player has chosen and runs the code accordingly.
	if (screenID == "back") then
        CreatureObject(pPlayer):playMusicMessage("sound/ui_tie_target_enemy.snd")  -- Plays a sound message
		CreatureObject(pPlayer):sendSystemMessage(" \\#FFFF00\\Sending you to the frontline!") -- Sends an on screen system message.
            -- Will need to somehow get the current pvp zone to pass here
            if (faction == "rebel") then
                enclaveLoc = { "corellia", -6528, 398, 5968 }
            else
                enclaveLoc = { "naboo", 2423, 292, -3915 }
        -end
    
        local player = CreatureObject(pPlayer)
    
        if (player:isRidingMount()) then
                player:dismount()
        end
        SceneObject(pPlayer):switchZone(enclaveLoc[1], enclaveLoc[2], enclaveLoc[3], enclaveLoc[4], 0)
        --SceneObject(pPlayer):switchZone("corellia", -210, 28, -4057, 0)

	end

    return pConvScreen
end