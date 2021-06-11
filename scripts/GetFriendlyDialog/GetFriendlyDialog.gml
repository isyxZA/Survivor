/// @description Retrieve friendly dialog
/// @param type Type of unit
/// @param level Dialog level
function GetFriendlyDialog(type, level)
{
	var dialog;
	switch type
	{
		case PLAYER:
			break;
		case F_RIFLEMAN:
			switch level
			{
				case 1:
					dialog = choose
					(
						"Hey " + oPlayer.uSurname + ", this is a friendly reply1.",
						"Hey " + oPlayer.uSurname + ", this is a friendly reply1.",
						"Hey " + oPlayer.uSurname + ", this is a friendly reply1."
					);
					if dialog != "" { ds_list_add(dialogList, dialog); }
					if dialogTime == 0 
					{ 
						alarm[2] = room_speed;//showDialog = true;
						dText = dialog;
					}
					oGUI.dialogLevel = 2;
					//Enable options display
					oGUI.alarm[3] = room_speed;
					break;
				case 2:
					dialog = choose
					(
						"Hey " + oPlayer.uSurname + ", this is a friendly reply2.",
						"Hey " + oPlayer.uSurname + ", this is a friendly reply2.",
						"Hey " + oPlayer.uSurname + ", this is a friendly reply2."
					);
					if dialog != "" { ds_list_add(dialogList, dialog); }
					if dialogTime == 0 
					{ 
						alarm[2] = room_speed;//showDialog = true;
						dText = dialog;
					}
					oGUI.dialogLevel = 3;
					//Enable options display
					oGUI.alarm[3] = room_speed;
					break;
			}
			break;
		case E_RIFLEMAN:
			break;
	}
}