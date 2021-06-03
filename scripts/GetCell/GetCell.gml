/// @description Check if a cell is occupied or not
/// @param xPos x coord
/// @param yPos y coord
function GetCell(xPos, yPos)
{
	if mp_grid_get_cell(global.NavGrid, (xPos - oGrid.x) div oGrid.cellSize, (yPos - oGrid.y) div oGrid.cellSize) != -1
	{
		return true;
	    //mp_grid_add_cell(global.NavGrid, xPos, yPos);
	}
	else
	{
		return false;
	}
}