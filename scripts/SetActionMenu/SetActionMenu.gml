/// @description Set the action menu display settings
/// @param level Set the menu level/depth
function SetActionMenu(level)
{
	switch level
	{
		case RESETMENU:
			menuActive = false;
			ds_list_clear(menuList);
			break;
		case ACTIONMENU://Menu actions begin here
			if !menuActive 
			{
				ds_list_clear(menuList);
				menuList[| 0] = "Dialog";
				menuList[| 1] = "Follow";
				menuList[| 2] = "Attack";
				menuActive = true;
			}
			menuX = mouse_x;
			menuY = mouse_y;
			break;
	}
}