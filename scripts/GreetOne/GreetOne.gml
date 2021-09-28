/// @description Retrieve a greeting for a specific unit
/// @param type Type of unit doing the greeting
function GreetOne(type)
{
	var dialog;
	switch type
	{
		case PLAYER:
			dialog = choose
			(
				"Hello " + oControl.selectedObj.uSurname,
				"Hey there " + oControl.selectedObj.uSurname + "!", 
				"Hey " + oControl.selectedObj.uSurname + ", it's me " + uName, 
				"How are you " + oControl.selectedObj.uSurname + "?",
				"Is that " + oControl.selectedObj.uSurname + " over there?"
			);
			if dialog != "" { ds_list_add(dialogList, dialog); }
			if dialogTime <= 0 
			{ 
				showDialog = true;
				dText = dialog;
			}
			break;
		case F_RIFLEMAN:
			dialog = choose
			(
				"Hello Friend!",
				"Hey there " + oPlayer.uSurname + "!", 
				"Hey " + oPlayer.uSurname + ", it's me " + uName, 
				"What you want " + oPlayer.uSurname + "?",
				"Sir!",
				"Can I help you, Sir?",
				"The fuck is this shouting!?",
				"Is that " + oPlayer.uSurname + " over there?"
			);
			if dialog != "" { ds_list_add(dialogList, dialog); }
			if dialogTime <= 0 
			{ 
				alarm[2] = room_speed;//showDialog = true;
				dText = dialog;
			}
			break;
		case E_RIFLEMAN:
			break;
	}
	
}