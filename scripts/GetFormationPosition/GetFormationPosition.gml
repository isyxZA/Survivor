/// @description Set the unit position offset according to the chosen formation
/// @param type Type of unit
/// @param squadPos Unit position in it's squad
/// @param formation Chosen formation
function GetFormationPosition(type, squadPos, formation)
{
	switch type
	{
		case PLAYER:
		case F_RIFLEMAN:
			switch squadPos
			{
				case 0://Leader
					switch formation
					{
						case "SQUARE":
							xAdj = 0;
							yAdj = 0;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 1://-
					switch formation
					{
						case "SQUARE":
							xAdj = 0;
							yAdj = oGrid.cellSize * 2;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 2://<-
					switch formation
					{
						case "SQUARE":
							xAdj = -oGrid.cellSize * 2;
							yAdj = oGrid.cellSize * 2;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 3://<--
					switch formation
					{
						case "SQUARE":
							xAdj = -oGrid.cellSize * 4;
							yAdj = oGrid.cellSize * 2;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 4://->
					switch formation
					{
						case "SQUARE":
							xAdj = oGrid.cellSize * 2;
							yAdj = oGrid.cellSize * 2;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 5://-->
					switch formation
					{
						case "SQUARE":
							xAdj = oGrid.cellSize * 4;
							yAdj = oGrid.cellSize * 2;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 6://-|
					switch formation
					{
						case "SQUARE":
							xAdj = 0;
							yAdj = oGrid.cellSize * 4;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 7://<-|
					switch formation
					{
						case "SQUARE":
							xAdj = -oGrid.cellSize * 2;
							yAdj = oGrid.cellSize * 4;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 8://<--|
					switch formation
					{
						case "SQUARE":
							xAdj = -oGrid.cellSize * 4;
							yAdj = oGrid.cellSize * 4;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 9://->|
					switch formation
					{
						case "SQUARE":
							xAdj = oGrid.cellSize * 2;
							yAdj = oGrid.cellSize * 4;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 10://-->|
					switch formation
					{
						case "SQUARE":
							xAdj = oGrid.cellSize * 4;
							yAdj = oGrid.cellSize * 4;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
			}
			break;
		case F_TANK:
			switch squadPos
			{
				case 0://Leader
					switch formation
					{
						case "SQUARE":
							xAdj = 0;
							yAdj = 0;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 1://<-
					switch formation
					{
						case "SQUARE":
							xAdj = -oGrid.cellSize * 8;
							yAdj = oGrid.cellSize * 2;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 2://<--
					switch formation
					{
						case "SQUARE":
							xAdj = -oGrid.cellSize * 16;
							yAdj = oGrid.cellSize * 2;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 3://->
					switch formation
					{
						case "SQUARE":
							xAdj = oGrid.cellSize * 8;
							yAdj = oGrid.cellSize * 2;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 4://-->
					switch formation
					{
						case "SQUARE":
							xAdj = oGrid.cellSize * 16;
							yAdj = oGrid.cellSize * 2;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
			}
			break;
		case E_RIFLEMAN:
			switch squadPos
			{
				case 0://Leader
					switch formation
					{
						case "SQUARE":
							xAdj = 0;
							yAdj = 0;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 1://-
					switch formation
					{
						case "SQUARE":
							xAdj = 0;
							yAdj = -oGrid.cellSize * 2;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 2://<-
					switch formation
					{
						case "SQUARE":
							xAdj = -oGrid.cellSize * 2;
							yAdj = -oGrid.cellSize * 2;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 3://<--
					switch formation
					{
						case "SQUARE":
							xAdj = -oGrid.cellSize * 4;
							yAdj = -oGrid.cellSize * 2;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 4://->
					switch formation
					{
						case "SQUARE":
							xAdj = oGrid.cellSize * 2;
							yAdj = -oGrid.cellSize * 2;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 5://-->
					switch formation
					{
						case "SQUARE":
							xAdj = oGrid.cellSize * 4;
							yAdj = -oGrid.cellSize * 2;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 6://-|
					switch formation
					{
						case "SQUARE":
							xAdj = 0;
							yAdj = -oGrid.cellSize * 4;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 7://<-|
					switch formation
					{
						case "SQUARE":
							xAdj = -oGrid.cellSize * 2;
							yAdj = -oGrid.cellSize * 4;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 8://<--|
					switch formation
					{
						case "SQUARE":
							xAdj = -oGrid.cellSize * 4;
							yAdj = -oGrid.cellSize * 4;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 9://->|
					switch formation
					{
						case "SQUARE":
							xAdj = oGrid.cellSize * 2;
							yAdj = -oGrid.cellSize * 4;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 10://-->|
					switch formation
					{
						case "SQUARE":
							xAdj = oGrid.cellSize * 4;
							yAdj = -oGrid.cellSize * 4;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
			}
			break;
		case E_TANK:
			switch squadPos
			{
				case 0://Leader
					switch formation
					{
						case "SQUARE":
							xAdj = 0;
							yAdj = 0;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 1://<-
					switch formation
					{
						case "SQUARE":
							xAdj = oGrid.cellSize * 8;
							yAdj = -oGrid.cellSize * 2;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 2://<--
					switch formation
					{
						case "SQUARE":
							xAdj = oGrid.cellSize * 16;
							yAdj = -oGrid.cellSize * 2;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 3://->
					switch formation
					{
						case "SQUARE":
							xAdj = -oGrid.cellSize * 8;
							yAdj = -oGrid.cellSize * 2;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
				case 4://-->
					switch formation
					{
						case "SQUARE":
							xAdj = -oGrid.cellSize * 16;
							yAdj = -oGrid.cellSize * 2;
							break;
						case "LINE":
							xAdj = 0;
							yAdj = 0;
							break;
					}
					break;
			}
			break;
		
	}
}