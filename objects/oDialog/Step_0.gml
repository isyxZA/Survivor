if menuActive
{
	//If the mouse is touching the menu header
	if GetMenuTouch(-1) { touchHeader = true; }
		else { touchHeader = false; }
	
	var mls = ds_list_size(menuList);
	var touchCount = -1;
	touchButton = false;
	for (var i = 0; i < mls; ++i)
	{
		if GetMenuTouch(i)
		{
			touchCount = i;
			touchButton = true;
		}
	}
	
	//Button actions
	if  mouse_check_button_pressed(global.LMOUSE)
	{
		switch touchCount
		{
			case -1://Header button
				menuDrag = true;
				break;
			case 0:
				switch menuLevel
				{
					case ACTIONMENU:
						//Begin dialog
						break;
				}
				break;
			case 1://Button 1
				switch menuLevel
				{
					case ACTIONMENU:
						//Follow
						oPlayer.uFollowTarget = oControl.selectedObj;
						if !oPlayer.uFollow 
						{
							oPlayer.uFollow = true;
							oPlayer.uFollowing = false;
							oPlayer.alarm[4] = -1;
						}
						SetActionMenu(RESETMENU);
						break;
				}
				break;
			case 2://Button 2
				switch menuLevel
				{
					case ACTIONMENU:
						//Follow
						break;
				}
				break;
			case 3://Button 3
				switch menuLevel
				{
					case ACTIONMENU:
						//Attack
						break;
				}
				break;
		}
	}
	
	if mouse_check_button_released(global.LMOUSE)
	{
		menuDrag = false;
	}
	
	if touchHeader || touchButton { oGUI.menuUItouch = true; }
		else { oGUI.menuUItouch = false; }
		
}
else
{
	menuDrag = false;
	oGUI.menuUItouch = false;
	touchHeader = false;
	touchButton = false;
}

if menuDrag
{
	//Adjust the menu position
	SetMenuPosition();
}
