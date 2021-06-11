/// @description Get whether the mouse is touching the action menu or not 
function GetMenuTouch(button)
{
	switch menuLevel
	{
		case RESETMENU:
			break;
		case ACTIONMENU:
			switch button
			{
				case -1://Header
					if collision_rectangle(menuX+10, menuY+10, (menuX-20) + (menuWidth*menuRatio), (menuY-20) + (menuCellh*menuRatio), oMouse, false, true)
					{
						textHeader = "Click and Drag";
						return true;
					}
					else
					{
						textHeader = "Action Menu";
						return false;
					}
				case 0://Button from list index
					if collision_rectangle(menuX, (menuY+10) + (menuCellh*menuRatio), menuX + (menuWidth*menuRatio), (menuY-20) + ((menuCellh*menuRatio) * 2), oMouse, false, true)
					{
						if point_distance(oPlayer.x, oPlayer.y, oControl.selectedObj.x, oControl.selectedObj.y) < oPlayer.uVoiceRange
						{
							//For menu level 1
							var tText = "Click to speak"; 
							if menuList[| button] != tText { menuList[| button] = tText; }
							return true;
						}
						else
						{
							var tText = "Out of range!"; 
							if menuList[| button] != tText { menuList[| button] = tText; }
							return false;
						}
				
					}
					else
					{
						//For menu level 1
						var tText = "Dialog"; 
						if menuList[| button] != tText { menuList[| button] = tText; }
						return false;
					}
				case 1:
					if collision_rectangle(menuX, (menuY+10) + ((menuCellh*menuRatio) * 2), menuX + (menuWidth*menuRatio), (menuY-20) + ((menuCellh*menuRatio) * 3), oMouse, false, true)
					{
						//This will change per menu level\\
						//For menu level 1
						var tText = "Click to trade"; 
						if menuList[| button] != tText { menuList[| button] = tText; }
						return true;
					}
					else
					{
						//For menu level 1
						var tText = "Trade"; 
						if menuList[| button] != tText { menuList[| button] = tText; }
						return false;
					}
				case 2:
					if collision_rectangle(menuX, (menuY+10) + ((menuCellh*menuRatio) * 3), menuX + (menuWidth*menuRatio), (menuY-20) + ((menuCellh*menuRatio) * 4), oMouse, false, true)
					{
						//This will change per menu level\\
						//For menu level 1
						var tText = "Click to follow"; 
						if menuList[| button] != tText { menuList[| button] = tText; }
						return true;
					}
					else
					{
						//For menu level 1
						var tText = "Follow"; 
						if menuList[| button] != tText { menuList[| button] = tText; }
						return false;
					}
				case 3:
					if collision_rectangle(menuX, (menuY+10) + ((menuCellh*menuRatio) * 4), menuX + (menuWidth*menuRatio), (menuY-20) + ((menuCellh*menuRatio) * 5), oMouse, false, true)
					{
						return true;
					}
					else
					{
						return false;
					}
				default:
					return false
			}
			break;
		case ACTIONMENU_E:
			switch button
			{
				case -1://Header
					if collision_rectangle(menuX+10, menuY+10, (menuX-20) + (menuWidth*menuRatio), (menuY-20) + (menuCellh*menuRatio), oMouse, false, true)
					{
						textHeader = "Click and Drag";
						return true;
					}
					else
					{
						textHeader = "Action Menu";
						return false;
					}
				case 0://Button from list index
					if collision_rectangle(menuX, (menuY+10) + (menuCellh*menuRatio), menuX + (menuWidth*menuRatio), (menuY-20) + ((menuCellh*menuRatio) * 2), oMouse, false, true)
					{
						if point_distance(oPlayer.x, oPlayer.y, oControl.selectedObj.x, oControl.selectedObj.y) < oPlayer.uAttackRange
						{
							//For menu level 1
							var tText = "Click to attack"; 
							if menuList[| button] != tText { menuList[| button] = tText; }
							return true;
						}
						else
						{
							var tText = "Out of range!"; 
							if menuList[| button] != tText { menuList[| button] = tText; }
							return false;
						}
				
					}
					else
					{
						//For menu level 1
						var tText = "Attack"; 
						if menuList[| button] != tText { menuList[| button] = tText; }
						return false;
					}
				case 1:
					if collision_rectangle(menuX, (menuY+10) + ((menuCellh*menuRatio) * 2), menuX + (menuWidth*menuRatio), (menuY-20) + ((menuCellh*menuRatio) * 3), oMouse, false, true)
					{
						var tText = "Click to follow"; 
						if menuList[| button] != tText { menuList[| button] = tText; }
						return true;
					}
					else
					{
						var tText = "Follow"; 
						if menuList[| button] != tText { menuList[| button] = tText; }
						return false;
					}
				case 2:
					if collision_rectangle(menuX, (menuY+10) + ((menuCellh*menuRatio) * 3), menuX + (menuWidth*menuRatio), (menuY-20) + ((menuCellh*menuRatio) * 4), oMouse, false, true)
					{
						return true;
					}
					else
					{
						return false;
					}
				default:
					return false
			}
			break;
	}
	
}