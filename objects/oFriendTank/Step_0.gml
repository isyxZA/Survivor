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
	if turret_angle != image_angle
	{
		turret_angle += angle_difference(image_angle, turret_angle) * 0.02;
	}
	AdjustTransform(uType); 
}