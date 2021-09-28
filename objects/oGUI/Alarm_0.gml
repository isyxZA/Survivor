/// @description Retrieve unit info
if oControl.selectedObj == noone
{
	playerName = oPlayer.uName + " " + oPlayer.uSurname;
	playerRank = oPlayer.uRank;
	switch oPlayer.uPlatoon
	{
		case 1:
			playerPlatoon = "1st Platoon";
			break;
		case 2:
			playerPlatoon = "2nd Platoon";
			break;
		case 3:
			playerPlatoon = "3rd Platoon";
			break;
	}

	switch oPlayer.uSquad
	{
		case "f1_A":
		case "f2_A":
		case "f3_A":
			playerSquad = "Able Squad";
			break;
		case "f1_B":
		case "f2_B":
		case "f3_B":
			playerSquad = "Bravo Squad";
			break;
		case "f1_C":
		case "f2_C":
		case "f3_C":
			playerSquad = "Charlie Squad";
			break;
		case "f1_D":
		case "f2_D":
		case "f3_D":
			playerSquad = "Delta Squad";
			break;
		case "f1_E":
		case "f2_E":
		case "f3_E":
			playerSquad = "Echo Squad";
			break;
	}
	
	if oPlayer.uIsSquadLead
	{
		cFollow = c_green;
	}
}
else
{
	selectedName = oControl.selectedObj.uName + " " + oControl.selectedObj.uSurname;
	selectedRank = oControl.selectedObj.uRank;
	switch oControl.selectedObj.uPlatoon
	{
		case 1:
			selectedPlatoon = "1st Platoon";
			break;
		case 2:
			selectedPlatoon = "2nd Platoon";
			break;
		case 3:
			selectedPlatoon = "3rd Platoon";
			break;
	}

	switch oControl.selectedObj.uSquad
	{
		case "f1_A":
		case "f2_A":
		case "f3_A":
			selectedSquad = "Able Squad";
			break;
		case "f1_B":
		case "f2_B":
		case "f3_B":
			selectedSquad = "Bravo Squad";
			break;
		case "f1_C":
		case "f2_C":
		case "f3_C":
			selectedSquad = "Charlie Squad";
			break;
		case "f1_D":
		case "f2_D":
		case "f3_D":
			selectedSquad = "Delta Squad";
			break;
		case "f1_E":
		case "f2_E":
		case "f3_E":
			selectedSquad = "Echo Squad";
			break;
	}
}