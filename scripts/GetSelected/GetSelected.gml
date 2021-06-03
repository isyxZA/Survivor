/// @description Get the object under the mouse
/// @param mButton Which button was clicked
function GetSelected(mButton)
{
	switch mButton
	{
		case global.LMOUSE:
			//Selection logic
			//Check for instances under the mouse
			var sList = ds_list_create();
			var su = instance_place_list(mouse_x, mouse_y, oCollider, sList, false);
			if su > 0
			{
				var iu = ds_list_find_value(sList, 0);
				if iu.uType != PLAYER && iu != selectedObj
				{ 
					if selectedObj != noone { selectedObj.isSelected = false; }
					iu.isSelected = true; 
					selectedObj = iu;
				}
			}
			else
			{
				if selectedObj != noone
				{
					selectedObj.isSelected = false;
					selectedObj = noone;
					//Actions menu setup
					//If the menu is currently active
					if oDialog.menuActive 
					{
						with oDialog
						{
							//Deactivate menu
							menuLevel = RESETMENU;
							SetActionMenu(menuLevel);
						}
					}
				}
			}
			ds_list_destroy(sList);
			break;
		case global.RMOUSE:
			//Selection logic
			//Check for instances under the mouse
			var sList = ds_list_create();
			var su = instance_place_list(mouse_x, mouse_y, oCollider, sList, false);
			if su > 0
			{
				var iu = ds_list_find_value(sList, 0);
				//Don't do anything if we've clicked the player or the object that is currently selected
				if iu.uType != PLAYER && iu != selectedObj
				{ 
					if selectedObj != noone { selectedObj.isSelected = false; }
					iu.isSelected = true; 
					selectedObj = iu;
					//Actions menu setup
					//If the menu is not currently active
					with oDialog
					{
						if !menuActive { menuLevel = ACTIONMENU; }
						SetActionMenu(menuLevel);
					}
				}
				else
				if iu == selectedObj
				{
					if !oDialog.menuActive
					{
						with oDialog
						{
							menuLevel = ACTIONMENU;
							SetActionMenu(menuLevel);
						}
					}
				}
			}
			ds_list_destroy(sList);
			break;
		case global.MMOUSE:
			break;
		default:
			break;
	}
}