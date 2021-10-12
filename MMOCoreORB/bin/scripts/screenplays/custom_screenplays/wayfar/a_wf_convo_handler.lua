a_wf_convo_handler = conv_handler:new {}

function a_wf_convo_handler:getInitialScreen(pPlayer, pNpc, pConvTemplate)

	-- Sets how the screens are called from /mobile/conversation.lua
	local convoTemplate = LuaConversationTemplate(pConvTemplate)

	-- If the player has no relevant screenplay states, it returns the first screen.	
	return convoTemplate:getScreen("first_screen")
end

function a_wf_convo_handler:runScreenHandlers(pConvTemplate, pPlayer, pNpc, selectedOption, pConvScreen)

	local screen = LuaConversationScreen(pConvScreen)
	local screenID = screen:getScreenID()

	-- This checks what the player has chosen and runs the code accordingly.
	if (screenID == "fight") then
        if (faction == FACTIONREBEL) then
            CreatureObject(pPlayer):playMusicMessage("sound/ui_xwing_target_enemy.snd")  -- Plays a sound message
            sendSystemMessage(" \\#FFFF00\\Rebels Own A!") -- Sends an on screen system message.
		    --CreatureObject(pPlayer):sendSystemMessage(" \\#FFFF00\\Sending you to the frontline!") -- Sends an on screen system message.
            WayfarManager:switchB(2)
            WayfarManager:switchToNextPhase()
        else
            CreatureObject(pPlayer):playMusicMessage("sound/ui_tie_target_enemy.snd")  -- Plays a sound message
            sendSystemMessage(" \\#FFFF00\\Imperials Own A!") -- Sends an on screen system message.
            WayfarManager:switchB(1)
            WayfarManager:switchToNextPhase()
        end
	end

    return pConvScreen
end