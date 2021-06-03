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
				switch other.uPlatoon
				{
					case 1:
						up = fPlatoon1;
						switch other.uSquad
						{
							case "f1_A":
								us = 0;
								break;
							case "f1_B":
								us = 1;
								break;
							case "f1_C":
								us = 2;
								break;
							case "f1_D":
								us = 3;
								break;
							case "f1_E":
								us = 4;
								break;
						}
						break;
					case 2:
						up = fPlatoon2;
						switch other.uSquad
						{
							case "f2_A":
								us = 0;
								break;
							case "f2_B":
								us = 1;
								break;
							case "f2_C":
								us = 2;
								break;
							case "f2_D":
								us = 3;
								break;
							case "f2_E":
								us = 4;
								break;
						}
						break;
					case 3:
						up = fPlatoon3;
						switch other.uSquad
						{
							case "f3_A":
								us = 0;
								break;
							case "f3_B":
								us = 1;
								break;
							case "f3_C":
								us = 2;
								break;
							case "f3_D":
								us = 3;
								break;
							case "f3_E":
								us = 4;
								break;
						}
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
					switch other.uPlatoon
					{
						case 1:
							up = fPlatoon1;
							switch other.uSquad
							{
								case "f1_A":
									us = 0;
									break;
								case "f1_B":
									us = 1;
									break;
								case "f1_C":
									us = 2;
									break;
								case "f1_D":
									us = 3;
									break;
								case "f1_E":
									us = 4;
									break;
							}
							break;
						case 2:
							up = fPlatoon2;
							switch other.uSquad
							{
								case "f2_A":
									us = 0;
									break;
								case "f2_B":
									us = 1;
									break;
								case "f2_C":
									us = 2;
									break;
								case "f2_D":
									us = 3;
									break;
								case "f2_E":
									us = 4;
									break;
							}
							break;
						case 3:
							up = fPlatoon3;
							switch other.uSquad
							{
								case "f3_A":
									us = 0;
									break;
								case "f3_B":
									us = 1;
									break;
								case "f3_C":
									us = 2;
									break;
								case "f3_D":
									us = 3;
									break;
								case "f3_E":
									us = 4;
									break;
							}
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
	AdjustTransform(uType); 
}

if canTalk 
{
	//Greet all nearby units
	if keyboard_check_pressed(ord("T")) 
	{
		GetDialog(uType, true, false, true);
	}
}

if showDialog
{
	showDialog = false;
	dialogTime = room_speed * 0.2;
	alarm[3] = room_speed * 0.2;
	ds_list_add(global.DialogList, id);
}