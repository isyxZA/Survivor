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
							if !collision_line(x, y, tUnit.x, tUnit.y, oFriendParent, false, true)
							{
								uTarget = tUnit;
								uShootRifle = true;
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
							if !collision_line(x, y, tUnit.x, tUnit.y, oFoeParent, false, true)
							{
								uTarget = tUnit;
								uShootRifle = true;
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
							if !collision_line(x, y, tUnit.x, tUnit.y, oFriendParent, false, true)
							{
								uTarget = tUnit;
								uShootMG = true;
								uShooting = true;
								Stop(uType);
								hasTarget = true;
								break;
							}
							continue;
						case E_TANK:
							if !collision_line(x, y, tUnit.x, tUnit.y, oFriendParent, false, true)
							{
								uTarget = tUnit;
								uShootMain = true;
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
							if !collision_line(x, y, tUnit.x, tUnit.y, oFoeParent, false, true)
							{
								uTarget = tUnit;
								uShootMG = true;
								uShooting = true;
								Stop(uType);
								hasTarget = true;
								break;
							}
							continue;
						case F_TANK:
							if !collision_line(x, y, tUnit.x, tUnit.y, oFoeParent, false, true)
							{
								uTarget = tUnit;
								uShootMain = true;
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
		case F_LAV:
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
							if !collision_line(x, y, tUnit.x, tUnit.y, oFriendParent, false, true)
							{
								uTarget = tUnit;
								uShootMG = true;
								uShooting = true;
								Stop(uType);
								hasTarget = true;
								break;
							}
							continue;
						case E_TANK:
							if !collision_line(x, y, tUnit.x, tUnit.y, oFriendParent, false, true)
							{
								uTarget = tUnit;
								uShoot30MM = true;
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
		case E_LAV:
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
							if !collision_line(x, y, tUnit.x, tUnit.y, oFoeParent, false, true)
							{
								uTarget = tUnit;
								uShootMG = true;
								uShooting = true;
								Stop(uType);
								hasTarget = true;
								break;
							}
							continue;
						case F_TANK:
							if !collision_line(x, y, tUnit.x, tUnit.y, oFoeParent, false, true)
							{
								uTarget = tUnit;
								uShoot30MM = true;
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