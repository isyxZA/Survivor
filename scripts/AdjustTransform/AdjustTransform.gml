/// @description Adjust object speed and rotation 
/// @param type Type of unit
function AdjustTransform(type)
{
	switch type
	{
		case PLAYER:
			if path_position == 1 
			{ 
				if uIsSquadLead { alarm[5] = room_speed; }
				moving = false; 
				pSpeed = 0;
				path_clear_points(path);
			}
			break;
		case F_RIFLEMAN:
		case E_RIFLEMAN:
		case F_TANK:
		case E_TANK:
		case F_LAV:
		case E_LAV:
			if path_position == 1 
			{ 
				if uIsSquadLead { alarm[5] = room_speed; }
				moving = false;
				pSpeed = 0; 
				path_clear_points(path);
			}
			break;
	}
	
	if pSpeed != tSpeed { pSpeed = lerp(pSpeed, tSpeed, 0.01); path_speed = pSpeed; }

	if image_angle != rotationTarget
	{
		image_angle += angle_difference(rotationTarget, image_angle) * 0.2;
	}
	
	audio_emitter_position(uEmit, x, y, 0);
}