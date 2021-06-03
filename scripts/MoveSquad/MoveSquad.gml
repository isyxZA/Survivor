/// @description Move a certain squad
function MoveSquad(platoon, squad)
{
	var psu = ds_list_find_value(ds_list_find_value(platoon, squad), 0);
	if psu != noone
	{
		if psu.uType != PLAYER
		{
			if !psu.uIsSquadLead
			{
				psu.uSquadLead = psu;
				psu.uIsSquadLead = true;
				psu.uInFormation = true;
				psu.uFormationPosition = 0;
				//psu.alarm[5] = -1;
				psu.findGoal = true;
				
				var pss = ds_list_size(ds_list_find_value(platoon, squad));
				if pss > 1
				{
					for (var i = 1; i < pss; ++i)
					{
						var ssu = ds_list_find_value(ds_list_find_value(platoon, squad), i);
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
				
				var pss = ds_list_size(ds_list_find_value(platoon, squad));
				if pss > 1
				{
					for (var i = 1; i < pss; ++i)
					{
						var ssu = ds_list_find_value(ds_list_find_value(platoon, squad), i);
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
			if !psu.uIsSquadLead
			{
				psu.uSquadLead = psu;
				psu.uIsSquadLead = true;
				psu.uInFormation = true;
				psu.uFormationPosition = 0;
				//psu.alarm[5] = -1;
				//psu.findGoal = true;
				
				var pss = ds_list_size(ds_list_find_value(platoon, squad));
				if pss > 1
				{
					for (var i = 1; i < pss; ++i)
					{
						var ssu = ds_list_find_value(ds_list_find_value(platoon, squad), i);
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
				
				var pss = ds_list_size(ds_list_find_value(platoon, squad));
				if pss > 1
				{
					for (var i = 1; i < pss; ++i)
					{
						var ssu = ds_list_find_value(ds_list_find_value(platoon, squad), i);
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