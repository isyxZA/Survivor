/// @description Find a valid waypoint
/// @param type Type of unit
/// @param goalX Horizontal coordinate to try and reach
/// @param goalY Vertical coordinate to try and reach
function GetWaypoint(type, goalX, goalY)
{
	switch type 
	{
		case PLAYER:
			if uIsSquadLead
			{
				if GetCell(goalX, goalY)
				{
					waypointX = goalX;
					waypointY = goalY;
					return true;
				}
				else
				{
					waypointX = x;
					waypointY = y;
					return false;
				}
			}
			else
			{
				var ax = goalX - (lengthdir_x(oGrid.cellSize, uFollowTarget.image_angle));
				var ay = goalY - (lengthdir_y(oGrid.cellSize, uFollowTarget.image_angle));
				if GetCell(ax, ay)
				{
					waypointX = ax;
					waypointY = ay;
					return true;
				}
				else
				{
					waypointX = x;
					waypointY = y;
					return false;
				}
			}
		case F_RIFLEMAN://Friend
		case E_RIFLEMAN://Foe
			if GetCell(goalX, goalY)
			{
				waypointX = goalX;
				waypointY = goalY;
				return true;
			}
			else
			{
				waypointX = x;
				waypointY = y;
				return false;
			}
		case F_TANK://Friend Tank
		case E_TANK://Foe Tank
			if GetCellArea(uType, goalX, goalY)
			{
				waypointX = goalX;
				waypointY = goalY;
				return true;
			}
			else
			{
				waypointX = x;
				waypointY = y;
				return false;
			}
		default:
			return false;
	}
}