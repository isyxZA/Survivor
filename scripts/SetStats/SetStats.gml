/// @description Assign stats to the unit
/// @param type Type of unit
function SetStats(type)
{
	uEmit = audio_emitter_create();
	audio_emitter_falloff(uEmit, 200, 2000, 1.5);
	audio_emitter_position(uEmit, x, y, 0);
	
	uShowDeath = true;
	//Unit specific stats
	switch type 
	{
		case PLAYER:
			uHealth = 100;
			uStamina = 100;
			uMorale = 100;
			uOrders = "";
			uRole = "";
			uAssignment = "";
			uDeathSound = choose(aDeath01, aDeath02);
			
			//Inventory 
			// 0 == Label
			// 1 == Sprite
			// 2 == Amount
			uInventory[0][0] = "Food";
			uInventory[0][1] = sMRE;
			uInventory[0][2] = 4;
			
			uInventory[1][0] = "Beanie";
			uInventory[1][1] = sBeanie;
			uInventory[1][2] = 1;
			
			uInventory[2][0] = "Lighter";
			uInventory[2][1] = sLighter;
			uInventory[2][2] = 1;
			
			uInventory[3][0] = "Spade";
			uInventory[3][1] = sSpade;
			uInventory[3][2] = 1;
			
			uInventory[4][0] = "Ammo";
			uInventory[4][1] = sAmmo;
			uInventory[4][2] = 200;
			
			uInventory[5][0] = "Scissors";
			uInventory[5][1] = sScissors;
			uInventory[5][2] = 1;
			
			uInventory[6][0] = "Binoculars";
			uInventory[6][1] = sBinoculars;
			uInventory[6][2] = 1;
			
			uInventory[7][0] = "Bandages";
			uInventory[7][1] = sBandages;
			uInventory[7][2] = 4;
			
			uInventory[8][0] = "Water";
			uInventory[8][1] = sCanteen;
			uInventory[8][2] = 2;
			
			uCarryMax = 40;
			uCarryWeight = 0;
			
			/*
			uHealthRate = 0;
			uHunger = 100;
			uHungerRate = 0;
			uThirst = 100;
			uThirstRate = 0;
			uStaminaRate = 0;
			uMoraleRate = 0;
			
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
			uStamina = 100;
			uMorale = 100;
			uOrders = "";
			uRole = "";
			uAssignment = "";
			uDeathSound = choose(aDeath01, aDeath02);
			uVision = oGrid.cellSize * oGrid.cellSize;
			break;
		case E_RIFLEMAN:
			uHealth = 100;
			uStamina = 100;
			uMorale = 100;
			uOrders = "";
			uRole = "";
			uAssignment = "";
			uDeathSound = choose(aDeath01, aDeath02);
			uVision = oGrid.cellSize * oGrid.cellSize;
			break;
		case F_TANK:
			uHealth = 100;
			uDeathSound = aExplosion01;
			uVision = oGrid.cellSize * oGrid.cellSize;
			break;
		case E_TANK:
			uHealth = 100;
			uDeathSound = aExplosion01;
			uVision = oGrid.cellSize * oGrid.cellSize;
			break;
		case F_LAV:
			uHealth = 100;
			uDeathSound = aExplosion01;
			uVision = oGrid.cellSize * oGrid.cellSize;
			break;
		case E_LAV:
			uHealth = 100;
			uDeathSound = aExplosion01;
			uVision = oGrid.cellSize * oGrid.cellSize;
			break;
	}
}