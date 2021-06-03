/// @description Clear all data structures from memory
function Destroy()
{
	mp_grid_clear_cell(global.NavGrid, cellX, cellY);
	path_delete(path);
	ds_list_destroy(dialogList);
	if surface_exists(dSurf) { surface_free(dSurf); }
	//Add remove from oBattlefield squad list\\
	
	ds_list_delete(global.UnitList, ds_list_find_index(global.UnitList, id));
}