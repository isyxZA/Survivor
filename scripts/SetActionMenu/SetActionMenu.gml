/// @description Set the action menu display settings
/// @param level Set the menu level/depth
function SetActionMenu(level)
{
	switch level
	{
		case RESETMENU:
			menuActive = false;
			menuDrag = false;
			ds_list_clear(menuList);
			break;
		case ACTIONMENU://Menu actions begin here
			if !menuActive 
			{
				ds_list_clear(menuList);
				menuList[| 0] = "Dialog";
				menuList[| 1] = "Trade";
				menuList[| 2] = "Follow";
				menuActive = true;
			}
			menuDrag = false;
			menuX = mouse_x;
			menuY = mouse_y;
			break;
		case ACTIONMENU_E://Menu actions begin here
			if !menuActive 
			{
				ds_list_clear(menuList);
				menuList[| 0] = "Attack";
				menuList[| 1] = "Follow";
				menuActive = true;
			}
			menuDrag = false;
			menuX = mouse_x;
			menuY = mouse_y;
			break;
	}
}