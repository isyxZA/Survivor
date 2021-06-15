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
				path_speed = 0;
				audio_emitter_position(bEmit, x, y, 0);
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
				co.uHealth -= ((bDamage * bDamageRatio) * bHitCoverCount);
				break;
			case F_TANK:
			case E_TANK:
				bMoving = false;
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
					case B_MG:
						bDamageRatio = 0;
						alarm[0] = 1;
						break;
					case B_GRENADE:
						bDamageRatio = 0;
						alarm[0] = 1;
						break;
				}
				co.uHealth -= ((bDamage * bDamageRatio) * bHitCoverCount);
				break;
			case L_COVER:
				if bHitCoverCount > 0.1
				{
					bHitCoverCount -= 0.1;
				}
				alarm[1] = room_speed;
				break;
			case H_COVER:
				if bHitCoverCount > 0.2
				{
					bHitCoverCount -= 0.2;
				}
				alarm[1] = room_speed;
				break;
		}
	}
	else
	{
		alarm[1] = room_speed; 
	}
}