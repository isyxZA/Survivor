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
					ds_list_delete(oBattlefield.fSquadP1a, ds_list_find_index(oBattlefield.fSquadP1a, id));
					break;
				case "f1_B":
					ds_list_delete(oBattlefield.fSquadP1b, ds_list_find_index(oBattlefield.fSquadP1b, id));
					break;
				case "f1_C":
					ds_list_delete(oBattlefield.fSquadP1c, ds_list_find_index(oBattlefield.fSquadP1c, id));
					break;
				case "f1_D":
					ds_list_delete(oBattlefield.fSquadP1d, ds_list_find_index(oBattlefield.fSquadP1d, id));
					break;
				case "f1_E":
					ds_list_delete(oBattlefield.fSquadP1e, ds_list_find_index(oBattlefield.fSquadP1e, id));
					break;
				case "f2_A":
					ds_list_delete(oBattlefield.fSquadP2a, ds_list_find_index(oBattlefield.fSquadP2a, id));
					break;
				case "f2_B":
					ds_list_delete(oBattlefield.fSquadP2b, ds_list_find_index(oBattlefield.fSquadP2b, id));
					break;
				case "f2_C":
					ds_list_delete(oBattlefield.fSquadP2c, ds_list_find_index(oBattlefield.fSquadP2c, id));
					break;
				case "f2_D":
					ds_list_delete(oBattlefield.fSquadP2d, ds_list_find_index(oBattlefield.fSquadP2d, id));
					break;
				case "f2_E":
					ds_list_delete(oBattlefield.fSquadP2e, ds_list_find_index(oBattlefield.fSquadP2e, id));
					break;
				case "f3_A":
					ds_list_delete(oBattlefield.fSquadP3a, ds_list_find_index(oBattlefield.fSquadP3a, id));
					break;
				case "f3_B":
					ds_list_delete(oBattlefield.fSquadP3b, ds_list_find_index(oBattlefield.fSquadP3b, id));
					break;
				case "f3_C":
					ds_list_delete(oBattlefield.fSquadP3c, ds_list_find_index(oBattlefield.fSquadP3c, id));
					break;
				case "f3_D":
					ds_list_delete(oBattlefield.fSquadP3d, ds_list_find_index(oBattlefield.fSquadP3d, id));
					break;
				case "f3_E":
					ds_list_delete(oBattlefield.fSquadP3e, ds_list_find_index(oBattlefield.fSquadP3e, id));
					break;
			}
			ds_list_delete(global.UnitList, ds_list_find_index(global.UnitList, id));
			ds_list_delete(global.FriendList, ds_list_find_index(global.FriendList, id));
			if uIsSquadLead 
			{ 
				with oBattlefield { HaltSquad(other.uSquad); }
			}
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
					ds_list_delete(oBattlefield.eSquadP1a, ds_list_find_index(oBattlefield.eSquadP1a, id));
					break;
				case "e1_B":
					ds_list_delete(oBattlefield.eSquadP1b, ds_list_find_index(oBattlefield.eSquadP1b, id));
					break;
				case "e1_C":
					ds_list_delete(oBattlefield.eSquadP1c, ds_list_find_index(oBattlefield.eSquadP1c, id));
					break;
				case "e1_D":
					ds_list_delete(oBattlefield.eSquadP1d, ds_list_find_index(oBattlefield.eSquadP1d, id));
					break;
				case "e1_E":
					ds_list_delete(oBattlefield.eSquadP1e, ds_list_find_index(oBattlefield.eSquadP1e, id));
					break;
				case "e2_A":
					ds_list_delete(oBattlefield.eSquadP2a, ds_list_find_index(oBattlefield.eSquadP2a, id));
					break;
				case "e2_B":
					ds_list_delete(oBattlefield.eSquadP2b, ds_list_find_index(oBattlefield.eSquadP2b, id));
					break;
				case "e2_C":
					ds_list_delete(oBattlefield.eSquadP2c, ds_list_find_index(oBattlefield.eSquadP2c, id));
					break;
				case "e2_D":
					ds_list_delete(oBattlefield.eSquadP2d, ds_list_find_index(oBattlefield.eSquadP2d, id));
					break;
				case "e2_E":
					ds_list_delete(oBattlefield.eSquadP2e, ds_list_find_index(oBattlefield.eSquadP2e, id));
					break;
				case "e3_A":
					ds_list_delete(oBattlefield.eSquadP3a, ds_list_find_index(oBattlefield.eSquadP3a, id));
					break;
				case "e3_B":
					ds_list_delete(oBattlefield.eSquadP3b, ds_list_find_index(oBattlefield.eSquadP3b, id));
					break;
				case "e3_C":
					ds_list_delete(oBattlefield.eSquadP3c, ds_list_find_index(oBattlefield.eSquadP3c, id));
					break;
				case "e3_D":
					ds_list_delete(oBattlefield.eSquadP3d, ds_list_find_index(oBattlefield.eSquadP3d, id));
					break;
				case "e3_E":
					ds_list_delete(oBattlefield.eSquadP3e, ds_list_find_index(oBattlefield.eSquadP3e, id));
					break;
			}
			ds_list_delete(global.UnitList, ds_list_find_index(global.UnitList, id));
			ds_list_delete(global.FoeList, ds_list_find_index(global.FoeList, id));
			if uIsSquadLead 
			{ 
				with oBattlefield { HaltSquad(other.uSquad); }
			}
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
					ds_list_delete(oBattlefield.fSquadPTa,ds_list_find_index(oBattlefield.fSquadPTa, id));
					break;
				case "fT_B":
					ds_list_delete(oBattlefield.fSquadPTb,ds_list_find_index(oBattlefield.fSquadPTb, id));
					break;
				case "fT_C":
					ds_list_delete(oBattlefield.fSquadPTc,ds_list_find_index(oBattlefield.fSquadPTc, id));
					break;
			}
			ds_list_delete(global.UnitList, ds_list_find_index(global.UnitList, id));
			ds_list_delete(global.FriendList, ds_list_find_index(global.FriendList, id));
			if uIsSquadLead 
			{ 
				with oBattlefield { HaltSquad(other.uSquad); }
			}
			with instance_create_layer(x, y, "UnitFX", oExplosion)
			{
				eSprite = sExplosion02;
				eAngle = other.image_angle;
				image_speed = 1;
			}
			break;
		case F_LAV:
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
				case "fL_A":
					ds_list_delete(oBattlefield.fSquadPLa,ds_list_find_index(oBattlefield.fSquadPLa, id));
					break;
				case "fL_B":
					ds_list_delete(oBattlefield.fSquadPLb,ds_list_find_index(oBattlefield.fSquadPLb, id));
					break;
				case "fL_C":
					ds_list_delete(oBattlefield.fSquadPLc,ds_list_find_index(oBattlefield.fSquadPLc, id));
					break;
			}
			ds_list_delete(global.UnitList, ds_list_find_index(global.UnitList, id));
			ds_list_delete(global.FriendList, ds_list_find_index(global.FriendList, id));
			if uIsSquadLead 
			{ 
				with oBattlefield { HaltSquad(other.uSquad); }
			}
			with instance_create_layer(x, y, "UnitFX", oExplosion)
			{
				eSprite = sExplosion02;
				eAngle = other.image_angle;
				image_speed = 1;
			}
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
					ds_list_delete(oBattlefield.eSquadPTa,ds_list_find_index(oBattlefield.eSquadPTa, id));
					break;
				case "eT_B":
					ds_list_delete(oBattlefield.eSquadPTb,ds_list_find_index(oBattlefield.eSquadPTb, id));
					break;
				case "eT_C":
					ds_list_delete(oBattlefield.eSquadPTc,ds_list_find_index(oBattlefield.eSquadPTc, id));
					break;
			}
			ds_list_delete(global.UnitList, ds_list_find_index(global.UnitList, id));
			ds_list_delete(global.FoeList, ds_list_find_index(global.FoeList, id));
			if uIsSquadLead 
			{ 
				with oBattlefield { HaltSquad(other.uSquad); }
			}
			with instance_create_layer(x, y, "UnitFX", oExplosion)
			{
				eSprite = sExplosion02;
				eAngle = other.image_angle;
				image_speed = 1;
			}
			break;
		case E_LAV:
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
				case "eL_A":
					ds_list_delete(oBattlefield.eSquadPLa,ds_list_find_index(oBattlefield.eSquadPLa, id));
					break;
				case "eL_B":
					ds_list_delete(oBattlefield.eSquadPLb,ds_list_find_index(oBattlefield.eSquadPLb, id));
					break;
				case "eL_C":
					ds_list_delete(oBattlefield.eSquadPLc,ds_list_find_index(oBattlefield.eSquadPLc, id));
					break;
			}
			ds_list_delete(global.UnitList, ds_list_find_index(global.UnitList, id));
			ds_list_delete(global.FoeList, ds_list_find_index(global.FoeList, id));
			if uIsSquadLead 
			{ 
				with oBattlefield { HaltSquad(other.uSquad); }
			}
			with instance_create_layer(x, y, "UnitFX", oExplosion)
			{
				eSprite = sExplosion02;
				eAngle = other.image_angle;
				image_speed = 1;
			}
			break;
	}
	audio_emitter_free(uEmit);
}