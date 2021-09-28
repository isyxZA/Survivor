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
	if mouse_check_button_pressed(global.LMOUSE)
	{
		switch menuLevel
		{
			case RESETMENU:
				break;
			case ACTIONMENU:
				switch touchCount
				{
					case -1://Header button
						menuDrag = true;
						break;
					case 0://Button 0
						//Dialog
						if instance_exists(oPlayer) && !oControl.canSelect
						{
							with oPlayer 
							{ 
								if canTalk 
								{ 
									//If we are talking to an individual unit
									if oControl.selectedObj != noone && oGUI.dialogLevel == 0
									{
										GreetOne(uType);
										GetReply(uType, oControl.selectedObj, 0);
									}
									else
									{
										if ds_list_size(oGUI.selectedDialog) > 0 { oGUI.alarm[2] = 1; }
										//Level 0 is first contact
										oGUI.dialogLevel = 0;
										GreetAll(uType);
										//Broadcast to nearby units and try to get a dialog started
										GetDialogPartner();
									}
								} 
							}
						}
						SetActionMenu(RESETMENU);
						break;
					case 1://Button 1
						//Trade
						SetActionMenu(RESETMENU);
						break;
					case 2://Button 2
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
					case 3://Button 3
						//Attack
						break;
				}
				break;
			case ACTIONMENU_E:
				switch touchCount
				{
					case -1://Header button
						menuDrag = true;
						break;
					case 0://Button 0
						//Attack Enemy
						if !oControl.canSelect && oControl.selectedObj != noone
						{
							with oPlayer
							{
								uCanShoot = true;
								uTarget = oControl.selectedObj;
								uShootRifle = true;
								alarm[6] = room_speed;
								uShooting = true;
								uBurstCount = 0;
								Stop(uType);
							}
						}
						SetActionMenu(RESETMENU);
						break;
					case 1://Button 1
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
	if !oGUI.playerUItouch && !oGUI.selectedUItouch
	{
		//Adjust the menu position
		SetMenuPosition();
	}
}