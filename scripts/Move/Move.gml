/// @description Move the unit toward a goal
/// @param type Type of unit
/// @param xGoal Horizontal coordinate
/// @param yGoal Vertical coordinate
function Move(type, xGoal, yGoal)
{
	switch type
	{
		case PLAYER://Player
		case F_RIFLEMAN://Friend
		case E_RIFLEMAN://Foe
			mp_grid_clear_cell(global.NavGrid, cellX, cellY);
		
			if mp_grid_path(global.NavGrid, path, x, y, xGoal, yGoal, true)
			{
				cellX = (xGoal - oGrid.x) div oGrid.cellSize;
				cellY = (yGoal - oGrid.y) div oGrid.cellSize;
				mp_grid_add_cell(global.NavGrid, cellX, cellY);
				path_start(path, pSpeed, 0, 0);
				if !moving 
				{ 
					moving = true; 
					xPrev = x;
					yPrev = y;
			
				}
				if alarm[1] > 0 { alarm[1] = -1; }
				alarm[1] = room_speed * 0.1;
				rotationTarget = point_direction(x, y, path_get_point_x(path, 1), path_get_point_y(path, 1));
			}
			else
			{
				mp_grid_add_cell(global.NavGrid, cellX, cellY);
			}
			break;
		case F_TANK:
		case E_TANK:
		case F_LAV:
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
		
			if mp_grid_path(global.NavGrid, path, x, y, xGoal, yGoal, true)
			{
				cellX = (xGoal - oGrid.x) div oGrid.cellSize;
				cellY = (yGoal - oGrid.y) div oGrid.cellSize;
				mp_grid_add_cell(global.NavGrid, cellX-1, cellY-1);
				mp_grid_add_cell(global.NavGrid, cellX, cellY-1);
				mp_grid_add_cell(global.NavGrid, cellX+1, cellY-1);
				mp_grid_add_cell(global.NavGrid, cellX-1, cellY);
				mp_grid_add_cell(global.NavGrid, cellX, cellY);
				mp_grid_add_cell(global.NavGrid, cellX+1, cellY);
				mp_grid_add_cell(global.NavGrid, cellX-1, cellY+1);
				mp_grid_add_cell(global.NavGrid, cellX, cellY+1);
				mp_grid_add_cell(global.NavGrid, cellX+1, cellY+1);
				path_start(path, pSpeed, 0, 0);
				if !moving 
				{ 
					moving = true; 
					xPrev = x;
					yPrev = y;
			
				}
				if alarm[1] > 0 { alarm[1] = -1; }
				alarm[1] = room_speed * 0.1;
				rotationTarget = point_direction(x, y, path_get_point_x(path, 1), path_get_point_y(path, 1));
			}
			else
			{
				mp_grid_add_cell(global.NavGrid, cellX-1, cellY-1);
				mp_grid_add_cell(global.NavGrid, cellX, cellY-1);
				mp_grid_add_cell(global.NavGrid, cellX+1, cellY-1);
				mp_grid_add_cell(global.NavGrid, cellX-1, cellY);
				mp_grid_add_cell(global.NavGrid, cellX, cellY);
				mp_grid_add_cell(global.NavGrid, cellX+1, cellY);
				mp_grid_add_cell(global.NavGrid, cellX-1, cellY+1);
				mp_grid_add_cell(global.NavGrid, cellX, cellY+1);
				mp_grid_add_cell(global.NavGrid, cellX+1, cellY+1);
			}
			break;
	}
}