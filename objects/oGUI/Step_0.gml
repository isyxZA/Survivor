mouseX = device_mouse_x_to_gui(0);
mouseY = device_mouse_y_to_gui(0);
x = mouseX;
y = mouseY;

if keyboard_check_pressed(ord("L"))
{
	if optionsDisplay { optionsDisplay = false; }
		else { optionsDisplay = true; }
}

//Player UI buttons
//Left tab
if point_distance(mouseX, mouseY, playerUIlx, playerUIy1) < 10 { touchL1 = true; } else { touchL1 = false; }
if point_distance(mouseX, mouseY, playerUIlx, playerUIy2) < 10 { touchL2 = true; } else { touchL2 = false; }
if point_distance(mouseX, mouseY, playerUIlx, playerUIy3) < 10 { touchL3 = true; } else { touchL3 = false; }
if point_distance(mouseX, mouseY, playerUIlx, playerUIy4) < 10 { touchL4 = true; } else { touchL4 = false; }
if point_distance(mouseX, mouseY, playerUIlx, playerUIy5) < 10 { touchL5 = true; } else { touchL5 = false; }
//Right tab
if point_distance(mouseX, mouseY, playerUIrx, playerUIy1) < 10 { touchR1 = true; } else { touchR1 = false; }
if point_distance(mouseX, mouseY, playerUIrx, playerUIy2) < 10 { touchR2 = true; } else { touchR2 = false; }
if point_distance(mouseX, mouseY, playerUIrx, playerUIy3) < 10 { touchR3 = true; } else { touchR3 = false; }
if point_distance(mouseX, mouseY, playerUIrx, playerUIy4) < 10 { touchR4 = true; } else { touchR4 = false; }
if point_distance(mouseX, mouseY, playerUIrx, playerUIy5) < 10 { touchR5 = true; } else { touchR5 = false; }

if optionsDisplay
{
	if optionsUIy != optionsUIyTarget { optionsUIy = lerp(optionsUIy, optionsUIyTarget, 0.1); }
	//Selection boxes for dialog options
	var opt1 = collision_rectangle(playerUIxT, optionsUIy - 60, playerUIxT + (playerUIw * 0.9), optionsUIy - 80, oGUI, false, false);
	var opt2 = collision_rectangle(playerUIxT, optionsUIy - 30, playerUIxT + (playerUIw * 0.9), optionsUIy - 50, oGUI, false, false);
	var opt3 = collision_rectangle(playerUIxT, optionsUIy, playerUIxT + (playerUIw * 0.9), optionsUIy - 20, oGUI, false, false);
	
	if opt1 != noone { option1 = true; option2 = false; option3 = false; }
		else { option1 = false; }
	if opt2 != noone { option2 = true; option1 = false; option3 = false; }
		else { option2 = false; }
	if opt3 != noone { option3 = true; option1 = false; option2 = false; }
		else { option3 = false; }
		
	if option1 || option2 || option3 { optionsUItouch = true; }
		else { optionsUItouch = false; }
}
else
{
	option1 = false;
	option2 = false;
	option3 = false;
	optionsUItouch = false;
	if optionsUIy != optionsUIyTarget + 80 { optionsUIy = lerp(optionsUIy, optionsUIyTarget + 80, 0.1); }
}

if point_distance(mouseX, mouseY, playerUImx, playerUImy) < (playerUIw * 0.6) { playerUItouch = true; } else { playerUItouch = false; }

//Button actions
//Click to activate
if mouse_check_button_pressed(global.LMOUSE)
{
	//Dialog button
	if touchR2
	{
		if instance_exists(oPlayer)
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
						//Level 0 is first contact
						oGUI.dialogLevel = 0;
						GreetAll(uType);
						//Broadcast to nearby units and try to get a dialog started
						GetDialogPartner();
					}
				} 
			}
		}
		if oDialog.menuActive { with oDialog { SetActionMenu(RESETMENU); } }
	}
	
	//Dialog option selection
	if option1
	{
		//Friendly dialog branch
		optionsDisplay = false;
		with oPlayer
		{
			var dialog = string(oGUI.optionsDialog[| 0]);
			ds_list_add(dialogList, dialog);
			if dialogTime == 0 
			{ 
				showDialog = true;
				dText = dialog;
			}
		}
		switch dialogLevel
		{
			case 1:
				dialogBranch = "FRIENDLY";
				if oControl.selectedObj != noone
				{
					with oControl.selectedObj
					{
						GetFriendlyDialog(uType, oGUI.dialogLevel);
					}
				}
				break;
			default:
				switch dialogBranch
				{
					case "FRIENDLY":
						if oControl.selectedObj != noone
						{
							with oControl.selectedObj
							{
								GetFriendlyDialog(uType, oGUI.dialogLevel);
							}
						}
						break;
					case "ANGRY":
						if oControl.selectedObj != noone
						{
							with oControl.selectedObj
							{
								GetAggroDialog(uType, oGUI.dialogLevel);
							}
						}
						break;
					case "TRADE":
						if oControl.selectedObj != noone
						{
							with oControl.selectedObj
							{
								GetTradeDialog(uType, oGUI.dialogLevel);
							}
						}
						break;
				}
				break;
		}
	}
	else if option2
	{
		//Aggressive dialog branch
		optionsDisplay = false;
		with oPlayer
		{
			var dialog = string(oGUI.optionsDialog[| 1]);
			ds_list_add(dialogList, dialog);
			if dialogTime == 0 
			{ 
				showDialog = true;
				dText = dialog;
			}
		}
		switch dialogLevel
		{
			case 1:
				dialogBranch = "ANGRY";
				if oControl.selectedObj != noone
				{
					with oControl.selectedObj
					{
						GetAggroDialog(uType, oGUI.dialogLevel);
					}
				}
				break;
			default:
				switch dialogBranch
				{
					case "FRIENDLY":
						if oControl.selectedObj != noone
						{
							with oControl.selectedObj
							{
								GetFriendlyDialog(uType, oGUI.dialogLevel);
							}
						}
						break;
					case "ANGRY":
						if oControl.selectedObj != noone
						{
							with oControl.selectedObj
							{
								GetAggroDialog(uType, oGUI.dialogLevel);
							}
						}
						break;
					case "TRADE":
						if oControl.selectedObj != noone
						{
							with oControl.selectedObj
							{
								GetTradeDialog(uType, oGUI.dialogLevel);
							}
						}
						break;
				}
				break;
		}
	}
	else if option3
	{
		//Trade dialog branch
		optionsDisplay = false;
		with oPlayer
		{
			var dialog = string(oGUI.optionsDialog[| 2]);
			ds_list_add(dialogList, dialog);
			if dialogTime == 0 
			{ 
				showDialog = true;
				dText = dialog;
			}
		}
		switch dialogLevel
		{
			case 1:
				dialogBranch = "TRADE";
				if oControl.selectedObj != noone
				{
					with oControl.selectedObj
					{
						GetTradeDialog(uType, oGUI.dialogLevel);
					}
				}
				break;
			default:
				switch dialogBranch
				{
					case "FRIENDLY":
						if oControl.selectedObj != noone
						{
							with oControl.selectedObj
							{
								GetFriendlyDialog(uType, oGUI.dialogLevel);
							}
						}
						break;
					case "ANGRY":
						if oControl.selectedObj != noone
						{
							with oControl.selectedObj
							{
								GetAggroDialog(uType, oGUI.dialogLevel);
							}
						}
						break;
					case "TRADE":
						if oControl.selectedObj != noone
						{
							with oControl.selectedObj
							{
								GetTradeDialog(uType, oGUI.dialogLevel);
							}
						}
						break;
				}
				break;
		}
	}
}
else
{
	//Hotkey to activate
	//Dialog hotkey
	if keyboard_check_pressed(ord("T")) 
	{
		if instance_exists(oPlayer)
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
						//Level 0 is first contact
						oGUI.dialogLevel = 0;
						GreetAll(uType);
						//Broadcast to nearby units and try to get a dialog started
						GetDialogPartner();
					}
				} 
			}
		}
		if oDialog.menuActive { with oDialog { SetActionMenu(RESETMENU); } }
	}
}

if oControl.selectedObj != noone
{
	selectedUI = true;
	if selectedUIx != selectedUIxTarget 
	{ 
		selectedUIx = lerp(selectedUIx, selectedUIxTarget, 0.1);
		selectedUImx = selectedUIx + (selectedUIw * 0.5);//Center X
		selectedUIlx = selectedUIx + (selectedUIw * 0.1);//Left tab X
		selectedUIrx = selectedUIx + (selectedUIw * 0.9);//Right tab X
		selectedUIxT = selectedUIx + 12;//Dialog X
		selectedUIyT = selectedUIy;//Dialog Y
		selectedUIxR = selectedUIx + (selectedUIw * 0.62);//Rank X
		selectedUIyR = selectedUIy + (selectedUIh * 0.78);//Rank Y
	}
	playerUIxR = playerUIx + (playerUIw * 0.38);//Rank X
	//Selected UI buttons
	//Left tab
	if point_distance(mouseX, mouseY, selectedUIlx, selectedUIy1) < 10 { touchL1s = true; } else { touchL1s = false; }
	if point_distance(mouseX, mouseY, selectedUIlx, selectedUIy2) < 10 { touchL2s = true; } else { touchL2s = false; }
	if point_distance(mouseX, mouseY, selectedUIlx, selectedUIy3) < 10 { touchL3s = true; } else { touchL3s = false; }
	if point_distance(mouseX, mouseY, selectedUIlx, selectedUIy4) < 10 { touchL4s = true; } else { touchL4s = false; }
	if point_distance(mouseX, mouseY, selectedUIlx, selectedUIy5) < 10 { touchL5s = true; } else { touchL5s = false; }
	//Right tab
	if point_distance(mouseX, mouseY, selectedUIrx, selectedUIy1) < 10 { touchR1s = true; } else { touchR1s = false; }
	if point_distance(mouseX, mouseY, selectedUIrx, selectedUIy2) < 10 { touchR2s = true; } else { touchR2s = false; }
	if point_distance(mouseX, mouseY, selectedUIrx, selectedUIy3) < 10 { touchR3s = true; } else { touchR3s = false; }
	if point_distance(mouseX, mouseY, selectedUIrx, selectedUIy4) < 10 { touchR4s = true; } else { touchR4s = false; }
	if point_distance(mouseX, mouseY, selectedUIrx, selectedUIy5) < 10 { touchR5s = true; } else { touchR5s = false; }
	
	if point_distance(mouseX, mouseY, selectedUImx, selectedUImy) < (selectedUIw * 0.6) { selectedUItouch = true; } 
		else { selectedUItouch = false; }

	//Button actions
	
	
}
else
{
	selectedUI = false;
	selectedUItouch = false;
	dialogLevel = 0;
	optionsDisplay = false;
	dialogBranch = "ZERO";
	if selectedUIx != selectedUIxStart 
	{ 
		selectedUIx = lerp(selectedUIx, selectedUIxStart, 0.1); 
		selectedUImx = selectedUIx + (selectedUIw * 0.5);//Center X
	}
	playerUIxR = playerUIx + (playerUIw * 0.62);//Rank X
	if !ds_list_empty(selectedDialog) { ds_list_clear(selectedDialog); }
	if !ds_list_empty(optionsDialog) { ds_list_clear(optionsDialog); }
}

if playerUItouch || selectedUItouch || menuUItouch || optionsUItouch { oControl.canSelect = false; } else { oControl.canSelect = true; }