/// @description Initialise movement variables
/// @param type Type of unit being initialised
function InitMovement(type)
{
	xPrev = x;
	yPrev = y;
	xAdj = 0;
	yAdj = 0;

	cellX = x;
	cellY = y;
	moving = false;
	path = path_add();
			
	findGoal = false;
	goalX = x;
	goalY = y;
	waypointX = x;
	waypointY = y;
	
	uPlatoon = 0;
	uSquad = "";
	uSquadLead = noone;
	uIsSquadLead = false;
			
	uFollow = false;
	uFollowTarget = noone;
	uFollowing = false;
			
	uInFormation = true;
	uFormationPosition = -1;
	
	switch type 
	{
		case PLAYER://Player
			image_angle = 90;
			rotationTarget = 90;
			pSpeed = 0;
			tSpeed = 1.5;
			break;
		case F_RIFLEMAN://Friend
			image_angle = 90;
			rotationTarget = 90;
			pSpeed = 0;
			tSpeed = 1.5;
			break;
		case E_RIFLEMAN://Foe
			image_angle = 270;
			rotationTarget = 270;
			pSpeed = 0;
			tSpeed = 1.5;
			break;
	}
}