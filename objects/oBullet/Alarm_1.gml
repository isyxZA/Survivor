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
				if bPlaySound
				{
					bPlaySound = false;
					//audio_emitter_position(bEmit, x, y, 0);
			        //audio_play_sound_on(bEmit, bSound, false, 10);
			        alarm[0] = room_speed*10;
				}
				//Spawn a particle effect here
				bShowFX = true;
				switch bType
				{
					case B_RIFLE:
						bDamageRatio = 1;
						break;
				}
				co.uHealth -= ((bDamage * bDamageRatio) * bHitCoverCount);
				break;
			case F_TANK:
			case E_TANK:
				bMoving = false;
				path_speed = 0;
				if bPlaySound
				{
					bPlaySound = false;
					//audio_emitter_position(bEmit, x, y, 0);
			        //audio_play_sound_on(bEmit, bSound, false, 10);
			        alarm[0] = room_speed*10;
				}
				//Spawn a particle effect here
				bShowFX = true;
				switch bType
				{
					case B_RIFLE:
						bDamageRatio = 0;
						break;
				}
				co.uHealth -= ((bDamage * bDamageRatio) * bHitCoverCount);
				break;
			case L_COVER:
				bHitCoverCount += 0.1;
				break;
			case H_COVER:
				bHitCoverCount += 0.2;
				break;
		}
	}
	else
	{
		alarm[1] = room_speed * 2; 
	}
}
