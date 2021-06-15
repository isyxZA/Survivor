/// @description Find a valid target to shoot at
/// @param type Type of unit
function GetTarget(type)
{
	var hasTarget = false;
	switch type
	{
		case F_RIFLEMAN:
			//Search for a target within the unit attack range
			var tList = ds_list_create();
			var tNum = collision_circle_list(x, y, uAttackRange, oFoeParent, false, true, tList, false);
			if (tNum > 0)
			{
			    for (var i = 0; i < tNum; ++i;)
			    {
					var tUnit = tList[| i];
					switch tUnit.uType
					{
						case E_RIFLEMAN:
							var pDir = point_direction(x, y, tUnit.x, tUnit.y)
							var xx = tUnit.x - lengthdir_x(oGrid.cellSize, pDir);
							var yy = tUnit.y - lengthdir_y(oGrid.cellSize, pDir);
							if !collision_line(x, y, xx, yy, oCollider, false, true)
							{
								uTarget = tUnit;
								uShootRifle = true;
								//alarm[6] = room_speed;
								uShooting = true;
								Stop(uType);
								hasTarget = true;
								break;
							}
							continue;
						case E_TANK:
							continue;
					}
			    }
			}
			ds_list_destroy(tList);
			return hasTarget;
		case E_RIFLEMAN:
			//Search for a target within the unit attack range
			var tList = ds_list_create();
			var tNum = collision_circle_list(x, y, uAttackRange, oFriendParent, false, true, tList, false);
			if (tNum > 0)
			{
			    for (var i = 0; i < tNum; ++i;)
			    {
					var tUnit = tList[| i];
					switch tUnit.uType
					{
						case PLAYER:
						case F_RIFLEMAN:
							var pDir = point_direction(x, y, tUnit.x, tUnit.y)
							var xx = tUnit.x - lengthdir_x(oGrid.cellSize, pDir);
							var yy = tUnit.y - lengthdir_y(oGrid.cellSize, pDir);
							if !collision_line(x, y, xx, yy, oCollider, false, true)
							{
								uTarget = tUnit;
								uShootRifle = true;
								//alarm[6] = room_speed;
								uShooting = true;
								Stop(uType);
								hasTarget = true;
								break;
							}
							continue;
						case F_TANK:
							continue;
						default:
							continue;
					}
				}
			}
			ds_list_destroy(tList);
			return hasTarget;
		case F_TANK:
			//Search for a target within the unit attack range
			var tList = ds_list_create();
			var tNum = collision_circle_list(x, y, uAttackRange, oFoeParent, false, true, tList, false);
			if (tNum > 0)
			{
			    for (var i = 0; i < tNum; ++i;)
			    {
					var tUnit = tList[| i];
					switch tUnit.uType
					{
						case E_RIFLEMAN:
							var pDir = point_direction(x, y, tUnit.x, tUnit.y)
							var xx = tUnit.x - lengthdir_x(oGrid.cellSize, pDir);
							var yy = tUnit.y - lengthdir_y(oGrid.cellSize, pDir);
							if !collision_line(x, y, xx, yy, oCollider, false, true)
							{
								uTarget = tUnit;
								uShootMg = true;
								//alarm[6] = room_speed;
								uShooting = true;
								Stop(uType);
								hasTarget = true;
								break;
							}
							continue;
						case E_TANK:
							var pDir = point_direction(x, y, tUnit.x, tUnit.y)
							var xx = tUnit.x - lengthdir_x(oGrid.cellSize * 3, pDir);
							var yy = tUnit.y - lengthdir_y(oGrid.cellSize * 3, pDir);
							if !collision_line(x, y, xx, yy, oCollider, false, true)
							{
								uTarget = tUnit;
								uShootMain = true;
								//alarm[6] = room_speed;
								uShooting = true;
								Stop(uType);
								hasTarget = true;
								break;
							}
							continue;
						default:
							continue;
					}
			    }
			}
			ds_list_destroy(tList);
			return hasTarget;
		case E_TANK:
			//Search for a target within the unit attack range
			var tList = ds_list_create();
			var tNum = collision_circle_list(x, y, uAttackRange, oFriendParent, false, true, tList, false);
			if (tNum > 0)
			{
			    for (var i = 0; i < tNum; ++i;)
			    {
					var tUnit = tList[| i];
					switch tUnit.uType
					{
						case PLAYER:
						case F_RIFLEMAN:
							var pDir = point_direction(x, y, tUnit.x, tUnit.y)
							var xx = tUnit.x - lengthdir_x(oGrid.cellSize, pDir);
							var yy = tUnit.y - lengthdir_y(oGrid.cellSize, pDir);
							if !collision_line(x, y, xx, yy, oCollider, false, true)
							{
								uTarget = tUnit;
								uShootMg = true;
								//alarm[6] = room_speed;
								uShooting = true;
								Stop(uType);
								hasTarget = true;
								break;
							}
							continue;
						case F_TANK:
							var pDir = point_direction(x, y, tUnit.x, tUnit.y)
							var xx = tUnit.x - lengthdir_x(oGrid.cellSize * 3, pDir);
							var yy = tUnit.y - lengthdir_y(oGrid.cellSize * 3, pDir);
							if !collision_line(x, y, xx, yy, oCollider, false, true)
							{
								uTarget = tUnit;
								uShootMain = true;
								//alarm[6] = room_speed;
								uShooting = true;
								Stop(uType);
								hasTarget = true;
								break;
							}
							continue;
						default:
							continue;
					}
			    }
			}
			ds_list_destroy(tList);
			return hasTarget;
		case PLAYER:
			return hasTarget;
	}
}