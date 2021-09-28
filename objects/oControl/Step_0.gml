if instance_exists(oPlayer)
{
	if mouse_check_button_pressed(global.RMOUSE)
	{
		if canSelect { GetSelected(global.RMOUSE); }
	}
	else if mouse_check_button_pressed(global.LMOUSE)
	{
		if canSelect { GetSelected(global.LMOUSE); }
	}

	//Selected object logic
	if selectedObj != noone 
	{
		if point_distance(selectedObj.x, selectedObj.y, oPlayer.x, oPlayer.y) > oPlayer.uVoiceRange
		{
			if oGUI.optionsDisplay { oGUI.optionsDisplay = false; }
		}
	
		if point_distance(selectedObj.x, selectedObj.y, oPlayer.x, oPlayer.y) > oPlayer.uVision
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
	
	//Player control hotkeys
	if keyboard_check_pressed(ord("S"))
	{
		with oPlayer { if moving { Stop(uType); } }
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

//Toggle nav grid display...DEBUG ONLY!
if keyboard_check_pressed(global.GRID)
{
	if oGrid.showGrid { oGrid.showGrid = false; }
		else { oGrid.showGrid = true;  }
}

//Toggle debug panel
if keyboard_check_pressed(ord("B"))
{
	if showDebug { showDebug = false; show_debug_overlay(false); oGUI.showDebug = false; }
		else { showDebug = true; show_debug_overlay(true); oGUI.showDebug = true; }
}