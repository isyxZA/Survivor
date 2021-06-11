/// @description Check if a cell is occupied or not
/// @param xPos x coord
/// @param yPos y coord
function GetCell(xPos, yPos)
{
	var cX = (xPos - oGrid.x) div oGrid.cellSize;
	var cY = (yPos - oGrid.y) div oGrid.cellSize;
	if mp_grid_get_cell(global.NavGrid, cX, cY) != -1
	{
		return true;
	}
	else
	{
		return false;
	}
}