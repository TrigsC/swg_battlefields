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
		CreatureObject(pPlayer):sendSystemMessage(" \\#FFFF00\\Sending you to the frontline!") -- Sends an on screen system message.
        if (isZoneEnabled("corellia")) then

            if (WarzoneManager:getCurrentPhaseID() == 1) then
                --CNET
                warzoneLoc = { "corellia", -173, 28, -4839 }
            elseif (WarzoneManager:getCurrentPhaseID() == 2) then
                --THEED
                if (TheedManager:getCurrentPhaseID() == 1) then
                    warzoneLoc = { "naboo", -5596, 6, 4080 }
                elseif (TheedManager:getCurrentPhaseID() == 2) then
                    warzoneLoc = { "naboo", -5339, 6, 4495 }
                else
                    warzoneLoc = { "naboo", -4584, 7, 4136 }
                end
            elseif (WarzoneManager:getCurrentPhaseID() == 3) then
                --WAYFAR
                warzoneLoc = { "tatooine", -5071, 75, -6540 }
            elseif (WarzoneManager:getCurrentPhaseID() == 4) then
                --WAYFAR
                warzoneLoc = { "dantooine", -7049, 25, 5390 }
            else
                warzoneLoc = { "corellia", -6528, 398, 5968 }
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
        end
	end

    return pConvScreen
end