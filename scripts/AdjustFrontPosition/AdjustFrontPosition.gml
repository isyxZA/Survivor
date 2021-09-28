/// @description Keep the front positions relative to center
/// @param front Which front to adjust
/// @param movement Type of troop movement to execute
function AdjustFrontPosition(front, movement)
{
	var orders = "";
	switch front
	{
		case "CENTER":
			switch movement
			{
				case "ATTACK":
					orders = "ATTACK_MOVE";
					frontCX = x + irandom_range(-oGrid.cellSize * 10, oGrid.cellSize * 10);
					//Adjust platoon x positions
					fplatoon1x = frontCX;
					eplatoon1x = frontCX;
					fsquadTAx  = frontCX;
					esquadTAx  = frontCX;
					fsquadLAx  = frontCX;
					esquadLAx  = frontCX;
					if frontCY > room_height * 0.2
					{
						frontCY -= irandom_range(oGrid.cellSize * 10, oGrid.cellSize * 20);
						//Adjust platoon y positions
						fsquadTAy  = frontCY + frontSeparation;
						esquadTAy  = frontCY - frontSeparation;
						fsquadLAy  = frontCY + (frontSeparation * 2);
						esquadLAy  = frontCY - (frontSeparation * 2);
						fplatoon1y = frontCY + (frontSeparation * 3);
						eplatoon1y = frontCY - (frontSeparation * 3);
					}
					break;
				case "RETREAT":
					orders = "RETREAT_MOVE";
					frontCX = x + irandom_range(-oGrid.cellSize * 10, oGrid.cellSize * 10);
					//Adjust platoon x positions
					fplatoon1x = frontCX;
					eplatoon1x = frontCX;
					fsquadTAx  = frontCX;
					esquadTAx  = frontCX;
					fsquadLAx  = frontCX;
					esquadLAx  = frontCX;
					if frontCY > room_height * 0.2
					{
						frontCY += irandom_range(oGrid.cellSize * 10, oGrid.cellSize * 20);
						//Adjust platoon y positions
						fsquadTAy  = frontCY + frontSeparation;
						esquadTAy  = frontCY - frontSeparation;
						fsquadLAy  = frontCY + (frontSeparation * 2);
						esquadLAy  = frontCY - (frontSeparation * 2);
						fplatoon1y = frontCY + (frontSeparation * 3);
						eplatoon1y = frontCY - (frontSeparation * 3);
					}
					break;
				case "DEFEND":
					orders = "DEFEND_MOVE";
					frontCX = x + irandom_range(-oGrid.cellSize * 10, oGrid.cellSize * 10);
					//Adjust platoon x positions
					fplatoon1x = frontCX;
					eplatoon1x = frontCX;
					fsquadTAx  = frontCX;
					esquadTAx  = frontCX;
					fsquadLAx  = frontCX;
					esquadLAx  = frontCX;
					if frontCY < room_height * 0.8
					{
						var nY = frontCY + irandom_range(-oGrid.cellSize * 10, oGrid.cellSize * 10);
						//Adjust platoon y positions
						fsquadTAy  = nY + frontSeparation;
						esquadTAy  = nY - frontSeparation;
						fsquadLAy  = nY + (frontSeparation * 2);
						esquadLAy  = nY - (frontSeparation * 2);
						fplatoon1y = nY + (frontSeparation * 3);
						eplatoon1y = nY - (frontSeparation * 3);
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
			
			if !ds_list_empty(fSquadP1a) { MoveSquad(fSquadP1a); IssueOrder(fSquadP1a, orders); }
			if !ds_list_empty(fSquadP1b) { MoveSquad(fSquadP1b); IssueOrder(fSquadP1b, orders); }
			if !ds_list_empty(fSquadP1c) { MoveSquad(fSquadP1c); IssueOrder(fSquadP1c, orders); }
			if !ds_list_empty(fSquadP1d) { MoveSquad(fSquadP1d); IssueOrder(fSquadP1d, orders); }
			if !ds_list_empty(fSquadP1e) { MoveSquad(fSquadP1e); IssueOrder(fSquadP1e, orders); }
			
			if !ds_list_empty(eSquadP1a) { MoveSquad(eSquadP1a); }
			if !ds_list_empty(eSquadP1b) { MoveSquad(eSquadP1b); }
			if !ds_list_empty(eSquadP1c) { MoveSquad(eSquadP1c); }
			if !ds_list_empty(eSquadP1d) { MoveSquad(eSquadP1d); }
			if !ds_list_empty(eSquadP1e) { MoveSquad(eSquadP1e); }
			
			if !ds_list_empty(fSquadPTa) { MoveSquad(fSquadPTa); }
			if !ds_list_empty(eSquadPTa) { MoveSquad(eSquadPTa); }
			
			if !ds_list_empty(fSquadPLa) { MoveSquad(fSquadPLa); }
			if !ds_list_empty(eSquadPLa) { MoveSquad(eSquadPLa); }
			break;
		case "LEFT":
			switch movement
			{
				case "ATTACK":
					orders = "ATTACK_MOVE";
					frontLX = (room_width * 0.2) + irandom_range(-oGrid.cellSize * 10, oGrid.cellSize * 10);
					//Adjust platoon x positions
					fplatoon2x = frontLX;
					eplatoon3x = frontLX;
					fsquadTBx  = frontLX;
					esquadTCx  = frontLX;
					fsquadLBx  = frontLX + oGrid.cellSize * 30;
					esquadLCx  = frontLX + oGrid.cellSize * 30;
					if frontLY > room_height * 0.2
					{
						frontLY -= irandom_range(oGrid.cellSize * 10, oGrid.cellSize * 20);
						//Adjust platoon y positions
						fsquadTBy  = frontLY + frontSeparation;
						esquadTCy  = frontLY - frontSeparation;
						fsquadLBy  = frontLY + (frontSeparation * 2);
						esquadLCy  = frontLY - (frontSeparation * 2);
						fplatoon2y = frontLY + (frontSeparation * 2);
						eplatoon3y = frontLY - (frontSeparation * 2);
					}
					break;
				case "RETREAT":
					orders = "RETREAT_MOVE";
					frontLX = (room_width * 0.2) + irandom_range(-oGrid.cellSize * 10, oGrid.cellSize * 10);
					//Adjust platoon x positions
					fplatoon2x = frontLX;
					eplatoon3x = frontLX;
					fsquadTBx  = frontLX;
					esquadTCx  = frontLX;
					fsquadLBx  = frontLX + oGrid.cellSize * 30;
					esquadLCx  = frontLX + oGrid.cellSize * 30;
					if frontLY < room_height * 0.8
					{
						frontLY += irandom_range(oGrid.cellSize * 10, oGrid.cellSize * 20);
						//Adjust platoon y positions
						fsquadTBy  = frontLY + frontSeparation;
						esquadTCy  = frontLY - frontSeparation;
						fsquadLBy  = frontLY + (frontSeparation * 2);
						esquadLCy  = frontLY - (frontSeparation * 2);
						fplatoon2y = frontLY + (frontSeparation * 3);
						eplatoon3y = frontLY - (frontSeparation * 3);
					}
					break;
				case "DEFEND":
					orders = "DEFEND_MOVE";
					frontLX = (room_width * 0.2) + irandom_range(-oGrid.cellSize * 10, oGrid.cellSize * 10);
					//Adjust platoon x positions
					fplatoon2x = frontLX;
					eplatoon3x = frontLX;
					fsquadTBx  = frontLX;
					esquadTCx  = frontLX;
					fsquadLBx  = frontLX + oGrid.cellSize * 30;
					esquadLCx  = frontLX + oGrid.cellSize * 30;
					var nY = frontLY + irandom_range(-oGrid.cellSize * 10, oGrid.cellSize * 10);
					//Adjust platoon y positions
					fsquadTBy  = nY + frontSeparation;
					esquadTCy  = nY - frontSeparation;
					fsquadLBy  = nY + (frontSeparation * 2);
					esquadLCy  = nY - (frontSeparation * 2);
					fplatoon2y = nY + (frontSeparation * 3);
					eplatoon3y = nY - (frontSeparation * 3);
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
			
			if !ds_list_empty(fSquadP2a) { MoveSquad(fSquadP2a); IssueOrder(fSquadP2a, orders); }
			if !ds_list_empty(fSquadP2b) { MoveSquad(fSquadP2b); IssueOrder(fSquadP2b, orders); }
			if !ds_list_empty(fSquadP2c) { MoveSquad(fSquadP2c); IssueOrder(fSquadP2c, orders); }
			if !ds_list_empty(fSquadP2d) { MoveSquad(fSquadP2d); IssueOrder(fSquadP2d, orders); }
			if !ds_list_empty(fSquadP2e) { MoveSquad(fSquadP2e); IssueOrder(fSquadP2e, orders); }
			
			if !ds_list_empty(eSquadP3a) { MoveSquad(eSquadP3a); }
			if !ds_list_empty(eSquadP3b) { MoveSquad(eSquadP3b); }
			if !ds_list_empty(eSquadP3c) { MoveSquad(eSquadP3c); }
			if !ds_list_empty(eSquadP3d) { MoveSquad(eSquadP3d); }
			if !ds_list_empty(eSquadP3e) { MoveSquad(eSquadP3e); }
			
			if !ds_list_empty(fSquadPTb) { MoveSquad(fSquadPTb); }
			if !ds_list_empty(eSquadPTc) { MoveSquad(eSquadPTc); }
			
			if !ds_list_empty(fSquadPLb) { MoveSquad(fSquadPLb); }
			if !ds_list_empty(eSquadPLc) { MoveSquad(eSquadPLc); }
			break;
		case "RIGHT":
			switch movement
			{
				case "ATTACK":
					orders = "ATTACK_MOVE";
					frontRX = (room_width * 0.8) + irandom_range(-oGrid.cellSize * 10, oGrid.cellSize * 10);
					//Adjust platoon x positions
					fplatoon3x = frontRX;
					eplatoon2x = frontRX;
					fsquadTCx  = frontRX;
					esquadTBx  = frontRX;
					fsquadLCx  = frontRX - (oGrid.cellSize * 30);
					esquadLBx  = frontRX - (oGrid.cellSize * 30);
					if frontRY > room_height * 0.2
					{
						frontRY -= irandom_range(oGrid.cellSize * 10, oGrid.cellSize * 20);
						//Adjust platoon y positions
						fsquadTCy  = frontRY + frontSeparation;
						esquadTBy  = frontRY - frontSeparation;
						fsquadLCy  = frontRY + (frontSeparation * 2);
						esquadLBy  = frontRY - (frontSeparation * 2);
						fplatoon3y = frontRY + (frontSeparation * 3);
						eplatoon2y = frontRY - (frontSeparation * 3);
					}
					break;
				case "RETREAT":
					orders = "RETREAT_MOVE";
					frontRX = (room_width * 0.8) + irandom_range(-oGrid.cellSize * 10, oGrid.cellSize * 10);
					//Adjust platoon x positions
					fplatoon3x = frontRX;
					eplatoon2x = frontRX;
					fsquadTCx  = frontRX;
					esquadTBx  = frontRX;
					fsquadLCx  = frontRX - (oGrid.cellSize * 30);
					esquadLBx  = frontRX - (oGrid.cellSize * 30);
					if frontRY < room_height * 0.8
					{
						frontRY += irandom_range(oGrid.cellSize * 10, oGrid.cellSize * 20);
						//Adjust platoon y positions
						fsquadTCy  = frontRY + frontSeparation;
						esquadTBy  = frontRY - frontSeparation;
						fsquadLCy  = frontRY + (frontSeparation * 2);
						esquadLBy  = frontRY - (frontSeparation * 2);
						fplatoon3y = frontRY + (frontSeparation * 3);
						eplatoon2y = frontRY - (frontSeparation * 3);
					}
					break;
				case "DEFEND":
					orders = "DEFEND_MOVE";
					frontRX = (room_width * 0.8) + irandom_range(-oGrid.cellSize * 10, oGrid.cellSize * 10);
					//Adjust platoon x positions
					fplatoon3x = frontRX;
					eplatoon2x = frontRX;
					fsquadTCx  = frontRX;
					esquadTBx  = frontRX;
					fsquadLCx  = frontRX - (oGrid.cellSize * 30);
					esquadLBx  = frontRX - (oGrid.cellSize * 30);
					var nY = frontRY + irandom_range(-oGrid.cellSize * 10, oGrid.cellSize * 10);
					//Adjust platoon y positions
					fsquadTCy  = nY + frontSeparation;
					esquadTBy  = nY - frontSeparation;
					fsquadLCy  = nY + (frontSeparation * 2);
					esquadLBy  = nY - (frontSeparation * 2);
					fplatoon3y = nY + (frontSeparation * 3);
					eplatoon2y = nY - (frontSeparation * 3);
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
			
			if !ds_list_empty(fSquadP3a) { MoveSquad(fSquadP3a); IssueOrder(fSquadP3a, orders); }
			if !ds_list_empty(fSquadP3b) { MoveSquad(fSquadP3b); IssueOrder(fSquadP3b, orders); }
			if !ds_list_empty(fSquadP3c) { MoveSquad(fSquadP3c); IssueOrder(fSquadP3c, orders); }
			if !ds_list_empty(fSquadP3d) { MoveSquad(fSquadP3d); IssueOrder(fSquadP3d, orders); }
			if !ds_list_empty(fSquadP3e) { MoveSquad(fSquadP3e); IssueOrder(fSquadP3e, orders); }
			
			if !ds_list_empty(eSquadP2a) { MoveSquad(eSquadP2a); }
			if !ds_list_empty(eSquadP2b) { MoveSquad(eSquadP2b); }
			if !ds_list_empty(eSquadP2c) { MoveSquad(eSquadP2c); }
			if !ds_list_empty(eSquadP2d) { MoveSquad(eSquadP2d); }
			if !ds_list_empty(eSquadP2e) { MoveSquad(eSquadP2e); }
			
			if !ds_list_empty(fSquadPTc) { MoveSquad(fSquadPTc); }
			if !ds_list_empty(eSquadPTb) { MoveSquad(eSquadPTb); }
			
			if !ds_list_empty(fSquadPLc) { MoveSquad(fSquadPLc); }
			if !ds_list_empty(eSquadPLb) { MoveSquad(eSquadPLb); }
			break;
	}
}