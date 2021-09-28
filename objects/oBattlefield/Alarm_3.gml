/// @description Adjust right front positions
//Calculate center front troop amounts
//Determine whether to attack/defend/retreat

var tfCount = ds_list_size(fSquadP3a) +
			  ds_list_size(fSquadP3b) +
			  ds_list_size(fSquadP3c) +
			  ds_list_size(fSquadP3d) +
			  ds_list_size(fSquadP3e) +
			  ds_list_size(fSquadPTc) +
			  ds_list_size(fSquadPLc);
			 
var teCount = ds_list_size(eSquadP2a) +
			  ds_list_size(eSquadP2b) +
			  ds_list_size(eSquadP2c) +
			  ds_list_size(eSquadP2d) +
			  ds_list_size(eSquadP2e) +
			  ds_list_size(eSquadPTb) +
			  ds_list_size(eSquadPLb);
			  
if tfCount > teCount
{
	//We outnumber the enemy and should attack
	var fc = choose("ATTACK", "DEFEND");
	AdjustFrontPosition("RIGHT", fc);
	alarm[3] = room_speed * 60;
}
else if tfCount < teCount
{
	//The enemy has the advantage and should attack
	var fc = choose("RETREAT", "DEFEND");
	AdjustFrontPosition("RIGHT", fc);
	alarm[3] = room_speed * 60;
}
else
{
	//Stalemate on the front
	var fc = choose("ATTACK", "DEFEND", "RETREAT");
	AdjustFrontPosition("RIGHT", fc);
	alarm[3] = room_speed * 60;
}