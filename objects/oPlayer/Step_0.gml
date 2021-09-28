//Pathfinding for squad leaders
if findGoal
{
	findGoal = false;
	GetGoal(uSquad);
	
	if GetWaypoint(uType, goalX, goalY) 
	{ 
		Move(uType, waypointX, waypointY); 
		if uIsSquadLead && uSquadFollow
		{ 
			with oBattlefield
			{
				var us = "";
				switch other.uSquad
				{
					case "f1_A":
						us = fSquadP1a;
						break;
					case "f1_B":
						us = fSquadP1b;
						break;
					case "f1_C":
						us = fSquadP1c;
						break;
					case "f1_D":
						us = fSquadP1d;
						break;
					case "f1_E":
						us = fSquadP1e;
						break;
					case "f2_A":
						us = fSquadP2a;
						break;
					case "f2_B":
						us = fSquadP2b;
						break;
					case "f2_C":
						us = fSquadP2c;
						break;
					case "f2_D":
						us = fSquadP2d;
						break;
					case "f2_E":
						us = fSquadP2e;
						break;
					case "f3_A":
						us = fSquadP3a;
						break;
					case "f3_B":
						us = fSquadP3b;
						break;
					case "f3_C":
						us = fSquadP3c;
						break;
					case "f3_D":
						us = fSquadP3d;
						break;
					case "f3_E":
						us = fSquadP3e;
						break;
				}
				if us != "" { MoveSquad(us); }
			}
		}
	}
}

if mouse_check_button_pressed(global.RMOUSE)
{
	//If we aren't touching UI or another object then try and move
	if oControl.canSelect && !place_meeting(mouse_x, mouse_y, oCollider)
	{
		//Regain player control if currently set to follow
		if uFollow { uFollow = false; uFollowTarget = noone; uFollowing = false; alarm[4] = -1; }
		//If the target cell is clear
		if GetCell(mouse_x, mouse_y) 
		{ 
			//Move the player
			Move(uType, mouse_x, mouse_y); 
			//When the player is also a squad lead
			//Make the squad follow if enabled
			if uIsSquadLead && uSquadFollow
			{ 
				with oBattlefield
				{
					var us = "";
					switch other.uSquad
					{
						case "f1_A":
							us = fSquadP1a;
							break;
						case "f1_B":
							us = fSquadP1b;
							break;
						case "f1_C":
							us = fSquadP1c;
							break;
						case "f1_D":
							us = fSquadP1d;
							break;
						case "f1_E":
							us = fSquadP1e;
							break;
						case "f2_A":
							us = fSquadP2a;
							break;
						case "f2_B":
							us = fSquadP2b;
							break;
						case "f2_C":
							us = fSquadP2c;
							break;
						case "f2_D":
							us = fSquadP2d;
							break;
						case "f2_E":
							us = fSquadP2e;
							break;
						case "f3_A":
							us = fSquadP3a;
							break;
						case "f3_B":
							us = fSquadP3b;
							break;
						case "f3_C":
							us = fSquadP3c;
							break;
						case "f3_D":
							us = fSquadP3d;
							break;
						case "f3_E":
							us = fSquadP3e;
							break;
					}
					if us != "" { MoveSquad(us); }
				}
			}
		}
	}
}

if uFollow	
{
	if instance_exists(uFollowTarget) // != noone
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
	ds_list_add(oGUI.playerDialog, dText);
	oGUI.alarm[1] = 210;
}