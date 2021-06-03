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
	ds_list_add(oGUI.selectedDialog, dText);
	oGUI.alarm[2] = 200;
}