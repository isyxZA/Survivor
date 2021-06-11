if bStartPath
{
	bStartPath = false;
    path_clear_points(bPath);
    path_add_point(bPath, x, y, bSpeed);
    path_add_point(bPath, bTargetX, bTargetY, bSpeed);
    path_set_closed(bPath, false);
    path_start(bPath, bSpeed, path_action_stop, 0);
    bMoving = true;
	alarm[1] = room_speed * 2;
    image_angle = point_direction(x, y, bTargetX, bTargetY);
}

if bMoving
{
	if path_position == 1 {
        bMoving = false;
        path_speed = 0;
		alarm[1] = -1;
		if bPlaySound
		{
			bPlaySound = false;
			//audio_emitter_position(bEmit, x, y, 0);
	        //audio_play_sound_on(bEmit, bSound, false, 10);
	        alarm[0] = room_speed*10;
		}
		//Spawn a particle effect here
		bShowFX = true;
		var co = instance_place(x, y, oCollider);
		if co != noone
		{
			switch co.uType
			{
				case PLAYER:
				case F_RIFLEMAN:
				case E_RIFLEMAN:
					switch bType
					{
						case B_RIFLE:
							bDamageRatio = 1;
							break;
					}
					break;
				case F_TANK:
				case E_TANK:
					switch bType
					{
						case B_RIFLE:
							bDamageRatio = 0;
							break;
					}
					break;
				case L_COVER:
					switch bType
					{
						case B_RIFLE:
							bDamageRatio = 0.2;
							break;
					}
					break;
				case H_COVER:
					switch bType
					{
						case B_RIFLE:
							bDamageRatio = 0.1;
							break;
					}
					break;
			}
			co.uHealth -= ((bDamage * bDamageRatio) * bHitCoverCount);
		}
    }
}