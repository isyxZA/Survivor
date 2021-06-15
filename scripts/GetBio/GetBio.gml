/// @description Retrieve a bio for the character
/// @param Type to assign to unit
function GetBio(type)
{
	//Common
	
	/*
	uBrothers = 0;
	uSisters = 0;
	uFather = 0;
	uMother = 0;
	*/
	switch type 
	{
		case PLAYER:
			uType = type;
			var nls = ds_list_size(oDialog.nameListf)-1;
			var nli = irandom(nls);
			uName = ds_list_find_value(oDialog.nameListf, nli);
			ds_list_delete(oDialog.nameListf, nli);
			var sls = ds_list_size(oDialog.snameListf)-1;
			var sli = irandom(sls);
			uSurname = ds_list_find_value(oDialog.snameListf, sli);
			ds_list_delete(oDialog.snameListf, sli);
			uNickname = "";
			uRank = "PVT";
			uAge  = string(irandom_range(18, 55));
			uHome = choose("New York", "Los Angeles", "Chicago", "Kansas");
			break;
		case F_RIFLEMAN:
			uType = type;
			var nls = ds_list_size(oDialog.nameListf)-1;
			var nli = irandom(nls);
			uName = ds_list_find_value(oDialog.nameListf, nli);
			ds_list_delete(oDialog.nameListf, nli);
			var sls = ds_list_size(oDialog.snameListf)-1;
			var sli = irandom(sls);
			uSurname = ds_list_find_value(oDialog.snameListf, sli);
			ds_list_delete(oDialog.snameListf, sli);
			uNickname = "";
			uRank = "PVT";
			uAge  = string(irandom_range(18, 55));
			uHome = choose("New York", "Los Angeles", "Chicago", "Kansas");
			break;
		case E_RIFLEMAN:
			uType = type;
			var nls = ds_list_size(oDialog.nameListe)-1;
			var nli = irandom(nls);
			uName = ds_list_find_value(oDialog.nameListe, nli);
			ds_list_delete(oDialog.nameListe, nli);
			var sls = ds_list_size(oDialog.snameListe)-1;
			var sli = irandom(sls);
			uSurname = ds_list_find_value(oDialog.snameListe, sli);
			ds_list_delete(oDialog.snameListe, sli);
			uNickname = "";
			uRank = "PVT";
			uAge  = string(irandom_range(18, 55));
			uHome = choose("Moscow", "Kiev", "Glasov", "Petersburg");
			break;
		case F_TANK:
			uType = type;
			break;
		case E_TANK:
			uType = type;
			break;
	}
}