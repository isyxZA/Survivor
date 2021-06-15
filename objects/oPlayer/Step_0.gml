//Pathfinding for squad leaders
if findGoal
{
	findGoal = false;
	GetGoal(uSquad);
	
	if GetWaypoint(uType, goalX, goalY) 
	{ 
		Move(uType, waypointX, waypointY); 
		if uIsSquadLead 
		{ 
			with oBattlefield
			{
				var up;
				var us;
				switch other.uSquad
				{
					case "f1_A":
						up = fPlatoon1;
						us = 0;
						break;
					case "f1_B":
						up = fPlatoon1;
						us = 1;
						break;
					case "f1_C":
						up = fPlatoon1;
						us = 2;
						break;
					case "f1_D":
						up = fPlatoon1;
						us = 3;
						break;
					case "f1_E":
						up = fPlatoon1;
						us = 4;
						break;
					case "f2_A":
						up = fPlatoon2;
						us = 0;
						break;
					case "f2_B":
						up = fPlatoon2;
						us = 1;
						break;
					case "f2_C":
						up = fPlatoon2;
						us = 2;
						break;
					case "f2_D":
						up = fPlatoon2;
						us = 3;
						break;
					case "f2_E":
						up = fPlatoon2;
						us = 4;
						break;
					case "f3_A":
						up = fPlatoon3;
						us = 0;
						break;
					case "f3_B":
						up = fPlatoon3;
						us = 1;
						break;
					case "f3_C":
						up = fPlatoon3;
						us = 2;
						break;
					case "f3_D":
						up = fPlatoon3;
						us = 3;
						break;
					case "f3_E":
						up = fPlatoon3;
						us = 4;
						break;
				}
				MoveSquad(up, us);
			}
		}
	}
}

if mouse_check_button_pressed(global.RMOUSE)
{
	//If we aren't touching UI or another object then try and move
	if oControl.canSelect && !place_meeting(mouse_x, mouse_y, oCollider)
	{
		if uFollow { uFollow = false; uFollowTarget = noone; uFollowing = false; alarm[4] = -1; }
		if GetCell(mouse_x, mouse_y) 
		{ 
			Move(uType, mouse_x, mouse_y); 
			if uIsSquadLead 
			{ 
				with oBattlefield
				{
					var up;
					var us;
					switch other.uSquad
					{
						case "f1_A":
							up = fPlatoon1;
							us = 0;
							break;
						case "f1_B":
							up = fPlatoon1;
							us = 1;
							break;
						case "f1_C":
							up = fPlatoon1;
							us = 2;
							break;
						case "f1_D":
							up = fPlatoon1;
							us = 3;
							break;
						case "f1_E":
							up = fPlatoon1;
							us = 4;
							break;
						case "f2_A":
							up = fPlatoon2;
							us = 0;
							break;
						case "f2_B":
							up = fPlatoon2;
							us = 1;
							break;
						case "f2_C":
							up = fPlatoon2;
							us = 2;
							break;
						case "f2_D":
							up = fPlatoon2;
							us = 3;
							break;
						case "f2_E":
							up = fPlatoon2;
							us = 4;
							break;
						case "f3_A":
							up = fPlatoon3;
							us = 0;
							break;
						case "f3_B":
							up = fPlatoon3;
							us = 1;
							break;
						case "f3_C":
							up = fPlatoon3;
							us = 2;
							break;
						case "f3_D":
							up = fPlatoon3;
							us = 3;
							break;
						case "f3_E":
							up = fPlatoon3;
							us = 4;
							break;
					}
					MoveSquad(up, us);
				}
			}
		}
	}
}

if uFollow	
{
	if uFollowTarget != noone
	{
		if !uFollowing
		{
			//Find a path to follow unit
			if GetWaypoint(uType, uFollowTarget.x, uFollowTarget.y)
			{
				uFollowing = true;
				alarm[4] = room_speed;
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
		uShootRifle = false;
		uThrowGrenade = false;
		uShooting = false;
		uTarget = -1;
		alarm[6] = -1;
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
			uShootRifle = false;
			uThrowGrenade = false;
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
	dialogTime = room_speed * 0.2;
	alarm[3] = room_speed * 0.2;
	ds_list_add(global.DialogList, id);
	ds_list_add(oGUI.playerDialog, dText);
	oGUI.alarm[1] = 200;
}