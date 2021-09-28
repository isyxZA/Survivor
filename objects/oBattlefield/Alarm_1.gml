/// @description Adjust center front positions
//Calculate center front troop amounts
//Determine whether to attack/defend/retreat

var tfCount = ds_list_size(fSquadP1a) +
			  ds_list_size(fSquadP1b) +
			  ds_list_size(fSquadP1c) +
			  ds_list_size(fSquadP1d) +
			  ds_list_size(fSquadP1e) +
			  ds_list_size(fSquadPTa) +
			  ds_list_size(fSquadPLa);
			 
var teCount = ds_list_size(eSquadP1a) +
			  ds_list_size(eSquadP1b) +
			  ds_list_size(eSquadP1c) +
			  ds_list_size(eSquadP1d) +
			  ds_list_size(eSquadP1e) +
			  ds_list_size(eSquadPTa) +
			  ds_list_size(eSquadPLa);
			  
if tfCount > teCount
{
	//We outnumber the enemy and should attack
	var fc = choose("ATTACK", "DEFEND");
	AdjustFrontPosition("CENTER", fc);
	alarm[1] = room_speed * 60;
}
else if tfCount < teCount
{
	//The enemy has the advantage and should attack
	var fc = choose("RETREAT", "DEFEND");
	AdjustFrontPosition("CENTER", fc);
	alarm[1] = room_speed * 60;
}
else
{
	//Stalemate on the front
	var fc = choose("ATTACK", "DEFEND", "RETREAT");
	AdjustFrontPosition("CENTER", fc);
	alarm[1] = room_speed * 60;
}