/// @description Adjust left front positions
//Calculate center front troop amounts
//Determine whether to attack/defend/retreat

var tfCount = ds_list_size(fSquadP2a) +
			  ds_list_size(fSquadP2b) +
			  ds_list_size(fSquadP2c) +
			  ds_list_size(fSquadP2d) +
			  ds_list_size(fSquadP2e) +
			  ds_list_size(fSquadPTb) +
			  ds_list_size(fSquadPLb);
			 
var teCount = ds_list_size(eSquadP3a) +
			  ds_list_size(eSquadP3b) +
			  ds_list_size(eSquadP3c) +
			  ds_list_size(eSquadP3d) +
			  ds_list_size(eSquadP3e) +
			  ds_list_size(eSquadPTc) +
			  ds_list_size(eSquadPLc);
			  
if tfCount > teCount
{
	//We outnumber the enemy and should attack
	var fc = choose("ATTACK", "DEFEND");
	AdjustFrontPosition("LEFT", fc);
	alarm[2] = room_speed * 60;
}
else if tfCount < teCount
{
	//The enemy has the advantage and should attack
	var fc = choose("RETREAT", "DEFEND");
	AdjustFrontPosition("LEFT", fc);
	alarm[2] = room_speed * 60;
}
else
{
	//Stalemate on the front
	var fc = choose("ATTACK", "DEFEND", "RETREAT");
	AdjustFrontPosition("LEFT", fc);
	alarm[2] = room_speed * 60;
}