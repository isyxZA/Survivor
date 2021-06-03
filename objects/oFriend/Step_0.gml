//Pathfinding for squad leaders
if findGoal
{
	findGoal = false;
	GetGoal(uSquad);
	
	if GetWaypoint(uType, goalX, goalY) { Move(uType, waypointX, waypointY); }
}

//Pathfinding when following another unit
if uFollow	
{
	if uFollowTarget != noone
	{
		if !uFollowing
		{
			//Find a path to follow unit
			if GetWaypoint(uType, uFollowTarget.x + xAdj, uFollowTarget.y + yAdj)
			{
				uFollowing = true;
				alarm[4] = room_speed + uFormationPosition;

				Move(uType, waypointX, waypointY);
			}
		}
	}
	else
	{
		uFollow = false;
	}
}

if moving
{
	AdjustTransform(uType); 
}

if canTalk
{
	canTalk = false;
	alarm[2] = uTalkRate * choose(2, 3, 4);
	var ci = collision_circle(x, y, oGrid.cellSize * 4, oCollider, false, true);
	if ci != noone
	{
		//Set dialog according to unit type that we just collided with
		switch ci.uType
		{
			case PLAYER:
				GetDialog(uType, true, false, true);
				break;
			case F_RIFLEMAN:
				GetDialog(uType, true, false, true);
				break;
			case E_RIFLEMAN:
				GetDialog(uType, true, false, false);
				break;
			default:
				break;
		}
	}
}

if getDialog
{
	getDialog = false;
	GetDialog(uType, true, false, true);
}

if showDialog
{
	showDialog = false;
	dialogTime = room_speed * 0.2;
	alarm[3] = room_speed * 0.2;
	ds_list_add(global.DialogList, id);
}