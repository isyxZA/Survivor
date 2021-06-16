/// @description Check if an area of cells is occupied or not
/// @param type Type of unit
/// @param xPos X coord
/// @param yPos Y coord
function GetCellArea(type, xPos, yPos)
{
	switch type
	{
		case F_TANK:
		case E_TANK:
		case F_LAV:
		case E_LAV:
			var cX = (xPos - oGrid.x) div oGrid.cellSize;
			var cY = (yPos - oGrid.y) div oGrid.cellSize;
			//Top Center
			if mp_grid_get_cell(global.NavGrid, cX, cY - 1) == -1
			{
				return false;
			}
			//Center
			if mp_grid_get_cell(global.NavGrid, cX, cY) == -1
			{
				return false;
			}
			//Bottom Center
			if mp_grid_get_cell(global.NavGrid, cX, cY + 1) == -1
			{
				return false;
			}
			//Top Left
			if mp_grid_get_cell(global.NavGrid, cX - 1, cY - 1) == -1
			{
				return false;
			}
			//Center Left
			if mp_grid_get_cell(global.NavGrid, cX - 1, cY) == -1
			{
				return false;
			}
			//Bottom Left
			if mp_grid_get_cell(global.NavGrid, cX - 1, cY + 1) == -1
			{
				return false;
			}
			//Top Right
			if mp_grid_get_cell(global.NavGrid, cX, cY - 1) == -1
			{
				return false;
			}
			//Center Right
			if mp_grid_get_cell(global.NavGrid, cX + 1, cY) == -1
			{
				return false;
			}
			//Bottom Right
			if mp_grid_get_cell(global.NavGrid, cX + 1, cY + 1) == -1
			{
				return false;
			}
			
			return true;
	}
}