/// @description Search for a nearby unit to begin a dialog with
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
				if cUnit.canTalk
				{
					if oControl.selectedObj != noone { oControl.selectedObj.isSelected = false; }
					oControl.selectedObj = cUnit;
					with cUnit { isSelected = true; GreetOne(uType); }
					break;
				}
			}
	    }
	}
	ds_list_destroy(cList);
}