b_wf_convo_handler = conv_handler:new {}

function b_wf_convo_handler:getInitialScreen(pPlayer, pNpc, pConvTemplate)

	-- Sets how the screens are called from /mobile/conversation.lua
	local convoTemplate = LuaConversationTemplate(pConvTemplate)

	-- If the player has no relevant screenplay states, it returns the first screen.	
	return convoTemplate:getScreen("first_screen")
end

function b_wf_convo_handler:runScreenHandlers(pConvTemplate, pPlayer, pNpc, selectedOption, pConvScreen)

	local screen = LuaConversationScreen(pConvScreen)
	local screenID = screen:getScreenID()
    local faction = CreatureObject(pPlayer):getFaction()

	-- This checks what the player has chosen and runs the code accordingly.
	if (screenID == "fight") then
        local bPoint = tonumber(getQuestStatus("Wayfar:BPoint"))
        printf("bPoint == " .. bPoint)
        if (faction == FACTIONREBEL) then
            if (bPoint == 2) then
                return
            else
                CreatureObject(pPlayer):playMusicMessage("sound/ui_xwing_target_enemy.snd")  -- Plays a sound message
                WayfarManager:switchB(2, faction)
                WayfarManager:switchToNextPhase()
            end
        else
            if (bPoint == 1) then
                return
            else
                CreatureObject(pPlayer):playMusicMessage("sound/ui_tie_target_enemy.snd")  -- Plays a sound message
                WayfarManager:switchB(1, faction)
                WayfarManager:switchToNextPhase()
            end
        end
	end

    return pConvScreen
end