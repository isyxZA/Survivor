/// @description Get a reply from selected unit per level of dialog
/// @param type Type of unit asking for a reply
/// @param unit Selected unit...the unit the player is talking to
/// @param level Dialog level
function GetReply(type, unit, level)
{
	switch type 
	{
		case PLAYER:
			switch level
			{
				case 0://Level 0 == first talk level
					with unit
					{
						if point_distance(x, y, oPlayer.x, oPlayer.y) < oPlayer.uVoiceRange
						{
							//Selected unit returns a reply to the player
							GreetOne(uType);
							//Enable dialog options
							oGUI.dialogLevel = 1;
							oGUI.alarm[3] = room_speed;
						}
					}
					break;
			}
			break;
		case F_RIFLEMAN:
			switch level
			{
				case 0:
					break;
			}
			break;
		case E_RIFLEMAN:
			switch level
			{
				case 0:
					break;
			}
			break;
	}
}