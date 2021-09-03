--imp_tp_convo_handler = ScreenPlay:new {
--	numberOfActs = 1,
--
--	screenplayName = "imp_tp_convo_handler"
--}
--
--registerScreenPlay("imp_tp_convo_handler", true)
--
--function imp_tp_convo_handler:start()
--	if (isZoneEnabled("naboo")) then
--		self:spawnMobiles()
--	end
--end
--
--function imp_tp_convo_handler:spawnMobiles()
--
--	--local pHan = spawnMobile("naboo", "tp_imperial", 1, -10.5, -0.9, 24.3, 179, 0)-- planet, template, x, z, y, yaw, cellID
--	spawnMobile("naboo", "tp_imperial", 0, 2437.594971, 291.989197, -3895.646484, 0, 0)
--end
--
local ObjectManager = require("managers.object.object_manager")

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