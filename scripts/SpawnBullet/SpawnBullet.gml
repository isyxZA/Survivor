/// @description Spawn a bullet
/// @param speed Bullet travel speed
/// @param damage Bullet base damage
/// @param startX Spawn X
/// @param startY Spawn Y
/// @param targetX Path end X
/// @param targetY Pathend Y
function SpawnBullet(speed, damage, startX, startY, targetX, targetY)
{
	var sb = instance_create_layer(startX, startY, "Units", oBullet);
	sb.bSpeed = speed;
	sb.bTargetX = targetX;
	sb.bTargetY = targetY;
	sb.bDamage = damage;
}