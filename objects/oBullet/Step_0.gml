if bStartPath
{
	bStartPath = false;
    path_clear_points(bPath);
    path_add_point(bPath, x, y, bSpeed);
    path_add_point(bPath, bTargetX, bTargetY, bSpeed);
    path_set_closed(bPath, false);
    path_start(bPath, bSpeed, path_action_stop, 0);
    bMoving = true;
	alarm[1] = room_speed;
    image_angle = point_direction(x, y, bTargetX, bTargetY);
}

if bMoving
{
	if path_position == 1 {
        bMoving = false;
        path_speed = 0;
		alarm[1] = -1;
		audio_emitter_position(bEmit, x, y, 0);
		var co = instance_place(x, y, oCollider);
		if co != noone
		{
			switch co.uType
			{
				case PLAYER:
				case F_RIFLEMAN:
				case E_RIFLEMAN:
					switch bDamage
					{
						case B_RIFLE:
							//Spawn a particle effect here
							bDamageRatio = 1;
							alarm[0] = 1;
							break;
						case B_CANNON:
							bDamageRatio = 1;
							var st = audio_sound_length(aCannonExplode01);
							alarm[0] = st;
							audio_play_sound_on(bEmit, aCannonExplode01, false, 10);
							with instance_create_layer(x, y, "UnitFX", oExplosion)
							{
								eSprite = sExplosion01;
								eAngle = other.image_angle;
								image_speed = 1;
							}
							break;
						case B_MG:
							bDamageRatio = 1;
							alarm[0] = 1;
							break;
						case B_GRENADE:
							bDamageRatio = 1;
							alarm[0] = 1;
							break;
					}
					break;
				case F_TANK:
				case E_TANK:
					switch bDamage
					{
						case B_RIFLE:
							bDamageRatio = 0;
							alarm[0] = 1;
							break;
						case B_CANNON:
							bDamageRatio = 0;
							var st = audio_sound_length(aCannonExplode01);
							audio_play_sound_on(bEmit, aCannonExplode01, false, 10);
							alarm[0] = st;
							with instance_create_layer(x, y, "UnitFX", oExplosion)
							{
								eSprite = sExplosion01;
								eAngle = other.image_angle;
								image_speed = 1;
							}
							break;
						case B_MG:
							bDamageRatio = 0;
							alarm[0] = 1;
							break;
						case B_GRENADE:
							bDamageRatio = 0;
							alarm[0] = 1;
							break;
					}
					break;
				case L_COVER:
					switch bDamage
					{
						case B_RIFLE:
							bDamageRatio = 0.2;
							alarm[0] = 1;
							break;
						case B_CANNON:
							bDamageRatio = 0.2;
							var st = audio_sound_length(aCannonExplode01);
							alarm[0] = st;
							audio_play_sound_on(bEmit, aCannonExplode01, false, 10);
							with instance_create_layer(x, y, "UnitFX", oExplosion)
							{
								eSprite = sExplosion01;
								eAngle = other.image_angle;
								image_speed = 1;
							}
							break;
						case B_MG:
							bDamageRatio = 0.2;
							alarm[0] = 1;
							break;
						case B_GRENADE:
							bDamageRatio = 0.2;
							alarm[0] = 1;
							break;
					}
					break;
				case H_COVER:
					switch bDamage
					{
						case B_RIFLE:
							bDamageRatio = 0.1;
							alarm[0] = 1;
							break;
						case B_CANNON:
							bDamageRatio = 0.1;
							var st = audio_sound_length(aCannonExplode01);
							alarm[0] = st;
							audio_play_sound_on(bEmit, aCannonExplode01, false, 10);
							with instance_create_layer(x, y, "UnitFX", oExplosion)
							{
								eSprite = sExplosion01;
								eAngle = other.image_angle;
								image_speed = 1;
							}
							break;
						case B_MG:
							bDamageRatio = 0.1;
							alarm[0] = 1;
							break;
						case B_GRENADE:
							bDamageRatio = 0.1;
							alarm[0] = 1;
							break;
					}
					break;
			}
			co.uHealth -= ((bDamage * bDamageRatio) * bHitCoverCount);
		}
		else
		{
			switch bDamage
			{
				case B_RIFLE:
					bDamageRatio = 0.1;
					alarm[0] = 1;
					break;
				case B_CANNON:
					bDamageRatio = 0.1;
					var st = audio_sound_length(aCannonExplode01);
					alarm[0] = st;
					audio_play_sound_on(bEmit, aCannonExplode01, false, 10);
					with instance_create_layer(x, y, "UnitFX", oExplosion)
					{
						eSprite = sExplosion01;
						eAngle = other.image_angle;
						image_speed = 1;
					}
					break;
				case B_MG:
					bDamageRatio = 0.1;
					alarm[0] = 1;
					break;
				case B_GRENADE:
					bDamageRatio = 0.1;
					alarm[0] = 1;
					break;
			}
		}
    }
}