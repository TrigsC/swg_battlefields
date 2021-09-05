tp_hq_convo_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "tp_hq_convo_handler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	customDialogText = "What can I help with?",
	stopConversation = "false",
	options = {
		{"Take me back to HQ!", "back"},
		{"Nevermind, I would like to stay and fight!", "exit_one"}
	}
}
tp_hq_convo_template:addScreen(first_screen);

exit_one = ConvoScreen:new {
	id = "exit_one",
	customDialogText = "Like a true soldier!",
	stopConversation = "true",
	options = {}
}
tp_hq_convo_template:addScreen(exit_one);

back = ConvoScreen:new {
	id = "back",
	customDialogText = "Come back soon!",
	stopConversation = "true",
	options = {}
}
tp_hq_convo_template:addScreen(back);

addConversationTemplate("tp_hq_convo_template", tp_hq_convo_template);