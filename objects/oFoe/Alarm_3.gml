/// @description Dialog display timer
dialogTime -= 1;

if dialogTime > 0 
{
	alarm[3] = room_speed * 0.2;
}
else
{	
	dialogTime = 0;
	ds_list_delete(dialogList, 0);
	if ds_list_empty(dialogList) 
	{ 
		ds_list_delete(global.DialogList, ds_list_find_index(global.DialogList, id)); 
		if surface_exists(dSurf) { surface_free(dSurf); }
	}
	else 
	{
		dialogTime = room_speed * 0.2;
		alarm[3] = room_speed * 0.2;
		dText = ds_list_find_value(dialogList, 0);
		if isSelected 
		{
			ds_list_add(oGUI.selectedDialog, dText);
		}
	}
}