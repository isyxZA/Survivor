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
	
			draw_text(playerUIxT,optionsUIy - 70, string(optionsDialog[| 0]));
			draw_text(playerUIxT,optionsUIy - 40, string(optionsDialog[| 1]));
			draw_text(playerUIxT,optionsUIy - 10, string(optionsDialog[| 2]));
		}
	
		/*
		if option1 { draw_text(x, y, "Option1"); }
		if option2 { draw_text(x, y, "Option2"); }
		if option3 { draw_text(x, y, "Option3"); }
		*/
	}
	
	draw_sprite_ext(sUIa, 0, selectedUIx, selectedUIy, 0.9, 0.9, 0, c_white, 0.8);
	if oControl.selectedObj != noone
	{
		draw_set_font(fnt14);
		draw_set_halign(fa_center);
		draw_text(selectedUImx, selectedUIy + 18, oControl.selectedObj.uName + " " + oControl.selectedObj.uSurname);
		switch oControl.selectedObj.uType
		{
			case F_RIFLEMAN:
				draw_sprite_ext(sFriendlyFace01, 0, selectedUImx, selectedUImy, -0.9, 0.9, 0, c_white, 0.2);
				break;
			case E_RIFLEMAN:
				draw_sprite_ext(sFoeFace01, 0, selectedUImx, selectedUImy, -0.9, 0.9, 0, c_white, 0.2);
				break;
		}
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
	}
}


//Player UI
if playerUI
{
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
	}
	
	draw_sprite_ext(sUIa, 0, playerUIx, playerUIy, 1, 1, 0, c_white, 0.8);
	if instance_exists(oPlayer)
	{
		draw_set_font(fnt14);
		draw_set_halign(fa_center);
		draw_text(playerUImx, playerUIy + 18, oPlayer.uName + " " +  oPlayer.uSurname);
		var r;
		if selectedUI { r = 1; } else { r = -1; }
		draw_sprite_ext(sFriendlyFace01, 0, playerUImx, playerUImy, r, 1, 0, c_white, 0.2);
		draw_sprite_ext(sRank, 0, playerUIxR, playerUIyR, 0.8, 0.8, 0, c_silver, 1);
	}

	draw_sprite_ext(sHealth , 0, playerUIlx, playerUIy1, 1, 1, 0, c_silver, 1);
	draw_sprite_ext(sHunger , 0, playerUIlx, playerUIy2, 1, 1, 0, c_silver, 1);
	draw_sprite_ext(sThirst , 0, playerUIlx, playerUIy3, 1, 1, 0, c_silver, 1);
	draw_sprite_ext(sStamina, 0, playerUIlx, playerUIy4, 1, 1, 0, c_silver, 1);
	draw_sprite_ext(sMorale , 0, playerUIlx, playerUIy5, 1, 1, 0, c_silver, 1);
	
	draw_sprite_ext(sInventory, 0, playerUIrx, playerUIy1, 1, 1, 0, c_silver, 1);
	draw_sprite_ext(sDialog   , 0, playerUIrx, playerUIy2, 1, 1, 0, c_silver, 1);
	draw_sprite_ext(sFollow   , 0, playerUIrx, playerUIy3, 1, 1, 0, c_silver, 1);
	draw_sprite_ext(sAttack   , 0, playerUIrx, playerUIy4, 1, 1, 0, c_silver, 1);
	draw_sprite_ext(sBio      , 0, playerUIrx, playerUIy5, 1, 1, 0, c_silver, 1);
	
	draw_set_font(fnt12);
	draw_set_halign(fa_left);
	draw_set_color(c_silver);
	if touchL1 { draw_text(mouseX+10, mouseY-10, "Health"); }
	if touchL2 { draw_text(mouseX+10, mouseY-10, "Hunger"); }
	if touchL3 { draw_text(mouseX+10, mouseY-10, "Thirst"); }
	if touchL4 { draw_text(mouseX+10, mouseY-10, "Stamina"); }
	if touchL5 { draw_text(mouseX+10, mouseY-10, "Morale"); }
	
	if touchR1 { draw_text(mouseX+10, mouseY-10, "Inventory"); }
	if touchR2 { draw_text(mouseX+10, mouseY-10, "Dialog"); }
	if touchR3 { draw_text(mouseX+10, mouseY-10, "Follow Selected"); }
	if touchR4 { draw_text(mouseX+10, mouseY-10, "Attack Selected"); }
	if touchR5 { draw_text(mouseX+10, mouseY-10, "Show Bio"); }
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