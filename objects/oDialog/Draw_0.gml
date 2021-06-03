//Display dialog from units
if !ds_list_empty(global.DialogList)
{
	var ls = ds_list_size(global.DialogList);
	for (var i = 0; i < ls; i ++)
	{
		var du = ds_list_find_value(global.DialogList, i)
		with du
		{
			SetTextDialog();
			if surface_exists(dSurf)
			{
				var ss = string_width(dText) + 12;
				var sh = string_height(dText) + 8;
				if dSurfW != ss
				{ 
					dSurfW = ss;
					dSurfH = sh;
					surface_resize(dSurf, dSurfW, dSurfH); 
				}
				surface_set_target(dSurf);
				var cw = gpu_get_colorwriteenable();
				cw[3] = false;
				gpu_set_colorwriteenable(cw);
				draw_clear_alpha(c_black, 0.7);
				draw_text(dSurfW * 0.5, dSurfH * 0.5, dText);
				surface_reset_target();
				draw_surface_ext(dSurf, x + dSurfAdjX, y + dSurfAdjY, 1, 1, 0, c_white, 1);
				cw[3] = true;
				gpu_set_colorwriteenable(cw);
			}
			else
			{
				dSurf = surface_create(dSurfW, dSurfH);
				surface_set_target(dSurf);
				draw_clear_alpha(c_black, 0);
				surface_reset_target();
			}
			SetTextDefault();
		}
	}
}

//Display the player action menu
if menuActive
{
	if surface_exists(menuSurf)
	{
		surface_set_target(menuSurf);
		var cw = gpu_get_colorwriteenable();
		cw[3] = false;
		gpu_set_colorwriteenable(cw);
		draw_clear_alpha(c_black, 0.8);
		SetTextMenu();
		//Header
		draw_sprite_ext(sUIa, 0, 0, 0, menuScalex, menuScaley, 0, c_white, 0.8);
		draw_text(menuCellmx, menuCellmy, textHeader);
		var ms = ds_list_size(menuList);
		for (var i = 0; i < ms; ++i)
		{
			//Menu options 
			draw_sprite_ext(sUIa, 0, 0, ((i+1) * menuCellh), menuScalex, menuScaley, 0, c_white, 0.8);
			draw_text(menuCellmx, menuCellmy + ((i+1) * menuCellh), menuList[| i]);
		}
		SetTextDefault();
		surface_reset_target();
		draw_surface_ext(menuSurf, menuX, menuY, menuRatio, menuRatio, 0, c_white, 1);
		cw[3] = true;
		gpu_set_colorwriteenable(cw);
	}
	else
	{
		menuWidth = menuCellw;
		menuHeight = menuCellh * (ds_list_size(menuList)+1);
		menuSurf = surface_create(menuWidth, menuHeight);
		surface_set_target(menuSurf);
		draw_clear_alpha(c_black, 0);
		surface_reset_target();
	}
	//draw_rectangle(menuX, menuY, menuX + (menuWidth*menuRatio), menuY + (menuHeight*menuRatio), true);
}
else
{
	if surface_exists(menuSurf) { surface_free(menuSurf); }
}