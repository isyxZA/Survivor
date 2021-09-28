/// @description Retrieve dialog for the unit
/// @param type Type of unit
/// @param 
/// @param 
/// @param 
function GetDialog(type)
{
	var dialog = "";
	switch type 
	{
		case PLAYER:
			break;
		case F_RIFLEMAN://Friend
			break;
		case E_RIFLEMAN://Foe
			break;
	}
	if dialog != "" { ds_list_add(dialogList, dialog); }
	if dialogTime == 0 
	{ 
		showDialog = true; 
		dText = dialog;
	}
}