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
	if instance_exists(uFollowTarget)
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
	if uCanShoot { uCanShoot = false; }
	AdjustTransform(uType); 
}
else 
{
	if uReloading
	{
		if uCanShoot { uCanShoot = false; }
	}
	else
	{
		if !uCanShoot { uCanShoot = true; }
		if uShooting
		{
			if instance_exists(uTarget) { rotationTarget = point_direction(x, y, uTarget.x, uTarget.y); }
			if image_angle != rotationTarget
			{
				image_angle += angle_difference(rotationTarget, image_angle) * 0.2;
			}
		}
	}
}

if showDialog
{
	showDialog = false;
	dialogTime = room_speed * 0.4;
	alarm[3] = room_speed * 0.2;
	ds_list_add(global.DialogList, id);
	if isSelected 
	{
		ds_list_add(oGUI.selectedDialog, dText);
		oGUI.alarm[2] = 210;
	}
}