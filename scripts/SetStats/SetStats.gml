/// @description Assign stats to the unit
/// @param type Type of unit
function SetStats(type)
{
	//Unit specific stats
	switch type 
	{
		case PLAYER:
			uHealth = 100;
			/*
			uHealthRate = 0;
			uHunger = 100;
			uHungerRate = 0;
			uThirst = 100;
			uThirstRate = 0;
			uStamina = 100;
			uStaminaRate = 0;
			uMorale = 100;
			uMoraleRate = 0;
	
			uAimTime = 2000;
			uAcurracy = 30;
	
			uCarryWeight = 20;
	
			uHead = 100;
			uNeck = 100;
			uLeftArm = 100;
			uLeftHand = 100;
			uRightArm = 100;
			uRightHand = 100;
			uChest = 100;
			uLeftLeg = 100;
			uLeftFoot = 100;
			uRightLeg = 100;
			uRightFoot = 100;
			*/
	
			uVision = oGrid.cellSize * oGrid.cellSize;
			break;
		case F_RIFLEMAN:
			uHealth = 100;
			uVision = oGrid.cellSize * oGrid.cellSize;
			break;
		case E_RIFLEMAN:
			uHealth = 100;
			uVision = oGrid.cellSize * oGrid.cellSize;
			break;
		case F_TANK:
			uHealth = 100;
			uVision = oGrid.cellSize * oGrid.cellSize;
			break;
		case E_TANK:
			uHealth = 100;
			uVision = oGrid.cellSize * oGrid.cellSize;
			break;
	}
}