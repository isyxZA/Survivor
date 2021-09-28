/// @description Issue orders to a squad
/// @param squad Which squad to give orders to
/// @param order Which order to execute
function IssueOrder(squad, order)
{
	var psu = ds_list_find_value(squad, 0);
	//Make sure there is an assigned squad leader
	if psu != noone
	{
		if !psu.uIsSquadLead
		{
			psu.uSquadLead = psu;
			psu.uIsSquadLead = true;
			//Assign squad leader orders
			switch order
			{
				//Assign orders to the squad
				case "ATTACK_MOVE":
					psu.uOrders = "Advance to position";
					break;
				case "RETREAT_MOVE":
					psu.uOrders = "Retreat to position";
					break;
				case "DEFEND_MOVE":
					psu.uOrders = "Defend squad position";
					break;
			}
			with psu { GetOrdersDialog(uType); }
			var pss = ds_list_size(squad);
			if pss > 1
			{
				for (var i = 1; i < pss; ++i)
				{
					var ssu = ds_list_find_value(squad, i);
					ssu.uSquadLead = psu;
					ssu.uIsSquadLead = false;
					switch order
					{
						//Assign orders to the squad
						case "ATTACK_MOVE":
							ssu.uOrders = "Advance with squad";
							break;
						case "RETREAT_MOVE":
							ssu.uOrders = "Retreat with squad";
							break;
						case "DEFEND_MOVE":
							ssu.uOrders = "Defend squad position";
							break;
					}
				}
			}
		}
		else
		{
			//Assign squad leader orders
			switch order
			{
				//Assign orders to the squad
				case "ATTACK_MOVE":
					psu.uOrders = "Advance to position";
					break;
				case "RETREAT_MOVE":
					psu.uOrders = "Retreat to position";
					break;
				case "DEFEND_MOVE":
					psu.uOrders = "Defend squad position";
					break;
			}
			with psu { GetOrdersDialog(uType); }
			var pss = ds_list_size(squad);
			if pss > 1
			{
				for (var i = 1; i < pss; ++i)
				{
					var ssu = ds_list_find_value(squad, i);
					//Assign squad member orders
					switch order
					{
						//Assign orders to the squad
						case "ATTACK_MOVE":
							ssu.uOrders = "Advance with squad";
							break;
						case "RETREAT_MOVE":
							ssu.uOrders = "Retreat with squad";
							break;
						case "DEFEND_MOVE":
							ssu.uOrders = "Defend squad position";
							break;
					}
				}
			}
		}
	}
}