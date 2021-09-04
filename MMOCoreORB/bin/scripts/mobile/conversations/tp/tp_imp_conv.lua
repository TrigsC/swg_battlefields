tp_imp_convo_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "imp_tp_convo_handler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	customDialogText = "The Empire is requesting assistance at the battlefield!",
	stopConversation = "false",
	options = {
		{"Take me to the fight!", "fight"},
		{"I still need to get prepared.", "exit_one"}
	}
}
tp_imp_convo_template:addScreen(first_screen);

exit_one = ConvoScreen:new {
	id = "exit_one",
	customDialogText = "Then I will log this insubordination on your record!",
	stopConversation = "true",
	options = {}
}
tp_imp_convo_template:addScreen(exit_one);

fight = ConvoScreen:new {
	id = "fight",
	customDialogText = "For the Empire!",
	stopConversation = "true",
	options = {}
}
tp_imp_convo_template:addScreen(fight);

addConversationTemplate("tp_imp_convo_template", tp_imp_convo_template);