/// @description Shoot cannon/MG Pop Smoke
if uCanShoot
{
	if instance_exists(uTarget)
	{
		if uShoot30MM
		{
			if u30MMAmmo > 0
			{
				if point_distance(x, y, uTarget.x, uTarget.y) < uAttackRange
				{
					u30MMAmmo -= 1;
					var bsx = x + lengthdir_x(50, turret_angle);
					var bsy = y + lengthdir_y(50, turret_angle);
					if Chance(uAccuracy)
					{
						SpawnBullet(B_MGSPD, B_30MM, bsx, bsy, uTarget.x, uTarget.y);
						audio_play_sound_on(uEmit, aCannonShot01, false, 10);
					}
					else
					{
						var bxt = uTarget.x + choose(irandom_range(-96, -32), irandom_range(32, 96));
						var byt = uTarget.y + choose(irandom_range(-128, -32), irandom_range(32, 128));
						SpawnBullet(B_MGSPD, B_30MM, bsx, bsy, bxt, byt);
						audio_play_sound_on(uEmit, aCannonShot01, false, 10);
					}
					with instance_create_layer(bsx, bsy, "Units", oMuzzleFlash)
					{
						fIndex = sCannonFlash;
						fAngle = other.turret_angle;
						image_speed = 0.1;
						alarm[0] = 20;
					}
					++uBurstCount;
					if uBurstCount < 4 { alarm[6] = room_speed * 0.2; }
						else { uBurstCount = 0; alarm[6] = room_speed * 8; }
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
		else if uShootMG
		{
			if point_distance(x, y, uTarget.x, uTarget.y) < uAttackRange
			{
				uMGAmmo -= 1;
				var bsx = x + lengthdir_x(60, turret_angle);
				var bsy = y + lengthdir_y(60, turret_angle);
				if Chance(uAccuracy)
				{
					SpawnBullet(B_MGSPD, B_MG, bsx, bsy, uTarget.x, uTarget.y);
				}
				else
				{
					var bxt = uTarget.x + choose(irandom_range(-128, -32), irandom_range(32, 128));
					var byt = uTarget.y + choose(irandom_range(-192, -32), irandom_range(32, 192));
					SpawnBullet(B_MGSPD, B_MG, bsx, bsy, bxt, byt);
				}
				with instance_create_layer(bsx, bsy, "Units", oMuzzleFlash)
				{
					fIndex = sRifleFlash;
					fAngle = other.turret_angle;
					alarm[0] = 8;
				}
				++uBurstCount;
				if uBurstCount < 5 { alarm[6] = room_speed * 0.1; }
					else { uBurstCount = 0; alarm[6] = room_speed * 4; }
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
			uTarget = -1;
			uShoot30MM = false;
			uShootMG = false;
			uShooting = false;
		}
	}
}
else
{
	uTarget = -1;
	uShoot30MM = false;
	uShootMG = false;
	uShooting = false;
}