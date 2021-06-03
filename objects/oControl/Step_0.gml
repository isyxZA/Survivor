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
	//Dialog hotkey
	if keyboard_check_pressed(ord("F"))
	{
		//Actions menu setup
		//If the menu is not currently active
		with oDialog
		{
			if !menuActive { menuLevel = ACTIONMENU; }
			SetActionMenu(menuLevel);
		}
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

/*
//Unit spawn control
if keyboard_check_pressed(ord("P"))
{
	if GetCell(mouse_x, mouse_y)
	{
		if instance_exists(oPlayer) { with oPlayer { instance_destroy(); } }
		with instance_create_layer(mouse_x, mouse_y, "Units", oPlayer)
		{
			cellX = (x - oGrid.x) div oGrid.cellSize;
			cellY = (y - oGrid.y) div oGrid.cellSize;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
}
*/

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