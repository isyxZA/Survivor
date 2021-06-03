/// @ description Stop the squad from moving
/// @param squad The squad to halt
function HaltSquad(squad)
{
	switch squad
	{
		//Friendly platoon 1 squads
		case "f1_A":
			var hss = ds_list_size(ds_list_find_value(fPlatoon1, 0));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(fPlatoon1, 0), i);
				hsu.uFollowTarget = noone;
			}
			break;
		case "f1_B":
			var hss = ds_list_size(ds_list_find_value(fPlatoon1, 1));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(fPlatoon1, 1), i);
				hsu.uFollowTarget = noone;
			}
			break;
		case "f1_C":
			var hss = ds_list_size(ds_list_find_value(fPlatoon1, 2));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(fPlatoon1, 2), i);
				hsu.uFollowTarget = noone;
			}
			break;
		case "f1_D":
			var hss = ds_list_size(ds_list_find_value(fPlatoon1, 3));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(fPlatoon1, 3), i);
				hsu.uFollowTarget = noone;
			}
			break;
		case "f1_E":
			var hss = ds_list_size(ds_list_find_value(fPlatoon1, 4));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(fPlatoon1, 4), i);
				hsu.uFollowTarget = noone;
			}
			break;
		//Friendly platoon 2 squads
		case "f2_A":
			var hss = ds_list_size(ds_list_find_value(fPlatoon2, 0));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(fPlatoon2, 0), i);
				hsu.uFollowTarget = noone;
			}
			break;
		case "f2_B":
			var hss = ds_list_size(ds_list_find_value(fPlatoon2, 1));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(fPlatoon2, 1), i);
				hsu.uFollowTarget = noone;
			}
			break;
		case "f2_C":
			var hss = ds_list_size(ds_list_find_value(fPlatoon2, 2));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(fPlatoon2, 2), i);
				hsu.uFollowTarget = noone;
			}
			break;
		case "f2_D":
			var hss = ds_list_size(ds_list_find_value(fPlatoon2, 3));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(fPlatoon2, 3), i);
				hsu.uFollowTarget = noone;
			}
			break;
		case "f2_E":
			var hss = ds_list_size(ds_list_find_value(fPlatoon2, 4));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(fPlatoon2, 4), i);
				hsu.uFollowTarget = noone;
			}
			break;
		//Friendly platoon 3 squads
		case "f3_A":
			var hss = ds_list_size(ds_list_find_value(fPlatoon3, 0));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(fPlatoon3, 0), i);
				hsu.uFollowTarget = noone;
			}
			break;
		case "f3_B":
			var hss = ds_list_size(ds_list_find_value(fPlatoon3, 1));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(fPlatoon3, 1), i);
				hsu.uFollowTarget = noone;
			}
			break;
		case "f3_C":
			var hss = ds_list_size(ds_list_find_value(fPlatoon3, 2));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(fPlatoon3, 2), i);
				hsu.uFollowTarget = noone;
			}
			break;
		case "f3_D":
			var hss = ds_list_size(ds_list_find_value(fPlatoon3, 3));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(fPlatoon3, 3), i);
				hsu.uFollowTarget = noone;
			}
			break;
		case "f3_E":
			var hss = ds_list_size(ds_list_find_value(fPlatoon3, 4));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(fPlatoon3, 4), i);
				hsu.uFollowTarget = noone;
			}
			break;
		//Foe platoon 1 squads
		case "e1_A":
			var hss = ds_list_size(ds_list_find_value(ePlatoon1, 0));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(ePlatoon1, 0), i);
				hsu.uFollowTarget = noone;
			}
			break;
		case "e1_B":
			var hss = ds_list_size(ds_list_find_value(ePlatoon1, 1));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(ePlatoon1, 1), i);
				hsu.uFollowTarget = noone;
			}
			break;
		case "e1_C":
			var hss = ds_list_size(ds_list_find_value(ePlatoon1, 2));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(ePlatoon1, 2), i);
				hsu.uFollowTarget = noone;
			}
			break;
		case "e1_D":
			var hss = ds_list_size(ds_list_find_value(ePlatoon1, 3));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(ePlatoon1, 3), i);
				hsu.uFollowTarget = noone;
			}
			break;
		case "e1_E":
			var hss = ds_list_size(ds_list_find_value(ePlatoon1, 4));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(ePlatoon1, 4), i);
				hsu.uFollowTarget = noone;
			}
			break;
		//Foe platoon 2 squads
		case "e2_A":
			var hss = ds_list_size(ds_list_find_value(ePlatoon2, 0));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(ePlatoon2, 0), i);
				hsu.uFollowTarget = noone;
			}
			break;
		case "e2_B":
			var hss = ds_list_size(ds_list_find_value(ePlatoon2, 1));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(ePlatoon2, 1), i);
				hsu.uFollowTarget = noone;
			}
			break;
		case "e2_C":
			var hss = ds_list_size(ds_list_find_value(ePlatoon2, 2));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(ePlatoon2, 2), i);
				hsu.uFollowTarget = noone;
			}
			break;
		case "e2_D":
			var hss = ds_list_size(ds_list_find_value(ePlatoon2, 3));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(ePlatoon2, 3), i);
				hsu.uFollowTarget = noone;
			}
			break;
		case "e2_E":
			var hss = ds_list_size(ds_list_find_value(ePlatoon2, 4));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(ePlatoon2, 4), i);
				hsu.uFollowTarget = noone;
			}
			break;
		//Foe platoon 3 squads
		case "e3_A":
			var hss = ds_list_size(ds_list_find_value(ePlatoon3, 0));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(ePlatoon3, 0), i);
				hsu.uFollowTarget = noone;
			}
			break;
		case "e3_B":
			var hss = ds_list_size(ds_list_find_value(ePlatoon3, 1));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(ePlatoon3, 1), i);
				hsu.uFollowTarget = noone;
			}
			break;
		case "e3_C":
			var hss = ds_list_size(ds_list_find_value(ePlatoon3, 2));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(ePlatoon3, 2), i);
				hsu.uFollowTarget = noone;
			}
			break;
		case "e3_D":
			var hss = ds_list_size(ds_list_find_value(ePlatoon3, 3));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(ePlatoon3, 3), i);
				hsu.uFollowTarget = noone;
			}
			break;
		case "e3_E":
			var hss = ds_list_size(ds_list_find_value(ePlatoon3, 4));
			for (var i = 0; i < hss; ++i)
			{
				var hsu = ds_list_find_value(ds_list_find_value(ePlatoon3, 4), i);
				hsu.uFollowTarget = noone;
			}
			break;
		default:
			break;
	}
}