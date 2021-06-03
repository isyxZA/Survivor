/// @description Get whether the mouse is touching the action menu or not 
function GetMenuTouch(button)
{
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
				//This will change per menu level\\
				//For menu level 1
				var tText = "Click to chat"; 
				if menuList[| button] != tText { menuList[| button] = tText; }
				return true;
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
		case 2:
			if collision_rectangle(menuX, (menuY+10) + ((menuCellh*menuRatio) * 3), menuX + (menuWidth*menuRatio), (menuY-20) + ((menuCellh*menuRatio) * 4), oMouse, false, true)
			{
				//This will change per menu level\\
				//For menu level 1
				var tText = "Click to attack"; 
				if menuList[| button] != tText { menuList[| button] = tText; }
				return true;
			}
			else
			{
				//For menu level 1
				var tText = "Attack"; 
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
		case 4:
			if collision_rectangle(menuX, (menuY+10) + ((menuCellh*menuRatio) * 5), menuX + (menuWidth*menuRatio), (menuY-20) + ((menuCellh*menuRatio) * 6), oMouse, false, true)
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
}