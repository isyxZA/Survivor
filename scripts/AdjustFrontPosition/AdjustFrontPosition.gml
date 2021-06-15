/// @description Keep the front positions relative to center
/// @param front Which front to adjust
/// @param movement Type of troop movement to execute
function AdjustFrontPosition(front, movement)
{
	switch front
	{
		case "CENTER":
			switch movement
			{
				case "ATTACK":
					frontCX = x + irandom_range(-oGrid.cellSize * 10, oGrid.cellSize * 10);
					//Adjust platoon x positions
					fplatoon1x = frontCX;
					eplatoon1x = frontCX;
					fsquadTAx  = frontCX;
					esquadTAx  = frontCX;
					if frontCY > room_height * 0.2
					{
						frontCY -= irandom_range(oGrid.cellSize * 10, oGrid.cellSize * 20);
						//Adjust platoon y positions
						fplatoon1y = frontCY + (frontSeparation * 2);
						eplatoon1y = frontCY - (frontSeparation * 2);
						fsquadTAy  = frontCY + frontSeparation;
						esquadTAy  = frontCY - frontSeparation;
					}
					break;
				case "RETREAT":
					frontCX = x + irandom_range(-oGrid.cellSize * 10, oGrid.cellSize * 10);
					//Adjust platoon x positions
					fplatoon1x = frontCX;
					eplatoon1x = frontCX;
					fsquadTAx  = frontCX;
					esquadTAx  = frontCX;
					if frontCY > room_height * 0.2
					{
						frontCY += irandom_range(oGrid.cellSize * 10, oGrid.cellSize * 20);
						//Adjust platoon y positions
						fplatoon1y = frontCY + (frontSeparation * 2);
						eplatoon1y = frontCY - (frontSeparation * 2);
						fsquadTAy  = frontCY + frontSeparation;
						esquadTAy  = frontCY - frontSeparation;
					}
					break;
				case "DEFEND":
					frontCX = x + irandom_range(-oGrid.cellSize * 10, oGrid.cellSize * 10);
					//Adjust platoon x positions
					fplatoon1x = frontCX;
					eplatoon1x = frontCX;
					fsquadTAx  = frontCX;
					esquadTAx  = frontCX;
					if frontCY < room_height * 0.8
					{
						var nY = frontCY + irandom_range(-oGrid.cellSize * 10, oGrid.cellSize * 10);
						//Adjust platoon y positions
						fplatoon1y = nY + (frontSeparation * 2);
						eplatoon1y = nY - (frontSeparation * 2);
						fsquadTAy  = nY + frontSeparation;
						esquadTAy  = nY - frontSeparation;
					}
					break;
			}
			//FRIEND
			fsquad1Ax = fplatoon1x;
			fsquad1Ay = fplatoon1y;
			// <-
			fsquad1Bx = fplatoon1x - (oGrid.cellSize * 10);
			fsquad1By = fplatoon1y + (oGrid.cellSize * 5);
			// ->
			fsquad1Cx = fplatoon1x + (oGrid.cellSize * 10);
			fsquad1Cy = fplatoon1y + (oGrid.cellSize * 5);
			// <--
			fsquad1Dx = fplatoon1x - (oGrid.cellSize * 30);
			fsquad1Dy = fplatoon1y + (oGrid.cellSize * 10);
			// -->
			fsquad1Ex = fplatoon1x + (oGrid.cellSize * 30);
			fsquad1Ey = fplatoon1y + (oGrid.cellSize * 10);
			//FOE
			// ||
			esquad1Ax = eplatoon1x;
			esquad1Ay = eplatoon1y;
			// <-
			esquad1Bx = eplatoon1x + (oGrid.cellSize * 10);
			esquad1By = eplatoon1y - (oGrid.cellSize * 5);
			// ->
			esquad1Cx = eplatoon1x - (oGrid.cellSize * 10);
			esquad1Cy = eplatoon1y - (oGrid.cellSize * 5);
			// <--
			esquad1Dx = eplatoon1x + (oGrid.cellSize * 30);
			esquad1Dy = eplatoon1y - (oGrid.cellSize * 10);
			// -->
			esquad1Ex = eplatoon1x - (oGrid.cellSize * 30);
			esquad1Ey = eplatoon1y - (oGrid.cellSize * 10);
			
			if !ds_list_empty(fSquadP1a) { MoveSquad(fPlatoon1, 0); }
			if !ds_list_empty(fSquadP1b) { MoveSquad(fPlatoon1, 1); }
			if !ds_list_empty(fSquadP1c) { MoveSquad(fPlatoon1, 2); }
			if !ds_list_empty(fSquadP1d) { MoveSquad(fPlatoon1, 3); }
			if !ds_list_empty(fSquadP1e) { MoveSquad(fPlatoon1, 4); }
			
			if !ds_list_empty(eSquadP1a) { MoveSquad(ePlatoon1, 0); }
			if !ds_list_empty(eSquadP1b) { MoveSquad(ePlatoon1, 1); }
			if !ds_list_empty(eSquadP1c) { MoveSquad(ePlatoon1, 2); }
			if !ds_list_empty(eSquadP1d) { MoveSquad(ePlatoon1, 3); }
			if !ds_list_empty(eSquadP1e) { MoveSquad(ePlatoon1, 4); }
			
			if !ds_list_empty(fSquadPTa) { MoveSquad(fPlatoonT, 0); }
			if !ds_list_empty(eSquadPTa) { MoveSquad(ePlatoonT, 0); }
			break;
		case "LEFT":
			switch movement
			{
				case "ATTACK":
					frontLX = (room_width * 0.2) + irandom_range(-oGrid.cellSize * 10, oGrid.cellSize * 10);
					//Adjust platoon x positions
					fplatoon2x = frontLX;
					eplatoon3x = frontLX;
					fsquadTBx  = frontLX;
					esquadTCx  = frontLX;
					if frontLY > room_height * 0.2
					{
						frontLY -= irandom_range(oGrid.cellSize * 10, oGrid.cellSize * 20);
						//Adjust platoon y positions
						fplatoon2y = frontLY + (frontSeparation * 2);
						eplatoon3y = frontLY - (frontSeparation * 2);
						fsquadTBy  = frontLY + frontSeparation;
						esquadTCy  = frontLY - frontSeparation;
					}
					break;
				case "RETREAT":
					frontLX = (room_width * 0.2) + irandom_range(-oGrid.cellSize * 10, oGrid.cellSize * 10);
					//Adjust platoon x positions
					fplatoon2x = frontLX;
					eplatoon3x = frontLX;
					fsquadTBx  = frontLX;
					esquadTCx  = frontLX;
					if frontLY < room_height * 0.8
					{
						frontLY += irandom_range(oGrid.cellSize * 10, oGrid.cellSize * 20);
						//Adjust platoon y positions
						fplatoon2y = frontLY + (frontSeparation * 2);
						eplatoon3y = frontLY - (frontSeparation * 2);
						fsquadTBy  = frontLY + frontSeparation;
						esquadTCy  = frontLY - frontSeparation;
					}
					break;
				case "DEFEND":
					frontLX = (room_width * 0.2) + irandom_range(-oGrid.cellSize * 10, oGrid.cellSize * 10);
					//Adjust platoon x positions
					fplatoon2x = frontLX;
					eplatoon3x = frontLX;
					fsquadTBx  = frontLX;
					esquadTCx  = frontLX;

					var nY = frontLY + irandom_range(-oGrid.cellSize * 10, oGrid.cellSize * 10);
					//Adjust platoon y positions
					fplatoon2y = nY + (frontSeparation * 2);
					eplatoon3y = nY - (frontSeparation * 2);
					fsquadTBy  = nY + frontSeparation;
					esquadTCy  = nY - frontSeparation;
					break;
			}
			//FRIEND
			fsquad2Ax = fplatoon2x;
			fsquad2Ay = fplatoon2y;
			// <-
			fsquad2Bx = fplatoon2x - (oGrid.cellSize * 10);
			fsquad2By = fplatoon2y + (oGrid.cellSize * 5);
			// ->
			fsquad2Cx = fplatoon2x + (oGrid.cellSize * 10);
			fsquad2Cy = fplatoon2y + (oGrid.cellSize * 5);
			// <--
			fsquad2Dx = fplatoon2x - (oGrid.cellSize * 30);
			fsquad2Dy = fplatoon2y + (oGrid.cellSize * 10);
			// -->
			fsquad2Ex = fplatoon2x + (oGrid.cellSize * 30);
			fsquad2Ey = fplatoon2y + (oGrid.cellSize * 10);
			//FOE
			// ||
			esquad3Ax = eplatoon3x;
			esquad3Ay = eplatoon3y;
			// <-
			esquad3Bx = eplatoon3x + (oGrid.cellSize * 10);
			esquad3By = eplatoon3y - (oGrid.cellSize * 5);
			// ->
			esquad3Cx = eplatoon3x - (oGrid.cellSize * 10);
			esquad3Cy = eplatoon3y - (oGrid.cellSize * 5);
			// <--
			esquad3Dx = eplatoon3x + (oGrid.cellSize * 30);
			esquad3Dy = eplatoon3y - (oGrid.cellSize * 10);
			// -->
			esquad3Ex = eplatoon3x - (oGrid.cellSize * 30);
			esquad3Ey = eplatoon3y - (oGrid.cellSize * 10);
			
			if !ds_list_empty(fSquadP2a) { MoveSquad(fPlatoon2, 0); }
			if !ds_list_empty(fSquadP2b) { MoveSquad(fPlatoon2, 1); }
			if !ds_list_empty(fSquadP2c) { MoveSquad(fPlatoon2, 2); }
			if !ds_list_empty(fSquadP2d) { MoveSquad(fPlatoon2, 3); }
			if !ds_list_empty(fSquadP2e) { MoveSquad(fPlatoon2, 4); }
			
			if !ds_list_empty(eSquadP3a) { MoveSquad(ePlatoon3, 0); }
			if !ds_list_empty(eSquadP3b) { MoveSquad(ePlatoon3, 1); }
			if !ds_list_empty(eSquadP3c) { MoveSquad(ePlatoon3, 2); }
			if !ds_list_empty(eSquadP3d) { MoveSquad(ePlatoon3, 3); }
			if !ds_list_empty(eSquadP3e) { MoveSquad(ePlatoon3, 4); }
			
			if !ds_list_empty(fSquadPTb) { MoveSquad(fPlatoonT, 1); }
			if !ds_list_empty(eSquadPTc) { MoveSquad(ePlatoonT, 2); }
			break;
		case "RIGHT":
			switch movement
			{
				case "ATTACK":
					frontRX = (room_width * 0.8) + irandom_range(-oGrid.cellSize * 10, oGrid.cellSize * 10);
					//Adjust platoon x positions
					fplatoon3x = frontRX;
					eplatoon2x = frontRX;
					fsquadTCx  = frontRX;
					esquadTBx  = frontRX;
					if frontRY > room_height * 0.2
					{
						frontRY -= irandom_range(oGrid.cellSize * 10, oGrid.cellSize * 20);
						//Adjust platoon y positions
						fplatoon3y = frontRY + (frontSeparation * 2);
						eplatoon2y = frontRY - (frontSeparation * 2);
						fsquadTCy  = frontRY + frontSeparation;
						esquadTBy  = frontRY - frontSeparation;
					}
					break;
				case "RETREAT":
					frontRX = (room_width * 0.8) + irandom_range(-oGrid.cellSize * 10, oGrid.cellSize * 10);
					//Adjust platoon x positions
					fplatoon3x = frontRX;
					eplatoon2x = frontRX;
					fsquadTCx  = frontRX;
					esquadTBx  = frontRX;
					if frontRY < room_height * 0.8
					{
						frontRY += irandom_range(oGrid.cellSize * 10, oGrid.cellSize * 20);
						//Adjust platoon y positions
						fplatoon3y = frontRY + (frontSeparation * 2);
						eplatoon2y = frontRY - (frontSeparation * 2);
						fsquadTCy  = frontRY + frontSeparation;
						esquadTBy  = frontRY - frontSeparation;
					}
					break;
				case "DEFEND":
					frontRX = (room_width * 0.8) + irandom_range(-oGrid.cellSize * 10, oGrid.cellSize * 10);
					//Adjust platoon x positions
					fplatoon3x = frontRX;
					eplatoon2x = frontRX;
					fsquadTCx  = frontRX;
					esquadTBx  = frontRX;

					var nY = frontRY + irandom_range(-oGrid.cellSize * 10, oGrid.cellSize * 10);
					//Adjust platoon y positions
					fplatoon3y = nY + (frontSeparation * 2);
					eplatoon2y = nY - (frontSeparation * 2);
					fsquadTCy  = nY + frontSeparation;
					esquadTBy  = nY - frontSeparation;
					break;
			}
			//FRIEND
			// ||
			fsquad3Ax = fplatoon3x;
			fsquad3Ay = fplatoon3y;
			// <-
			fsquad3Bx = fplatoon3x - (oGrid.cellSize * 10);
			fsquad3By = fplatoon3y + (oGrid.cellSize * 5);
			// ->
			fsquad3Cx = fplatoon3x + (oGrid.cellSize * 10);
			fsquad3Cy = fplatoon3y + (oGrid.cellSize * 5);
			// <--
			fsquad3Dx = fplatoon3x - (oGrid.cellSize * 30);
			fsquad3Dy = fplatoon3y + (oGrid.cellSize * 10);
			// -->
			fsquad3Ex = fplatoon3x + (oGrid.cellSize * 30);
			fsquad3Ey = fplatoon3y + (oGrid.cellSize * 10);
			//FOE
			// ||
			esquad2Ax = eplatoon2x;
			esquad2Ay = eplatoon2y;
			// <-
			esquad2Bx = eplatoon2x + (oGrid.cellSize * 10);
			esquad2By = eplatoon2y - (oGrid.cellSize * 5);
			// ->
			esquad2Cx = eplatoon2x - (oGrid.cellSize * 10);
			esquad2Cy = eplatoon2y - (oGrid.cellSize * 5);
			// <--
			esquad2Dx = eplatoon2x + (oGrid.cellSize * 30);
			esquad2Dy = eplatoon2y - (oGrid.cellSize * 10);
			// -->
			esquad2Ex = eplatoon2x - (oGrid.cellSize * 30);
			esquad2Ey = eplatoon2y - (oGrid.cellSize * 10);
			
			if !ds_list_empty(fSquadP3a) { MoveSquad(fPlatoon3, 0); }
			if !ds_list_empty(fSquadP3b) { MoveSquad(fPlatoon3, 1); }
			if !ds_list_empty(fSquadP3c) { MoveSquad(fPlatoon3, 2); }
			if !ds_list_empty(fSquadP3d) { MoveSquad(fPlatoon3, 3); }
			if !ds_list_empty(fSquadP3e) { MoveSquad(fPlatoon3, 4); }
			
			if !ds_list_empty(eSquadP2a) { MoveSquad(ePlatoon2, 0); }
			if !ds_list_empty(eSquadP2b) { MoveSquad(ePlatoon2, 1); }
			if !ds_list_empty(eSquadP2c) { MoveSquad(ePlatoon2, 2); }
			if !ds_list_empty(eSquadP2d) { MoveSquad(ePlatoon2, 3); }
			if !ds_list_empty(eSquadP2e) { MoveSquad(ePlatoon2, 4); }
			
			if !ds_list_empty(fSquadPTc) { MoveSquad(fPlatoonT, 2); }
			if !ds_list_empty(eSquadPTb) { MoveSquad(ePlatoonT, 1); }
			break;
	}
}