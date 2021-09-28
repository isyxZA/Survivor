/// @description Retrieve dialog when recieving/giving orders
/// @param type Type of unit
function GetOrdersDialog(type)
{
	var dialog = "";
	switch type
	{
		case PLAYER:
			switch uOrders
			{
				case "Advance to position":
					dialog = choose
							 (
								"Orders to move! Lets go!",
								"We're on the attack! Get moving!",
								"Keep up! We're on the attack.",
								"Stay sharp! We're on the offensive.",
								"Off yer asses! Time to move!",
								"Check equipment! We're heading into a fight!"
							 );
					break;
				case "Retreat to position":
					dialog = choose
							 (
								"Fall back! We're getting our asses kicked!",
								"Back to a better position! GO GO GO",
								"Get the hell outa here! RETREAT",
								"Gotta fall back! It's getting too hot.",
								"We're outnumbered here! Let's move.",
								"We need to get outa here! Fall back!"
							 );
					break;
				case "Defend squad position":
					dialog = choose
							 (
								"Let's defend this area. Hunker down!",
								"Defend this spot, nobody gets through!",
								"We need to secure this area. Let's go!",
								"Heads up! We need to hold this position.",
								"Keep sharp! We stop them here!",
								"Not one step back! We hold here."
							 );
					break;
			}
			break;
		case F_RIFLEMAN:
			if instance_exists(oPlayer)
			{
				if point_distance(x, y, oPlayer.x, oPlayer.y) < uVoiceRange
				{
					switch uOrders
					{
						case "Advance to position":
						case "Advance with squad":
							dialog = choose
									 (
										"Orders to move! Lets go!",
										"We're on the attack! Get moving!",
										"Keep up! We're on the attack.",
										"Stay sharp! We're on the offensive.",
										"Off yer asses! Time to move!",
										"Check equipment! We're heading into a fight!"
									 );
							break;
						case "Retreat to position":
						case "Retreat with squad":
							dialog = choose
									 (
										"Fall back! We're getting our asses kicked!",
										"Back to a better position! GO GO GO",
										"Get the hell outa here! RETREAT",
										"Gotta fall back! It's getting too hot.",
										"We're outnumbered here! Let's move.",
										"We need to get outa here! Fall back!"
									 );
							break;
						case "Defend squad position":
							dialog = choose
									 (
										"Let's defend this area. Hunker down!",
										"Defend this spot, nobody gets through!",
										"We need to secure this area. Let's go!",
										"Heads up! We need to hold this position.",
										"Keep sharp! We stop them here!",
										"Not one step back! We hold here."
									 );
							break;
					}
				}
			}
			break;
		case E_RIFLEMAN:
			break;
	}
	if dialog != "" { ds_list_add(dialogList, dialog); }
	if dialogTime == 0 
	{ 
		showDialog = true; 
		dText = dialog;
	}
}