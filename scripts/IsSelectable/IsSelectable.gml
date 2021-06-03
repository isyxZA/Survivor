/// @description Determine if the unit can be selected
/// @param type Type of unit
function IsSelectable(type)
{
	switch type 
	{
		case F_RIFLEMAN:
			if instance_exists(oPlayer)
			{
				//If the unit is within player vision range
				if distance_to_object(oPlayer) < oPlayer.uVision
				{
					return true;
				}
				else
				{
					return false;
				}
			}
			else
			{
				return false;
			}
		case E_RIFLEMAN:
			if instance_exists(oPlayer)
			{
				//If the unit is within player vision range
				if distance_to_object(oPlayer) < oPlayer.uVision
				{
					return true;
				}
				else
				{
					return false;
				}
			}
			else
			{
				return false;
			}
		default:
			return false;
	}
}