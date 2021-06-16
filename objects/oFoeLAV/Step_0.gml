//Pathfinding for squad leaders
if findGoal
{
	findGoal = false;
	GetGoal(uSquad);
	
	if GetWaypoint(uType, goalX, goalY) 
	{
		Move(uType, waypointX, waypointY); 
	}
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
	if uCanShoot 
	{ 
		uCanShoot = false;
		uShootMain = false;
		uShootMg = false;
		uShooting = false;
		uTarget = -1;
		alarm[6] = -1;
	}
	if turret_angle != image_angle
	{
		turret_angle += angle_difference(image_angle, turret_angle) * 0.02;
	}
	AdjustTransform(uType); 
}
else 
{
	if uReloading
	{
		if uCanShoot 
		{ 
			uCanShoot = false;
			uShootMain = false;
			uShootMg = false;
			uShooting = false;
			uTarget = -1;
			alarm[6] = -1;
		}
	}
	else
	{
		if !uCanShoot { uCanShoot = true; }
		if uShooting
		{
			if instance_exists(uTarget) { rotationTarget = point_direction(x, y, uTarget.x, uTarget.y); }
			if turret_angle != rotationTarget
			{
				turret_angle += angle_difference(rotationTarget, turret_angle) * 0.02;
			}
		}
	}
}