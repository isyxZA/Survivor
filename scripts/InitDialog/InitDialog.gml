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
			getDialog = false;
			showDialog = false;
			dialogTime = 0;
			
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
			
			canTalk = false;
			getDialog = false;
			showDialog = false;
			dialogTime = 0;
			alarm[2] = uTalkRate * irandom_range(6, 22);
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
			
			canTalk = false;
			getDialog = false;
			showDialog = false;
			dialogTime = 0;
			alarm[2] = uTalkRate * irandom_range(6, 22);
			break;
	}
}