/// @description Shoot cannon/MG Pop Smoke
if uCanShoot
{
	if instance_exists(uTarget)
	{
		if uShootMain
		{
			if uMainAmmo > 0
			{
				if point_distance(x, y, uTarget.x, uTarget.y) < uAttackRange
				{
					uMainAmmo -= 1;
					var bsx = x + lengthdir_x(60, turret_angle);
					var bsy = y + lengthdir_y(60, turret_angle);
					if Chance(uAccuracy)
					{
						SpawnBullet(B_CANNONSPD, B_CANNON, bsx, bsy, uTarget.x, uTarget.y);
						audio_play_sound_on(uEmit, aCannonShot01, false, 10);
					}
					else
					{
						var bxt = uTarget.x + choose(irandom_range(-128, -32), irandom_range(32, 128));
						var byt = uTarget.y + choose(irandom_range(-192, -32), irandom_range(32, 192));
						SpawnBullet(B_CANNONSPD, B_CANNON, bsx, bsy, bxt, byt);
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
					if uBurstCount < 2 { alarm[6] = room_speed * 4; }
						else { uBurstCount = 0; alarm[6] = room_speed * 12; }
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
		else if uShootMg
		{
			if point_distance(x, y, uTarget.x, uTarget.y) < uAttackRange
			{
				uMGAmmo -= 1;
				var bsx = (x + 12) + lengthdir_x(32, turret_angle);
				var bsy = y + lengthdir_y(32, turret_angle);
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
			uShootMain = false;
			uShootMg = false;
			uShooting = false;
		}
	}
}
else
{
	uTarget = -1;
	uShootMain = false;
	uShootMg = false;
	uShooting = false;
}