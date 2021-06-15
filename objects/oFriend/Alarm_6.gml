/// @description Shoot/Throw Grenade
if uCanShoot
{
	if instance_exists(uTarget)
	{
		if uShootRifle
		{
			if uRifleAmmo > 0
			{
				if point_distance(x, y, uTarget.x, uTarget.y) < uAttackRange
				{
					uRifleAmmo -= 1;
					var bsx = x + lengthdir_x(20, image_angle);
					var bsy = y + lengthdir_y(20, image_angle);
					if Chance(uAccuracy)
					{
						SpawnBullet(B_RIFLESPD, B_RIFLE, bsx, bsy, uTarget.x, uTarget.y);
						var bs = choose(aRifleShot01, aRifleShot02, aRifleShot03);
						audio_play_sound_on(uEmit, bs, false, 10);
					}
					else
					{
						var bxt = uTarget.x + choose(irandom_range(-128, -32), irandom_range(32, 128));
						var byt = uTarget.y + choose(irandom_range(-128, -32), irandom_range(32, 128));
						SpawnBullet(B_RIFLESPD, B_RIFLE, bsx, bsy, bxt, byt);
						var bs = choose(aRifleShot01, aRifleShot02, aRifleShot03);
						audio_play_sound_on(uEmit, bs, false, 10);
					}
					with instance_create_layer(bsx, bsy, "Units", oMuzzleFlash)
					{
						fIndex = sRifleFlash;
						fAngle = other.image_angle;
						alarm[0] = 8;
					}
					++uBurstCount;
					if uBurstCount < 3 { alarm[6] = room_speed * 0.2; }
						else { uBurstCount = 0; alarm[6] = room_speed * 2; }
				}
				else
				{
					//Display a dialog comment here to alert the player\\
					uShooting = false;
				}
			}
			else
			{
				//Check if the unit has ammo in its inventory
				//If it does then reload
				//Display reload dialog
				uShooting = false;
				uReloading = true;
			}
		}
		else if uThrowGrenade
		{
			if point_distance(x, y, uTarget.x, uTarget.y) < (uAttackRange * 0.5)
			{
				uGrenadeAmmo -= 1;
				var bsx = x + lengthdir_x(20, image_angle);
				var bsy = y + lengthdir_y(20, image_angle);
				var btr = point_direction(x, y, uTarget.x, uTarget.y);
				var btx = x + lengthdir_x(uAttackRange * 0.5, btr);
				var bty = y + lengthdir_y(uAttackRange * 0.5, btr);
				SpawnBullet(B_GRENADESPD, B_GRENADE, bsx, bsy, btx, bty);
			}
		}
	}
	else
	{
		//There is no target so attempt to find one
		if GetTarget(uType)
		{
			//Found a target...attempt to shoot at the target
			alarm[6] = room_speed;
		}
		else
		{
			//No valid target available...reset attack
			uTarget = -1;
			uShootRifle = false;
			uThrowGrenade = false;
			uShooting = false;
		}
	}
}
else
{
	//Not allowed to shoot...reset attack
	uTarget = -1;
	uShootRifle = false;
	uThrowGrenade = false;
	uShooting = false;
}
