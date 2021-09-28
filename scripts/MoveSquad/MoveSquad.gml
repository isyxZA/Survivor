/// @description Move a certain squad
/// @param squad Which squad to move
function MoveSquad(squad)
{
	var psu = ds_list_find_value(squad, 0);
	if psu != noone
	{
		//If the squad leader is not the player
		if psu.uType != PLAYER
		{
			if !psu.uIsSquadLead
			{
				psu.uSquadLead = psu;
				psu.uIsSquadLead = true;
				psu.uInFormation = true;
				psu.uFormationPosition = 0;
				psu.findGoal = true;
				
				var pss = ds_list_size(squad);
				if pss > 1
				{
					for (var i = 1; i < pss; ++i)
					{
						var ssu = ds_list_find_value(squad, i);
						ssu.uSquadLead = psu;
						ssu.uIsSquadLead = false;
						ssu.uInFormation = true;
						ssu.uFormationPosition = i;
						ssu.uFollowTarget = psu;
						ssu.alarm[4] = -1;
						ssu.uFollowing = false;
						ssu.uFollow = true;
					}
				}
			}
			else
			{
				psu.uInFormation = true;
				psu.alarm[5] = -1;
				psu.findGoal = true;
				
				var pss = ds_list_size(squad);
				if pss > 1
				{
					for (var i = 1; i < pss; ++i)
					{
						var ssu = ds_list_find_value(squad, i);
						ssu.uInFormation = true;
						ssu.uFollowTarget = psu;
						ssu.alarm[4] = -1;
						ssu.uFollowing = false;
						ssu.uFollow = true;
					}
				}
			}
		}
		else
		{
			//The player is the squad leader
			//Assign as squad lead if not already
			if !psu.uIsSquadLead
			{
				psu.uSquadLead = psu;
				psu.uIsSquadLead = true;
				psu.uInFormation = true;
				psu.uFormationPosition = 0;
				if psu.uSquadFollow
				{
					var pss = ds_list_size(squad);
					if pss > 1
					{
						for (var i = 1; i < pss; ++i)
						{
							var ssu = ds_list_find_value(squad, i);
							ssu.uSquadLead = psu;
							ssu.uIsSquadLead = false;
							ssu.uInFormation = true;
							ssu.uFormationPosition = i;
							ssu.uFollowTarget = psu;
							ssu.alarm[4] = -1;
							ssu.uFollowing = false;
							ssu.uFollow = true;
						}
					}
				}
			}
			else
			{
				//Already assigned as the squad lead
				psu.uInFormation = true;
				psu.alarm[5] = -1;
				if psu.uSquadFollow
				{
					var pss = ds_list_size(squad);
					if pss > 1
					{
						for (var i = 1; i < pss; ++i)
						{
							var ssu = ds_list_find_value(squad, i);
							ssu.uInFormation = true;
							ssu.uFollowTarget = psu;
							ssu.alarm[4] = -1;
							ssu.uFollowing = false;
							ssu.uFollow = true;
						}
					}
				}
			}
		}
	}
}