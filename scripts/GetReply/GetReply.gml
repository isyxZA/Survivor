/// @description Get a reply from selected unit per level of dialog
/// @param type Type of unit asking for a reply
/// @param unit Selected unit
/// @param level Dialog level
function GetReply(type, unit, level)
{
	switch type 
	{
		case PLAYER:
			switch level
			{
				case -1:
				case 0:
				case ACTIONMENU:
					with unit
					{
						GreetOne(uType);
						//ENABLE DISPLAY PLAYER REPLY OPTIONS HERE\\
					}
					break;
			}
			break;
		case F_RIFLEMAN:
			switch level
			{
				case -1:
				case 0:
				case ACTIONMENU:
					break;
			}
			break;
		case E_RIFLEMAN:
			switch level
			{
				case -1:
				case 0:
				case ACTIONMENU:
					break;
			}
			break;
	}
}