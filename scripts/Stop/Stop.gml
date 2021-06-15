/// @description Stop a unit from moving
/// @param type Type of unit
function Stop(type)
{
	switch type
	{
		case PLAYER:
		case F_RIFLEMAN:
		case E_RIFLEMAN:
			if uIsSquadLead { alarm[5] = room_speed; }
			moving = false; 
			pSpeed = 0;
			path_speed = pSpeed;
			path_clear_points(path);
			mp_grid_clear_cell(global.NavGrid, cellX, cellY);
			cellX = (x - oGrid.x) div oGrid.cellSize;
			cellY = (y - oGrid.y) div oGrid.cellSize;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
			break;
		case F_TANK:
		case E_TANK:
			if uIsSquadLead { alarm[5] = room_speed; }
			moving = false; 
			pSpeed = 0;
			path_speed = pSpeed;
			path_clear_points(path);
			mp_grid_clear_cell(global.NavGrid, cellX-1, cellY-1);
			mp_grid_clear_cell(global.NavGrid, cellX, cellY-1);
			mp_grid_clear_cell(global.NavGrid, cellX+1, cellY-1);
			mp_grid_clear_cell(global.NavGrid, cellX-1, cellY);
			mp_grid_clear_cell(global.NavGrid, cellX, cellY);
			mp_grid_clear_cell(global.NavGrid, cellX+1, cellY);
			mp_grid_clear_cell(global.NavGrid, cellX-1, cellY+1);
			mp_grid_clear_cell(global.NavGrid, cellX, cellY+1);
			mp_grid_clear_cell(global.NavGrid, cellX+1, cellY+1);
			cellX = (x - oGrid.x) div oGrid.cellSize;
			cellY = (y - oGrid.y) div oGrid.cellSize;
			mp_grid_add_cell(global.NavGrid, cellX-1, cellY-1);
			mp_grid_add_cell(global.NavGrid, cellX, cellY-1);
			mp_grid_add_cell(global.NavGrid, cellX+1, cellY-1);
			mp_grid_add_cell(global.NavGrid, cellX-1, cellY);
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
			mp_grid_add_cell(global.NavGrid, cellX+1, cellY);
			mp_grid_add_cell(global.NavGrid, cellX-1, cellY+1);
			mp_grid_add_cell(global.NavGrid, cellX, cellY+1);
			mp_grid_add_cell(global.NavGrid, cellX+1, cellY+1);
			break;
	}
}