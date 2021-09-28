/// @description Player search for a nearby unit to begin a dialog with
function GetDialogPartner()
{
	var cList = ds_list_create();
	var cNum = collision_circle_list(x, y, uVoiceRange, oCollider, false, true, cList, false);
	if (cNum > 0)
	{
		var rNum = irandom(ds_list_size(cList)-1);
	    for (var i = 0; i < cNum; ++i;)
	    {
			if i == rNum
			{
				var cUnit = cList[| i];
				switch cUnit.uType
				{
					case F_RIFLEMAN:
						if cUnit.canTalk
						{
							if oControl.selectedObj != noone { oControl.selectedObj.isSelected = false; }
							oControl.selectedObj = cUnit;
							with cUnit { isSelected = true; GreetOne(uType); }
							oGUI.alarm[0] = 1;
							oGUI.dialogLevel = 1;
							//Enable options display
							oGUI.alarm[3] = room_speed;
							break;
						}
						continue;
					case PLAYER:
					case F_TANK:
					case E_RIFLEMAN:
					case E_TANK:
						continue;
				}
			}
	    }
	}
	ds_list_destroy(cList);
}