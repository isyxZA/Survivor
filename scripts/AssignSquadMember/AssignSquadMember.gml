/// @description Assign specific duties to squad members
/// @param squad Which squad
/// @param role The squad member's role
/// @param assignment Assignment for the squad member to execute
function AssignSquadMember(squad, role, assignment)
{
	if !ds_list_empty(squad)
	{
		var pss = ds_list_size(squad);
		for (var i = 0; i < pss; ++i)
		{
			var ssu = ds_list_find_value(squad, i);
			if ssu.uRole == role
			{
				ssu.uAssignment = assignment;
			}
		}
	}
}