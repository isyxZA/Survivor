/// @description Retrieve dialog for the unit
/// @param type Type of unit
/// @param isGreeting Do we want to get a greeting
/// @param isResponse Do we need a response
/// @param isFriendly Are we talking to a friend or foe
function GetDialog(type, isGreeting, isResponse, isFriendly)
{
	var dialog;
	switch type 
	{
		case PLAYER:
			if isGreeting
			{
				if isFriendly
				{
					dialog = choose
					(
						"HellooOOooOO",
						"Be my friend!", 
						"My name is " + uName, 
						"My age is " + uAge, 
						"I miss " + uHome, 
					);
				}
				else
				{
					dialog = choose
					(
						"Hey! It's the enemy!", 
						"Fucking run!",
						"Get 'em boys!",
						"Shit! Quiet now fellas"
					);
				}
			}
			else if isResponse
			{
			}
			break;
		case F_RIFLEMAN://Friend
			if isGreeting
			{
				if isFriendly
				{
					dialog = choose
					(
						"Hello Friend!",
						"I'm Friendly!", 
						"My name is " + uName, 
						"My age is " + uAge, 
						"I miss " + uHome, 
					);
				}
				else
				{
					dialog = choose
					(
						"Hey! It's the enemy!", 
						"Fucking run!",
						"Get 'em boys!",
						"Shit! Quiet now fellas"
					);
				}
			}
			else if isResponse
			{
			}
			
			break;
		case E_RIFLEMAN://Foe
			if isGreeting
			{
				if isFriendly
				{
					dialog = choose
					(
						"Comrade!", 
						"I'm Friendly!", 
						"My name is " + uName, 
						"My age is " + uAge, 
						"I miss " + uHome, 
					);
				}
				else
				{
					dialog = choose
					(
						"Hey! It's the enemy!", 
						"Fucking flee!",
						"Get them comrades!",
						"Shit! Get down"
					);
				}
			}
			else if isResponse
			{
			}
			
			break;
	}
	if dialog != "" { ds_list_add(dialogList, dialog); }
	if dialogTime == 0 
	{ 
		showDialog = true; 
		dText = dialog;
	}
}