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
	local faction = CreatureObject(pPlayer):getFaction()

	-- This checks what the player has chosen and runs the code accordingly.
	if (screenID == "fight") then
		local aPoint = tonumber(getQuestStatus("Wayfar:APoint"))
        printf("aPoint == " .. aPoint)
        if (faction == FACTIONREBEL) then
			if (aPoint == 2) then
                return
            else
            	CreatureObject(pPlayer):playMusicMessage("sound/ui_xwing_target_enemy.snd")  -- Plays a sound message
            	WayfarManager:switchA(2, faction)
            	WayfarManager:switchToNextPhase()
			end
        else
			if (aPoint == 1) then
                return
            else
            	CreatureObject(pPlayer):playMusicMessage("sound/ui_tie_target_enemy.snd")  -- Plays a sound message
            	WayfarManager:switchA(1, faction)
            	WayfarManager:switchToNextPhase()
			end
        end
	end

    return pConvScreen
end