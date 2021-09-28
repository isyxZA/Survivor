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
				switch iu.uType
				{
					case PLAYER:
					case F_TANK:
						break;
					case F_RIFLEMAN:
						if iu != selectedObj
						{ 
							if selectedObj != noone { selectedObj.isSelected = false; }
							iu.isSelected = true; 
							selectedObj = iu;
							oGUI.alarm[0] = 1;
							//Reset gui dialog
							oGUI.dialogLevel = 0;
							oGUI.optionsDisplay = false;
							oGUI.dialogBranch = "ZERO";
						}
						break;
					case E_RIFLEMAN:
						if iu != selectedObj
						{ 
							if selectedObj != noone { selectedObj.isSelected = false; }
							iu.isSelected = true; 
							selectedObj = iu;
							oGUI.alarm[0] = 1;
							//Reset gui dialog
							oGUI.dialogLevel = 0;
							oGUI.optionsDisplay = false;
							oGUI.dialogBranch = "ZERO";
						}
						break;
					case E_TANK:
						break;
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
				switch iu.uType
				{
					case PLAYER:
					case F_TANK:
						break;
					case F_RIFLEMAN:
						//Don't do anything if we've clicked the player or the object that is currently selected
						if iu != selectedObj
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
							oGUI.alarm[0] = 1;
							//Reset gui dialog
							oGUI.dialogLevel = 0;
							oGUI.optionsDisplay = false;
							oGUI.dialogBranch = "ZERO";
						}
						else if iu == selectedObj
						{
							if !oDialog.menuActive && !oGUI.optionsDisplay
							{
								with oDialog
								{
									menuLevel = ACTIONMENU;
									SetActionMenu(menuLevel);
								}
							}
						}
						break;
					case E_RIFLEMAN:
						//Don't do anything if we've clicked the player or the object that is currently selected
						if iu != selectedObj
						{ 
							if selectedObj != noone { selectedObj.isSelected = false; }
							iu.isSelected = true; 
							selectedObj = iu;
							//Actions menu setup
							//If the menu is not currently active
							with oDialog
							{
								if !menuActive { menuLevel = ACTIONMENU_E; }
								SetActionMenu(menuLevel);
							}
							oGUI.alarm[0] = 1;
							//Reset gui dialog
							oGUI.dialogLevel = 0;
							oGUI.optionsDisplay = false;
							oGUI.dialogBranch = "ZERO";
						}
						else if iu == selectedObj
						{
							if !oDialog.menuActive && !oGUI.optionsDisplay
							{
								with oDialog
								{
									menuLevel = ACTIONMENU_E;
									SetActionMenu(menuLevel);
								}
							}
						}
						break;
					case E_TANK:
						break;
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