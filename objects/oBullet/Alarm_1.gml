/// @description Check for collisions
if bMoving 
{ 
	var co = instance_place(x, y, oCollider);
	if co != noone
	{
		switch co.uType
		{
			case PLAYER:
			case F_RIFLEMAN:
			case E_RIFLEMAN:
				bMoving = false;
				visible = false;
				path_speed = 0;
				audio_emitter_position(bEmit, x, y, 0);
				switch bDamage
				{
					case B_RIFLE:
						alarm[0] = 1;
						break;
					case B_CANNON:
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
					case B_30MM:
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
						alarm[0] = 1;
						break;
					case B_GRENADE:
						alarm[0] = 1;
						break;
				}
				break;
			case F_TANK:
			case E_TANK:
			case F_LAV:
			case E_LAV:
				bMoving = false;
				visible = false;
				path_speed = 0;
				audio_emitter_position(bEmit, x, y, 0);
				switch bDamage
				{
					case B_RIFLE:
						bDamageRatio = 0;
						alarm[0] = 1;
						break;
					case B_CANNON:
						bDamageRatio = 0;
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
					case B_30MM:
						bDamageRatio = 0;
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
				if bDamageRatio > 0.1
				{
					bDamageRatio -= 0.1;
				}
				alarm[1] = 1;
				break;
			case H_COVER:
				if bDamageRatio > 0.2
				{
					bDamageRatio -= 0.2;
				}
				alarm[1] = 1;
				break;
		}
		var cd = (bDamage * bDamageRatio);
		co.uHealth -= cd;
		if co.uHealth <= 0
		{
			with co { instance_destroy(); }
		}
	}
	else
	{
		alarm[1] = 1; 
	}
}