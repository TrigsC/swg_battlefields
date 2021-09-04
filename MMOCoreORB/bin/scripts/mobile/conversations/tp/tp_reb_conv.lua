tp_reb_convo_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "reb_tp_convo_handler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	customDialogText = "The Rebels are requesting assistance at the battlefield!",
	stopConversation = "false",
	options = {
		{"Take me to the fight!", "fight"},
		{"I still need to get prepared.", "exit_one"},
	}
}
tp_reb_convo_template:addScreen(first_screen);

exit_one = ConvoScreen:new {
	id = "exit_one",
	customDialogText = "Hurry up! No telling how long they can hold the assault!",
	stopConversation = "true",
	options = {}
}
tp_reb_convo_template:addScreen(exit_one);

fight = ConvoScreen:new {
	id = "fight",
	customDialogText = "May the force be with you!",
	stopConversation = "true",
	options = {}
}
tp_reb_convo_template:addScreen(fight);

addConversationTemplate("tp_reb_convo_template", tp_reb_convo_template);