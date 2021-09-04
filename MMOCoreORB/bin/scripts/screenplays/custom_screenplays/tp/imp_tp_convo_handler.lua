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

    return pConvScreen
end