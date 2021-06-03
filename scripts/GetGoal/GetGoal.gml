/// Get squad waypoint from oBattlefield
/// @param squad Which squad to query
function GetGoal(squad)
{
	switch squad 
	{
		//Friendly platoon 1
		case "f1_A":
			goalX = oBattlefield.fsquad1Ax;
			goalY = oBattlefield.fsquad1Ay;
			break;
		case "f1_B":
			goalX = oBattlefield.fsquad1Bx;
			goalY = oBattlefield.fsquad1By;
			break;
		case "f1_C":
			goalX = oBattlefield.fsquad1Cx;
			goalY = oBattlefield.fsquad1Cy;
			break;
		case "f1_D":
			goalX = oBattlefield.fsquad1Dx;
			goalY = oBattlefield.fsquad1Dy;
			break;
		case "f1_E":
			goalX = oBattlefield.fsquad1Ex;
			goalY = oBattlefield.fsquad1Ey;
			break;
		//Friendly platoon 2
		case "f2_A":
			goalX = oBattlefield.fsquad2Ax;
			goalY = oBattlefield.fsquad2Ay;
			break;
		case "f2_B":
			goalX = oBattlefield.fsquad2Bx;
			goalY = oBattlefield.fsquad2By;
			break;
		case "f2_C":
			goalX = oBattlefield.fsquad2Cx;
			goalY = oBattlefield.fsquad2Cy;
			break;
		case "f2_D":
			goalX = oBattlefield.fsquad2Dx;
			goalY = oBattlefield.fsquad2Dy;
			break;
		case "f2_E":
			goalX = oBattlefield.fsquad2Ex;
			goalY = oBattlefield.fsquad2Ey;
			break;
		//Friendly Platoon 3 
		case "f3_A":
			goalX = oBattlefield.fsquad3Ax;
			goalY = oBattlefield.fsquad3Ay;
			break;
		case "f3_B":
			goalX = oBattlefield.fsquad3Bx;
			goalY = oBattlefield.fsquad3By;
			break;
		case "f3_C":
			goalX = oBattlefield.fsquad3Cx;
			goalY = oBattlefield.fsquad3Cy;
			break;
		case "f3_D":
			goalX = oBattlefield.fsquad3Dx;
			goalY = oBattlefield.fsquad3Dy;
			break;
		case "f3_E":
			goalX = oBattlefield.fsquad3Ex;
			goalY = oBattlefield.fsquad3Ey;
			break;
			
		//Foe platoon 1
		case "e1_A":
			goalX = oBattlefield.esquad1Ax;
			goalY = oBattlefield.esquad1Ay;
			break;
		case "e1_B":
			goalX = oBattlefield.esquad1Bx;
			goalY = oBattlefield.esquad1By;
			break;
		case "e1_C":
			goalX = oBattlefield.esquad1Cx;
			goalY = oBattlefield.esquad1Cy;
			break;
		case "e1_D":
			goalX = oBattlefield.esquad1Dx;
			goalY = oBattlefield.esquad1Dy;
			break;
		case "e1_E":
			goalX = oBattlefield.esquad1Ex;
			goalY = oBattlefield.esquad1Ey;
			break;
		//Foe platoon 2
		case "e2_A":
			goalX = oBattlefield.esquad2Ax;
			goalY = oBattlefield.esquad2Ay;
			break;
		case "e2_B":
			goalX = oBattlefield.esquad2Bx;
			goalY = oBattlefield.esquad2By;
			break;
		case "e2_C":
			goalX = oBattlefield.esquad2Cx;
			goalY = oBattlefield.esquad2Cy;
			break;
		case "e2_D":
			goalX = oBattlefield.esquad2Dx;
			goalY = oBattlefield.esquad2Dy;
			break;
		case "e2_E":
			goalX = oBattlefield.esquad2Ex;
			goalY = oBattlefield.esquad2Ey;
			break;
		//Foe Platoon 3 
		case "e3_A":
			goalX = oBattlefield.esquad3Ax;
			goalY = oBattlefield.esquad3Ay;
			break;
		case "e3_B":
			goalX = oBattlefield.esquad3Bx;
			goalY = oBattlefield.esquad3By;
			break;
		case "e3_C":
			goalX = oBattlefield.esquad3Cx;
			goalY = oBattlefield.esquad3Cy;
			break;
		case "e3_D":
			goalX = oBattlefield.esquad3Dx;
			goalY = oBattlefield.esquad3Dy;
			break;
		case "e3_E":
			goalX = oBattlefield.esquad3Ex;
			goalY = oBattlefield.esquad3Ey;
			break;
	}
}