/// @description Clear all data structures from memory
/// @param type Type of unit
function Destroy(type)
{
	switch type
	{
		case PLAYER:
		case F_RIFLEMAN:
			mp_grid_clear_cell(global.NavGrid, cellX, cellY);
			path_delete(path);
			ds_list_destroy(dialogList);
			if surface_exists(dSurf) { surface_free(dSurf); }
			//Add remove from oBattlefield squad list\\
			switch uSquad
			{
				case "f1_A":
					ds_list_delete(oBattlefield.fSquadP1a, id);
					break;
				case "f1_B":
					ds_list_delete(oBattlefield.fSquadP1b, id);
					break;
				case "f1_C":
					ds_list_delete(oBattlefield.fSquadP1c, id);
					break;
				case "f1_D":
					ds_list_delete(oBattlefield.fSquadP1d, id);
					break;
				case "f1_E":
					ds_list_delete(oBattlefield.fSquadP1e, id);
					break;
				case "f2_A":
					ds_list_delete(oBattlefield.fSquadP2a, id);
					break;
				case "f2_B":
					ds_list_delete(oBattlefield.fSquadP2b, id);
					break;
				case "f2_C":
					ds_list_delete(oBattlefield.fSquadP2c, id);
					break;
				case "f2_D":
					ds_list_delete(oBattlefield.fSquadP2d, id);
					break;
				case "f2_E":
					ds_list_delete(oBattlefield.fSquadP2e, id);
					break;
				case "f3_A":
					ds_list_delete(oBattlefield.fSquadP3a, id);
					break;
				case "f3_B":
					ds_list_delete(oBattlefield.fSquadP3b, id);
					break;
				case "f3_C":
					ds_list_delete(oBattlefield.fSquadP3c, id);
					break;
				case "f3_D":
					ds_list_delete(oBattlefield.fSquadP3d, id);
					break;
				case "f3_E":
					ds_list_delete(oBattlefield.fSquadP3e, id);
					break;
			}
			ds_list_delete(global.UnitList, ds_list_find_index(global.UnitList, id));
			break;
		case E_RIFLEMAN:
			mp_grid_clear_cell(global.NavGrid, cellX, cellY);
			path_delete(path);
			ds_list_destroy(dialogList);
			if surface_exists(dSurf) { surface_free(dSurf); }
			//Add remove from oBattlefield squad list\\
			switch uSquad
			{
				case "e1_A":
					ds_list_delete(oBattlefield.eSquadP1a, id);
					break;
				case "e1_B":
					ds_list_delete(oBattlefield.eSquadP1b, id);
					break;
				case "e1_C":
					ds_list_delete(oBattlefield.eSquadP1c, id);
					break;
				case "e1_D":
					ds_list_delete(oBattlefield.eSquadP1d, id);
					break;
				case "e1_E":
					ds_list_delete(oBattlefield.eSquadP1e, id);
					break;
				case "e2_A":
					ds_list_delete(oBattlefield.eSquadP2a, id);
					break;
				case "e2_B":
					ds_list_delete(oBattlefield.eSquadP2b, id);
					break;
				case "e2_C":
					ds_list_delete(oBattlefield.eSquadP2c, id);
					break;
				case "e2_D":
					ds_list_delete(oBattlefield.eSquadP2d, id);
					break;
				case "e2_E":
					ds_list_delete(oBattlefield.eSquadP2e, id);
					break;
				case "e3_A":
					ds_list_delete(oBattlefield.eSquadP3a, id);
					break;
				case "e3_B":
					ds_list_delete(oBattlefield.eSquadP3b, id);
					break;
				case "e3_C":
					ds_list_delete(oBattlefield.eSquadP3c, id);
					break;
				case "e3_D":
					ds_list_delete(oBattlefield.eSquadP3d, id);
					break;
				case "e3_E":
					ds_list_delete(oBattlefield.eSquadP3e, id);
					break;
			}
			ds_list_delete(global.UnitList, ds_list_find_index(global.UnitList, id));
			break;
		case F_TANK:
			mp_grid_clear_cell(global.NavGrid, cellX-1, cellY-1);
			mp_grid_clear_cell(global.NavGrid, cellX, cellY-1);
			mp_grid_clear_cell(global.NavGrid, cellX+1, cellY-1);
			mp_grid_clear_cell(global.NavGrid, cellX-1, cellY);
			mp_grid_clear_cell(global.NavGrid, cellX, cellY);
			mp_grid_clear_cell(global.NavGrid, cellX+1, cellY);
			mp_grid_clear_cell(global.NavGrid, cellX-1, cellY+1);
			mp_grid_clear_cell(global.NavGrid, cellX, cellY+1);
			mp_grid_clear_cell(global.NavGrid, cellX+1, cellY+1);
			path_delete(path);
			//ds_list_destroy(dialogList);
			//if surface_exists(dSurf) { surface_free(dSurf); }
			//Add remove from oBattlefield squad list\\
			switch uSquad
			{
				case "fT_A":
					ds_list_delete(oBattlefield.fSquadPTa, id);
					break;
				case "fT_B":
					ds_list_delete(oBattlefield.fSquadPTb, id);
					break;
				case "fT_C":
					ds_list_delete(oBattlefield.fSquadPTc, id);
					break;
			}
			ds_list_delete(global.UnitList, ds_list_find_index(global.UnitList, id));
			break;
		case E_TANK:
			mp_grid_clear_cell(global.NavGrid, cellX-1, cellY-1);
			mp_grid_clear_cell(global.NavGrid, cellX, cellY-1);
			mp_grid_clear_cell(global.NavGrid, cellX+1, cellY-1);
			mp_grid_clear_cell(global.NavGrid, cellX-1, cellY);
			mp_grid_clear_cell(global.NavGrid, cellX, cellY);
			mp_grid_clear_cell(global.NavGrid, cellX+1, cellY);
			mp_grid_clear_cell(global.NavGrid, cellX-1, cellY+1);
			mp_grid_clear_cell(global.NavGrid, cellX, cellY+1);
			mp_grid_clear_cell(global.NavGrid, cellX+1, cellY+1);
			path_delete(path);
			//ds_list_destroy(dialogList);
			//if surface_exists(dSurf) { surface_free(dSurf); }
			//Add remove from oBattlefield squad list\\
			switch uSquad
			{
				case "eT_A":
					ds_list_delete(oBattlefield.eSquadPTa, id);
					break;
				case "eT_B":
					ds_list_delete(oBattlefield.eSquadPTb, id);
					break;
				case "eT_C":
					ds_list_delete(oBattlefield.eSquadPTc, id);
					break;
			}
			ds_list_delete(global.UnitList, ds_list_find_index(global.UnitList, id));
			break;
	}
	audio_emitter_free(uEmit);
}