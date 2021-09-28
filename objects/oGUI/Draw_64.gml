//Player UI
if playerUI
{
	//Selected Object UI
	if selectedUI
	{
		if !ds_list_empty(selectedDialog)
		{
			draw_set_font(fnt10);
			draw_set_halign(fa_left);
			var dss = ds_list_size(selectedDialog);
			var ysp = dss*30;
			for (var i = 0; i < dss; ++i)
			{
				var dst = selectedDialog[| i];
				draw_text(selectedUIxT, selectedUIyT - (ysp-(i*30)), string(dst));
			}
		}
	
		if optionsDisplay
		{
			draw_set_color(c_black);
			draw_set_alpha(0.5);
			//Options 1
			draw_rectangle(playerUIxT, optionsUIy - 60, playerUIxT + (playerUIw * 0.9), optionsUIy - 80, false);
			//Option 2
			draw_rectangle(playerUIxT, optionsUIy - 30, playerUIxT + (playerUIw * 0.9), optionsUIy - 50, false);
			//Option 3
			draw_rectangle(playerUIxT, optionsUIy, playerUIxT + (playerUIw * 0.9), optionsUIy - 20, false);
	
			draw_set_color(c_silver);
			draw_rectangle(playerUIxT, optionsUIy - 60, playerUIxT + (playerUIw * 0.9), optionsUIy - 80, true);
			draw_rectangle(playerUIxT, optionsUIy - 30, playerUIxT + (playerUIw * 0.9), optionsUIy - 50, true);
			draw_rectangle(playerUIxT, optionsUIy, playerUIxT + (playerUIw * 0.9), optionsUIy - 20, true);
	
			if !ds_list_empty(optionsDialog)
			{
				draw_set_font(fnt10);
				draw_set_halign(fa_left);
				draw_set_color(c_white);
				draw_set_alpha(1);
	
				draw_text(playerUIxT+2,optionsUIy - 70, string(optionsDialog[| 0]));
				draw_text(playerUIxT+2,optionsUIy - 40, string(optionsDialog[| 1]));
				draw_text(playerUIxT+2,optionsUIy - 10, string(optionsDialog[| 2]));
			}
		}
	
		draw_sprite_ext(sUIa, 0, selectedUIx, selectedUIy, 0.9, 0.9, 0, c_white, 0.8);
		if oControl.selectedObj != noone
		{
			draw_set_font(fnt12);
			draw_set_halign(fa_center);
			draw_text(selectedUImx, selectedUIy + 16, selectedRank + " " + selectedName);
			switch oControl.selectedObj.uType
			{
				case F_RIFLEMAN:
					draw_sprite_ext(sFriendlyFace01, 0, selectedUImx, selectedUImy, -0.9, 0.9, 0, c_white, 0.2);
					draw_text(selectedUImx, selectedUIy + 192, "--Current Orders--");
					draw_set_font(fnt10);
					draw_text(selectedUImx, selectedUIy + 30, selectedPlatoon + " " +  selectedSquad);
					//Role
					draw_text(selectedUImx, selectedUIy + 44, oControl.selectedObj.uRole);
					draw_text(selectedUImx, selectedUIy + 210, oControl.selectedObj.uOrders);
					break;
				case E_RIFLEMAN:
					draw_sprite_ext(sFoeFace01, 0, selectedUImx, selectedUImy, -0.9, 0.9, 0, c_white, 0.2);
					break;
			}
			/*
			draw_circle_color(selectedUIlx, selectedUIy1, 10, c_dkgray, c_dkgray, false);
			draw_circle_color(selectedUIlx, selectedUIy2, 10, c_dkgray, c_dkgray, false);
			draw_circle_color(selectedUIlx, selectedUIy3, 10, c_dkgray, c_dkgray, false);
			draw_circle_color(selectedUIlx, selectedUIy4, 10, c_dkgray, c_dkgray, false);
			draw_circle_color(selectedUIlx, selectedUIy5, 10, c_dkgray, c_dkgray, false);
	
			draw_circle_color(selectedUIrx, selectedUIy1, 10, c_dkgray, c_dkgray, false);
			draw_circle_color(selectedUIrx, selectedUIy2, 10, c_dkgray, c_dkgray, false);
			draw_circle_color(selectedUIrx, selectedUIy3, 10, c_dkgray, c_dkgray, false);
			draw_circle_color(selectedUIrx, selectedUIy4, 10, c_dkgray, c_dkgray, false);
			draw_circle_color(selectedUIrx, selectedUIy5, 10, c_dkgray, c_dkgray, false);

			if touchL1s { draw_text(selectedUIlx, selectedUIy1, "!!"); }
			if touchL2s { draw_text(selectedUIlx, selectedUIy2, "!!"); }
			if touchL3s { draw_text(selectedUIlx, selectedUIy3, "!!"); }
			if touchL4s { draw_text(selectedUIlx, selectedUIy4, "!!"); }
			if touchL5s { draw_text(selectedUIlx, selectedUIy5, "!!"); }
	
			if touchR1s { draw_text(selectedUIrx, selectedUIy1, "!!"); }
			if touchR2s { draw_text(selectedUIrx, selectedUIy2, "!!"); }
			if touchR3s { draw_text(selectedUIrx, selectedUIy3, "!!"); }
			if touchR4s { draw_text(selectedUIrx, selectedUIy4, "!!"); }
			if touchR5s { draw_text(selectedUIrx, selectedUIy5, "!!"); }
			*/
		}
	}
	
	//Display player dialog pop-up
	if !ds_list_empty(playerDialog)
	{
		draw_set_font(fnt10);
		draw_set_halign(fa_left);
		var dss = ds_list_size(playerDialog);
		var ysp = dss*30;
		for (var i = 0; i < dss; ++i)
		{
			var dst = playerDialog[| i];
			draw_text(playerUIxT, (optionsUIy - optionsUIh) - (ysp-(i*30)), string(dst));
		}
		draw_set_halign(fa_center);
	}
	
	//UI Background
	draw_sprite_ext(sUIa, 0, playerUIx, playerUIy, 1, 1, 0, c_white, 0.8);
	
	draw_sprite_ext(sBio    , 0, playerUIlx, playerUIy1, 0.8, 0.8, 0, c_silver, 1);
	draw_sprite_ext(sHealth , 0, playerUIlx, playerUIy2, 0.8, 0.8, 0, c_silver, 1);
	draw_sprite_ext(sStamina, 0, playerUIlx, playerUIy3, 0.8, 0.8, 0, c_silver, 1);
	draw_sprite_ext(sMorale , 0, playerUIlx, playerUIy4, 0.8, 0.8, 0, c_silver, 1);

	draw_sprite_ext(sDialog   , 0, playerUIrx, playerUIy1, 0.8, 0.8, 0, c_silver, 1);
	draw_sprite_ext(sFollow   , 0, playerUIrx, playerUIy2, 0.8, 0.8, 0, cFollow, 1);
	draw_sprite_ext(sInventory, 0, playerUIrx, playerUIy3, 0.8, 0.8, 0, c_silver, 1);
	draw_sprite_ext(sAttack   , 0, playerUIrx, playerUIy4, 0.8, 0.8, 0, c_silver, 1);
	
	//Player information
	if instance_exists(oPlayer)
	{
		if showHealth
		{
			draw_set_font(fnt12);
			draw_set_halign(fa_center);
			//Player name
			draw_text(playerUImx, playerUIy + 16, playerRank + " " + playerName);
			draw_sprite_ext(sBody, 0, playerUImx, playerUImy, 1, 1, 0, c_white, 0.5);
			draw_sprite_ext(sHunger, 0, playerUImx - 50, playerUImy + 100, 1, 1, 0, c_white, 0.5);
			draw_sprite_ext(sThirst, 0, playerUImx + 50, playerUImy + 100, 1, 1, 0, c_white, 0.5);
			draw_set_halign(fa_center);
		}
		else if showBio
		{
			draw_set_font(fnt12);
			draw_set_halign(fa_center);
			//Player name
			draw_text(playerUImx, playerUIy + 16, playerRank + " " + playerName);
			draw_set_font(fnt10);
			draw_text(playerUImx, playerUIy + 32, playerPlatoon + " " +  playerSquad);
			draw_set_halign(fa_left);
			draw_text(playerUImx - 50, playerUIy + 60, "Age: " + string(oPlayer.uAge));
			draw_set_halign(fa_center);
		}
		else if showInventory
		{
			draw_set_font(fnt12);
			draw_set_halign(fa_center);
			draw_text(playerUImx, playerUIy + 20, "Total Weight"); 
			draw_text(playerUImx, playerUIy + 42, string(oPlayer.uCarryWeight) + "/" + string(oPlayer.uCarryMax)); 
			draw_set_font(fnt8);
			var il = array_length(oPlayer.uInventory);
			var ix;
			var iy;
			for (var i = 0; i < il; ++i)
			{
				switch i
				{
					case 0:
						ix = playerINx1;
						iy = playerINy1;
						break;
					case 1:
						ix = playerINx2;
						iy = playerINy1;
						break;
					case 2:
						ix = playerINx3;
						iy = playerINy1;
						break;
					case 3:
						ix = playerINx1;
						iy = playerINy2;
						break;
					case 4:
						ix = playerINx2;
						iy = playerINy2;
						break;
					case 5:
						ix = playerINx3;
						iy = playerINy2;
						break;
					case 6:
						ix = playerINx1;
						iy = playerINy3;
						break;
					case 7:
						ix = playerINx2;
						iy = playerINy3;
						break;
					case 8:
						ix = playerINx3;
						iy = playerINy3;
						break;
				}
				draw_sprite_ext(sInvBG, 0, ix, iy, 1, 1, 0, c_white, 1);
				draw_sprite_ext(oPlayer.uInventory[i][1], 0, ix, iy, 1, 1, 0, c_white, 1);
				draw_text(ix, iy + 20, oPlayer.uInventory[i][2]); 
			}
			
			var it = -1;
			if touchIN1 { it = 0; }
				else if touchIN2 { it = 1; }
					else if touchIN3 { it = 2; }
						else if touchIN4 { it = 3; }
							else if touchIN5 { it = 4; }
								else if touchIN6 { it = 5; }
									else if touchIN7 { it = 6; }
										else if touchIN8 { it = 7; }
											else if touchIN9 { it = 8; }
			
			if it != -1
			{
				draw_set_font(fnt14);
				var t = oPlayer.uInventory[it][0];
				var tl = string_width(t);
				var th = string_height(t);
				draw_set_alpha(0.8);
				draw_rectangle_color
				(
					mouseX, mouseY - (th*0.5) - 12, 
					mouseX+tl, mouseY + (th*0.5) - 12, 
					c_black, c_black, c_black, c_black, false
				);
				draw_rectangle_color
				(
					mouseX, mouseY - (th*0.5) - 12, 
					mouseX+tl, mouseY + (th*0.5) - 12, 
					c_silver, c_silver, c_silver, c_silver, true
				);
				draw_set_alpha(1);
				draw_set_font(fnt12);
				draw_set_color(c_silver);
				draw_text(mouseX + (tl*0.5), mouseY - 10, t);
			}
		}
		else
		{
			draw_set_font(fnt12);
			draw_set_halign(fa_center);
			//Player name
			draw_text(playerUImx, playerUIy + 16, playerRank + " " + playerName);
			draw_text(playerUImx, playerUIy + 215, "--Current Orders--");
			draw_set_font(fnt10);
			//Role
			draw_text(playerUImx, playerUIy + 48, oPlayer.uRole);
			//Platoon and squad
			draw_text(playerUImx, playerUIy + 32, playerPlatoon + " " +  playerSquad);
			//Current Orders
			draw_text(playerUImx, playerUIy + 235, oPlayer.uOrders);
			var r;
			if selectedUI { r = 1; } else { r = -1; }
			//Head Sprite
			draw_sprite_ext(sFriendlyFace01, 0, playerUImx, playerUImy, r, 1, 0, c_white, 0.2);
			//Player Rank
			//draw_sprite_ext(sRank, 0, playerUIxR, playerUIyR, 0.8, 0.8, 0, c_silver, 1);
		}
	}

	
	
	if touchL1 
	{ 
		if !showBio
		{
			draw_set_font(fnt14);
			var t = "Show Bio";
			var tl = string_width(t);
			var th = string_height(t);
			draw_set_alpha(0.8);
			draw_rectangle_color
			(
				mouseX, mouseY - (th*0.5) - 12, 
				mouseX+tl, mouseY + (th*0.5) - 12, 
				c_black, c_black, c_black, c_black, false
			);
			draw_rectangle_color
			(
				mouseX, mouseY - (th*0.5) - 12, 
				mouseX+tl, mouseY + (th*0.5) - 12, 
				c_silver, c_silver, c_silver, c_silver, true
			);
			draw_set_alpha(1);
			draw_set_font(fnt12);
			draw_set_color(c_silver);
			draw_text(mouseX + (tl*0.5), mouseY - 10, t);
		}
	}
	else if touchL2 
	{ 
		if !showHealth
		{
			draw_set_font(fnt14);
			var t = string("Health Status\n" + string(oPlayer.uHealth) + " / 100");
			var tl = string_width(t);
			var th = string_height(t);
			draw_set_alpha(0.8);
			draw_rectangle_color
			(
				mouseX, mouseY - (th*0.5) - 12, 
				mouseX+tl, mouseY + (th*0.5) - 12, 
				c_black, c_black, c_black, c_black, false
			);
			draw_rectangle_color
			(
				mouseX, mouseY - (th*0.5) - 12, 
				mouseX+tl, mouseY + (th*0.5) - 12, 
				c_silver, c_silver, c_silver, c_silver, true
			);
			draw_set_alpha(1);
			draw_set_font(fnt12);
			draw_set_color(c_silver);
			draw_text(mouseX + (tl*0.5), mouseY - 10, t);
		}
	}
	else if touchL3 
	{
		draw_set_font(fnt14);
		var t = string("Stamina Level\n" + string(oPlayer.uStamina) + " / 100");
		var tl = string_width(t);
		var th = string_height(t);
		draw_set_alpha(0.8);
		draw_rectangle_color
		(
			mouseX, mouseY - (th*0.5) - 12, 
			mouseX+tl, mouseY + (th*0.5) - 12, 
			c_black, c_black, c_black, c_black, false
		);
		draw_rectangle_color
		(
			mouseX, mouseY - (th*0.5) - 12, 
			mouseX+tl, mouseY + (th*0.5) - 12, 
			c_silver, c_silver, c_silver, c_silver, true
		);
		draw_set_alpha(1);
		draw_set_font(fnt12);
		draw_set_color(c_silver);
		draw_text(mouseX + (tl*0.5), mouseY - 10, t);
	}
	else if touchL4 
	{ 
		draw_set_font(fnt14);
		var t = string("Morale\n" + string(oPlayer.uMorale) + " / 100");
		var tl = string_width(t);
		var th = string_height(t);
		draw_set_alpha(0.8);
		draw_rectangle_color
		(
			mouseX, mouseY - (th*0.5) - 12, 
			mouseX+tl, mouseY + (th*0.5) - 12, 
			c_black, c_black, c_black, c_black, false
		);
		draw_rectangle_color
		(
			mouseX, mouseY - (th*0.5) - 12, 
			mouseX+tl, mouseY + (th*0.5) - 12, 
			c_silver, c_silver, c_silver, c_silver, true
		);
		draw_set_alpha(1);
		draw_set_font(fnt12);
		draw_set_color(c_silver);
		draw_text(mouseX + (tl*0.5), mouseY - 10, t);
	}
	else if touchR1 
	{ 
		draw_set_font(fnt14);
		var t = string("Dialog");
		var tl = string_width(t);
		var th = string_height(t);
		draw_set_alpha(0.8);
		draw_rectangle_color
		(
			mouseX, mouseY - (th*0.5) - 12, 
			mouseX+tl, mouseY + (th*0.5) - 12, 
			c_black, c_black, c_black, c_black, false
		);
		draw_rectangle_color
		(
			mouseX, mouseY - (th*0.5) - 12, 
			mouseX+tl, mouseY + (th*0.5) - 12, 
			c_silver, c_silver, c_silver, c_silver, true
		);
		draw_set_alpha(1);
		draw_set_font(fnt12);
		draw_set_color(c_silver);
		draw_text(mouseX + (tl*0.5), mouseY - 10, t); 
	}
	else if touchR2 
	{ 
		draw_set_font(fnt14);
		var t = string("Follow");
		var tl = string_width(t);
		var th = string_height(t);
		draw_set_alpha(0.8);
		draw_rectangle_color
		(
			mouseX, mouseY - (th*0.5) - 12, 
			mouseX+tl, mouseY + (th*0.5) - 12, 
			c_black, c_black, c_black, c_black, false
		);
		draw_rectangle_color
		(
			mouseX, mouseY - (th*0.5) - 12, 
			mouseX+tl, mouseY + (th*0.5) - 12, 
			c_silver, c_silver, c_silver, c_silver, true
		);
		draw_set_alpha(1);
		draw_set_font(fnt12);
		draw_set_color(c_silver);
		draw_text(mouseX + (tl*0.5), mouseY - 10, t);
	}
	else if touchR3 
	{ 
		draw_set_font(fnt14);
		var t = string("Inventory");
		var tl = string_width(t);
		var th = string_height(t);
		draw_set_alpha(0.8);
		draw_rectangle_color
		(
			mouseX, mouseY - (th*0.5) - 12, 
			mouseX+tl, mouseY + (th*0.5) - 12, 
			c_black, c_black, c_black, c_black, false
		);
		draw_rectangle_color
		(
			mouseX, mouseY - (th*0.5) - 12, 
			mouseX+tl, mouseY + (th*0.5) - 12, 
			c_silver, c_silver, c_silver, c_silver, true
		);
		draw_set_alpha(1);
		draw_set_font(fnt12);
		draw_set_color(c_silver);
		draw_text(mouseX + (tl*0.5), mouseY - 10, t);
	}
	else if touchR4 
	{ 
		draw_set_font(fnt14);
		var t = string("Attack");
		var tl = string_width(t);
		var th = string_height(t);
		draw_set_alpha(0.8);
		draw_rectangle_color
		(
			mouseX, mouseY - (th*0.5) - 12, 
			mouseX+tl, mouseY + (th*0.5) - 12, 
			c_black, c_black, c_black, c_black, false
		);
		draw_rectangle_color
		(
			mouseX, mouseY - (th*0.5) - 12, 
			mouseX+tl, mouseY + (th*0.5) - 12, 
			c_silver, c_silver, c_silver, c_silver, true
		);
		draw_set_alpha(1);
		draw_set_font(fnt12);
		draw_set_color(c_silver);
		draw_text(mouseX + (tl*0.5), mouseY - 10, t);
	}
	SetTextDefault();
}

//Debug UI
if showDebug
{
	draw_set_alpha(0.3);
	draw_rectangle_color
	(
		guiWidth * 0.995, guiHeight * 0.8, 
		guiWidth * 0.9, guiHeight * 0.99, 
		c_black, c_black, c_black, c_black, false
	);
	draw_set_alpha(1);
	draw_rectangle_color
	(
		guiWidth * 0.995, guiHeight * 0.8, 
		guiWidth * 0.9, guiHeight * 0.99, 
		c_silver, c_silver, c_silver, c_silver, true
	);
	
	var txt1 = string(room_speed);
	var txt2 = string(ds_list_size(global.UnitList));
	var txt3 = string(ds_list_size(global.DialogList));
	var txt4;
	if oControl.selectedObj != noone
	{
		txt4 = oControl.selectedObj.uName;
	}
	else
	{
		txt4 = "Noone";
	}
	var txt5;
	if oControl.canSelect
	{
		txt5 = "True";
	}
	else
	{
		txt5 = "False";
	}
	var txt6;
	if oDialog.menuActive
	{
		txt6 = "True";
	}
	else
	{
		txt6 = "False";
	}
	var txt7 = string(dialogLevel);

	draw_set_font(fnt8);
	draw_set_halign(fa_left);
	draw_text(guiWidth * 0.91, guiHeight * 0.815, "Game Tick: " + txt1 + "fps");
	draw_text(guiWidth * 0.91, guiHeight * 0.825, "Total Units: " + txt2);
	draw_text(guiWidth * 0.91, guiHeight * 0.835, "Dialog Units: " + txt3);
	draw_text(guiWidth * 0.91, guiHeight * 0.845, "Selected Unit: " + txt4);
	draw_text(guiWidth * 0.91, guiHeight * 0.855, "Can Select: " + txt5);
	draw_text(guiWidth * 0.91, guiHeight * 0.865, "Active Menu: " + txt6);
	draw_text(guiWidth * 0.91, guiHeight * 0.875, "Dialog Level: " + txt7);
	SetTextDefault();
}