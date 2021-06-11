/// @description Spawn a bullet
/// @param type Type of unit
/// @param speed Bullet travel speed
/// @param startX Spawn X
/// @param startY Spawn Y
/// @param targetX Path end X
/// @param targetY Pathend Y
function SpawnBullet(type, speed, startX, startY, targetX, targetY)
{
	switch type
	{
		case PLAYER:
		case F_RIFLEMAN:
		case E_RIFLEMAN:
			switch uBulletType
			{
				case "RIFLE":
					var sb = instance_create_layer(startX, startY, "Units", oBullet);
					sb.bSpeed = speed;
					sb.bTargetX = targetX;
					sb.bTargetY = targetY;
					sb.bDamage = B_RIFLE;
					break;
				case "GRENADE":
					var sb = instance_create_layer(startX, startY, "Units", oBullet);
					sb.bSpeed = speed;
					sb.bTargetX = targetX;
					sb.bTargetY = targetY;
					sb.bDamage = B_GRENADE;
					break;
			}
			break;
		case F_TANK:
		case E_TANK:
			switch uBulletType
			{
				case "MAIN":
					break;
				case "MG":
					break;
			}
			break;
	}
}