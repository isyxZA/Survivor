/// @description Initialise dialog settings per unit
/// @param type Type of unit
function InitDialog(type)
{
	switch type
	{
		case PLAYER://Player
			dialogList = ds_list_create();
		
			dSurf  = -1;
			dSurfAdjX = 10;
			dSurfAdjY = -40;
			dSurfX = x;
			dSurfY = y;
			dSurfW = 200;
			dSurfH = 25;
			dSurfTargetW = 0;
			dSurfTargetH = 0;
			dText  = "";
			
			canTalk = true;
			showDialog = false;
			dialogTime = 0;
			
			uVoiceRange =  oGrid.cellSize * 16;
			break;
		case F_RIFLEMAN://Friend
			dialogList = ds_list_create();
		
			dSurf  = -1;
			dSurfAdjX = 10;
			dSurfAdjY = -40;
			dSurfX = x;
			dSurfY = y;
			dSurfW = 200;
			dSurfH = 25;
			dSurfTargetW = 0;
			dSurfTargetH = 0;
			dText  = "";
			
			canTalk = true;
			showDialog = false;
			dialogTime = 0;
			
			uVoiceRange =  oGrid.cellSize * 16;
			break;
		case E_RIFLEMAN://Foe
			dialogList = ds_list_create();
		
			dSurf  = -1;
			dSurfAdjX = 10;
			dSurfAdjY = -40;
			dSurfX = x;
			dSurfY = y;
			dSurfW = 200;
			dSurfH = 25;
			dSurfTargetW = 0;
			dSurfTargetH = 0;
			dText  = "";
			
			canTalk = true;
			showDialog = false;
			dialogTime = 0;
			
			uVoiceRange =  oGrid.cellSize * 16;
			break;
	}
}