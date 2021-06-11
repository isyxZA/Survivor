/// @description Fire rifle
if uCanShoot && instance_exists(uTarget)
{
	if uShootRifle
	{
		if uRifleAmmo > 0
		{
			if point_distance(x, y, uTarget.x, uTarget.y) < uAttackRange
			{
				uBulletType = "RIFLE";
				uRifleAmmo -= 1;
				var bsx = lengthdir_x(20, image_angle);
				var bsy = lengthdir_y(20, image_angle);
				SpawnBullet(uType, B_RIFLESPD, bsx, bsy, uTarget.x, uTarget.y);
				++uBurstCount;
				if uBurstCount < 3 { alarm[6] = room_speed; }
					else { uBurstCount = 0; alarm[6] = room_speed * 10; }
			}
			else
			{
				//Display a dialog comment here to alert the player\\
			}
		}
		else
		{
			//Check if the unit has ammo in its inventory
			//If it does then reload
			//Display reload dialog
		}
	}
	else if uThrowGrenade
	{
		if point_distance(x, y, uTarget.x, uTarget.y) < (uAttackRange * 0.5)
		{
			uBulletType = "GRENADE";
			uGrenadeAmmo -= 1;
			var bsx = lengthdir_x(20, image_angle);
			var bsy = lengthdir_y(20, image_angle);
			var btr = point_direction(x, y, uTarget.x, uTarget.y);
			var btx = lengthdir_x(uAttackRange * 0.5, btr);
			var bty = lengthdir_y(uAttackRange * 0.5, btr);
			SpawnBullet(uType, B_GRENADESPD, bsx, bsy, btx, bty);
		}
	}
}