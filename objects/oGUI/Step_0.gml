mouseX = device_mouse_x_to_gui(0);
mouseY = device_mouse_y_to_gui(0);
x = mouseX;
y = mouseY;

if playerUI
{
	//Player UI buttons
	//Left tab
	if point_distance(mouseX, mouseY, playerUIlx, playerUIy1) < 15 { touchL1 = true; } else { touchL1 = false; }
	if point_distance(mouseX, mouseY, playerUIlx, playerUIy2) < 15 { touchL2 = true; } else { touchL2 = false; }
	if point_distance(mouseX, mouseY, playerUIlx, playerUIy3) < 15 { touchL3 = true; } else { touchL3 = false; }
	if point_distance(mouseX, mouseY, playerUIlx, playerUIy4) < 15 { touchL4 = true; } else { touchL4 = false; }
	//if point_distance(mouseX, mouseY, playerUIlx, playerUIy5) < 10 { touchL5 = true; } else { touchL5 = false; }
	//Right tab
	if point_distance(mouseX, mouseY, playerUIrx, playerUIy1) < 15 { touchR1 = true; } else { touchR1 = false; }
	if point_distance(mouseX, mouseY, playerUIrx, playerUIy2) < 15 { touchR2 = true; } else { touchR2 = false; }
	if point_distance(mouseX, mouseY, playerUIrx, playerUIy3) < 15 { touchR3 = true; } else { touchR3 = false; }
	if point_distance(mouseX, mouseY, playerUIrx, playerUIy4) < 15 { touchR4 = true; } else { touchR4 = false; }
	//if point_distance(mouseX, mouseY, playerUIrx, playerUIy5) < 10 { touchR5 = true; } else { touchR5 = false; }

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

	if showInventory
	{

		if point_distance(mouseX, mouseY, playerINx1, playerINy1) < 15 { touchIN1 = true; } else { touchIN1 = false; }
		if point_distance(mouseX, mouseY, playerINx2, playerINy1) < 15 { touchIN2 = true; } else { touchIN2 = false; }
		if point_distance(mouseX, mouseY, playerINx3, playerINy1) < 15 { touchIN3 = true; } else { touchIN3 = false; }
		
		if point_distance(mouseX, mouseY, playerINx1, playerINy2) < 15 { touchIN4 = true; } else { touchIN4 = false; }
		if point_distance(mouseX, mouseY, playerINx2, playerINy2) < 15 { touchIN5 = true; } else { touchIN5 = false; }
		if point_distance(mouseX, mouseY, playerINx3, playerINy2) < 15 { touchIN6 = true; } else { touchIN6 = false; }
		
		if point_distance(mouseX, mouseY, playerINx1, playerINy3) < 15 { touchIN7 = true; } else { touchIN7 = false; }
		if point_distance(mouseX, mouseY, playerINx2, playerINy3) < 15 { touchIN8 = true; } else { touchIN8 = false; }
		if point_distance(mouseX, mouseY, playerINx3, playerINy3) < 15 { touchIN9 = true; } else { touchIN9 = false; }
	}
	else
	{
		touchIN1 = false;
		touchIN2 = false;
		touchIN3 = false;
		touchIN4 = false;
		touchIN5 = false;
		touchIN6 = false;
		touchIN7 = false;
		touchIN8 = false;
		touchIN9 = false;
	}

	if point_distance(mouseX, mouseY, playerUImx, playerUImy) < (playerUIw * 0.6) { playerUItouch = true; } else { playerUItouch = false; }

	//Button actions
	//Click to activate
	if mouse_check_button_pressed(global.LMOUSE)
	{
		if touchL1
		{
			if showBio { showBio = false; } else { showBio = true; showHealth = false; showInventory = false; }
		}
		else if touchL2
		{
			if showHealth { showHealth = false; } else { showHealth = true; showBio = false; showInventory = false; }
		}
		else if touchR1 //Dialog button
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
			if oDialog.menuActive { with oDialog { SetActionMenu(RESETMENU); } }
		}
		else if touchR2
		{
			if instance_exists(oPlayer)
			{
				if oPlayer.uIsSquadLead
				{
					if oPlayer.uSquadFollow 
					{ 
						oPlayer.uSquadFollow = false; 
						oPlayer.alarm[5] = 1; 
						cFollow = c_silver; 
					} 
					else 
					{ 
						oPlayer.uSquadFollow = true; 
						cFollow = c_green; 
						with oBattlefield
						{
							var us = "";
							switch oPlayer.uSquad
							{
								case "f1_A":
									us = fSquadP1a;
									break;
								case "f1_B":
									us = fSquadP1b;
									break;
								case "f1_C":
									us = fSquadP1c;
									break;
								case "f1_D":
									us = fSquadP1d;
									break;
								case "f1_E":
									us = fSquadP1e;
									break;
								case "f2_A":
									us = fSquadP2a;
									break;
								case "f2_B":
									us = fSquadP2b;
									break;
								case "f2_C":
									us = fSquadP2c;
									break;
								case "f2_D":
									us = fSquadP2d;
									break;
								case "f2_E":
									us = fSquadP2e;
									break;
								case "f3_A":
									us = fSquadP3a;
									break;
								case "f3_B":
									us = fSquadP3b;
									break;
								case "f3_C":
									us = fSquadP3c;
									break;
								case "f3_D":
									us = fSquadP3d;
									break;
								case "f3_E":
									us = fSquadP3e;
									break;
							}
							if us != "" { MoveSquad(us); }
						}
					}
	 			}
				else
				{
					if oControl.selectedObj != noone
					{
						oPlayer.uFollowTarget = oControl.selectedObj;
						if !oPlayer.uFollow 
						{
							oPlayer.uFollow = true;
							oPlayer.uFollowing = false;
							oPlayer.alarm[4] = -1;
							cFollow = c_green;
						}
					}
				}
			}
			if oDialog.menuActive { with oDialog { SetActionMenu(RESETMENU); } }
		}
		else if touchR3
		{
			if showInventory { showInventory = false; } else { showInventory = true; showHealth = false; showBio = false; }
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
			if oDialog.menuActive { with oDialog { SetActionMenu(RESETMENU); } }
		}
		else if keyboard_check_pressed(ord("F"))
		{
			if instance_exists(oPlayer)
			{
				if oPlayer.uIsSquadLead
				{
					if oPlayer.uSquadFollow 
					{ 
						oPlayer.uSquadFollow = false; 
						oPlayer.alarm[5] = 1; 
						cFollow = c_silver; 
					} 
					else 
					{ 
						oPlayer.uSquadFollow = true; 
						cFollow = c_green; 
						with oBattlefield
						{
							var us = "";
							switch oPlayer.uSquad
							{
								case "f1_A":
									us = fSquadP1a;
									break;
								case "f1_B":
									us = fSquadP1b;
									break;
								case "f1_C":
									us = fSquadP1c;
									break;
								case "f1_D":
									us = fSquadP1d;
									break;
								case "f1_E":
									us = fSquadP1e;
									break;
								case "f2_A":
									us = fSquadP2a;
									break;
								case "f2_B":
									us = fSquadP2b;
									break;
								case "f2_C":
									us = fSquadP2c;
									break;
								case "f2_D":
									us = fSquadP2d;
									break;
								case "f2_E":
									us = fSquadP2e;
									break;
								case "f3_A":
									us = fSquadP3a;
									break;
								case "f3_B":
									us = fSquadP3b;
									break;
								case "f3_C":
									us = fSquadP3c;
									break;
								case "f3_D":
									us = fSquadP3d;
									break;
								case "f3_E":
									us = fSquadP3e;
									break;
							}
							if us != "" { MoveSquad(us); }
						}
					}
	 			}
				else
				{
					if oControl.selectedObj != noone
					{
						oPlayer.uFollowTarget = oControl.selectedObj;
						if !oPlayer.uFollow 
						{
							oPlayer.uFollow = true;
							oPlayer.uFollowing = false;
							oPlayer.alarm[4] = -1;
							cFollow = c_green;
						}
					}
				}
			}
			if oDialog.menuActive { with oDialog { SetActionMenu(RESETMENU); } }
		}
		else if keyboard_check_pressed(vk_tab)
		{
			if showInventory { showInventory = false; } else { showInventory = true; showHealth = false; showBio = false; }
		}
		else if keyboard_check_pressed(ord("H"))
		{
			if showHealth { showHealth = false; } else { showHealth = true; showBio = false; showInventory = false; }
		}
	}

	if oControl.selectedObj != noone
	{
		selectedUI = true;
		if selectedUIx != selectedUIxTarget 
		{ 
			selectedUIx = lerp(selectedUIx, selectedUIxTarget, 0.1);
			selectedUImx = selectedUIx + (selectedUIw * 0.5);//Center X
			selectedUIxT = selectedUIx + 12;//Dialog X
			selectedUIyT = selectedUIy;//Dialog Y
			//selectedUIlx = selectedUIx + (selectedUIw * 0.1);//Left tab X
			//selectedUIrx = selectedUIx + (selectedUIw * 0.9);//Right tab X
			//selectedUIxR = selectedUIx + (selectedUIw * 0.62);//Rank X
			//selectedUIyR = selectedUIy + (selectedUIh * 0.78);//Rank Y
		}
		//playerUIxR = playerUIx + (playerUIw * 0.38);//Rank X
		/*
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
		*/
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
		//playerUIxR = playerUIx + (playerUIw * 0.62);//Rank X
		if !ds_list_empty(selectedDialog) { ds_list_clear(selectedDialog); }
		if !ds_list_empty(optionsDialog) { ds_list_clear(optionsDialog); }
	}

	if playerUItouch || selectedUItouch || menuUItouch || optionsUItouch { oControl.canSelect = false; } else { oControl.canSelect = true; }
}