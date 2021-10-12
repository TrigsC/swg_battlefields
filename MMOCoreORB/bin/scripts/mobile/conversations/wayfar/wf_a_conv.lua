wf_a_convo_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "a_wf_convo_handler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	customDialogText = "Would you like to switch A?",
	stopConversation = "false",
	options = {
		{"YES, Switch it!", "fight"},
		{"No, more newbs to kill!", "exit_one"}
	}
}
wf_imp_convo_template:addScreen(first_screen);

exit_one = ConvoScreen:new {
	id = "exit_one",
	customDialogText = "Why would you not want to?",
	stopConversation = "true",
	options = {}
}
wf_a_convo_template:addScreen(exit_one);

fight = ConvoScreen:new {
	id = "fight",
	customDialogText = "Hold this point with your life!",
	stopConversation = "true",
	options = {}
}
wf_imp_convo_template:addScreen(fight);

addConversationTemplate("wf_a_convo_template", wf_a_convo_template);