/// @description Retrieve a greeting dialog line
/// @param type Type of unit
function GreetAll(type)
{
	var dialog;
	switch type 
	{
		case PLAYER:
			dialog = choose
			(
				"HellooOOoo",
				"Can anyone hear me?", 
				"It's me " + uSurname, 
				"Anybody else from " + uHome + "?", 
				"What's going on?",
				"How's it going?",
				"You got a sec?",
				"Who's that?",
				"Hey! Hold up there."
			);
			break;
		case F_RIFLEMAN://Friend
			dialog = choose
			(
				"HellooOOoo",
				"Can anyone hear me?", 
				"It's me " + uSurname, 
				"Anybody else from " + uHome + "?", 
				"What's going on?",
				"How's it going?",
				"You got a sec?"
			);
			break;
		case E_RIFLEMAN://Foe
			dialog = choose
			(
				"HellooOOoo",
				"Can anyone hear me?", 
				"It's me " + uSurname, 
				"Anybody else from " + uHome + "?", 
				"What's going on?",
				"How's it going?",
				"You got a sec?"
			);
			break;
	}
	if dialog != "" { ds_list_add(dialogList, dialog); }
	if dialogTime == 0 
	{ 
		showDialog = true; 
		dText = dialog;
	}
}