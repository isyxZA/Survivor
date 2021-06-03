mouseX = device_mouse_x_to_gui(0);
mouseY = device_mouse_y_to_gui(0);

//Player UI buttons
//Left tab
if point_distance(mouseX, mouseY, playerUIlx, playerUIy1) < 10 { touchL1 = true; } else { touchL1 = false; }
if point_distance(mouseX, mouseY, playerUIlx, playerUIy2) < 10 { touchL2 = true; } else { touchL2 = false; }
if point_distance(mouseX, mouseY, playerUIlx, playerUIy3) < 10 { touchL3 = true; } else { touchL3 = false; }
if point_distance(mouseX, mouseY, playerUIlx, playerUIy4) < 10 { touchL4 = true; } else { touchL4 = false; }
if point_distance(mouseX, mouseY, playerUIlx, playerUIy5) < 10 { touchL5 = true; } else { touchL5 = false; }
//Right tab
if point_distance(mouseX, mouseY, playerUIrx, playerUIy1) < 10 { touchR1 = true; } else { touchR1 = false; }
if point_distance(mouseX, mouseY, playerUIrx, playerUIy2) < 10 { touchR2 = true; } else { touchR2 = false; }
if point_distance(mouseX, mouseY, playerUIrx, playerUIy3) < 10 { touchR3 = true; } else { touchR3 = false; }
if point_distance(mouseX, mouseY, playerUIrx, playerUIy4) < 10 { touchR4 = true; } else { touchR4 = false; }
if point_distance(mouseX, mouseY, playerUIrx, playerUIy5) < 10 { touchR5 = true; } else { touchR5 = false; }

if point_distance(mouseX, mouseY, playerUImx, playerUImy) < (playerUIw * 0.6) { playerUItouch = true; } else { playerUItouch = false; }

//Button actions


if oControl.selectedObj != noone
{
	selectedUI = true;
	if selectedUIx != selectedUIxTarget 
	{ 
		selectedUIx = lerp(selectedUIx, selectedUIxTarget, 0.1);
		selectedUImx = selectedUIx + (selectedUIw * 0.5);//Center X
		selectedUIlx = selectedUIx + (selectedUIw * 0.1);//Left tab X
		selectedUIrx = selectedUIx + (selectedUIw * 0.9);//Right tab X
	}
	//Selected UI buttons
	//Left tab
	if point_distance(mouseX, mouseY, selectedUIlx, selectedUIy1) < 10 { touchL1s = true; } else { touchL1s = false; }
	if point_distance(mouseX, mouseY, selectedUIlx, selectedUIy2) < 10 { touchL2s = true; } else { touchL2s = false; }
	if point_distance(mouseX, mouseY, selectedUIlx, selectedUIy3) < 10 { touchL3s = true; } else { touchL3s = false; }
	if point_distance(mouseX, mouseY, selectedUIlx, selectedUIy4) < 10 { touchL4s = true; } else { touchL4s = false; }
	if point_distance(mouseX, mouseY, selectedUIlx, selectedUIy5) < 10 { touchL5s = true; } else { touchL5s = false; }
	//Right tab
	if point_distance(mouseX, mouseY, selectedUIrx, selectedUIy1) < 10 { touchR1s = true; } else { touchR1s = false; }
	if point_distance(mouseX, mouseY, selectedUIrx, selectedUIy2) < 10 { touchR2s = true; } else { touchR2s = false; }
	if point_distance(mouseX, mouseY, selectedUIrx, selectedUIy3) < 10 { touchR3s = true; } else { touchR3s = false; }
	if point_distance(mouseX, mouseY, selectedUIrx, selectedUIy4) < 10 { touchR4s = true; } else { touchR4s = false; }
	if point_distance(mouseX, mouseY, selectedUIrx, selectedUIy5) < 10 { touchR5s = true; } else { touchR5s = false; }
	
	if point_distance(mouseX, mouseY, selectedUImx, selectedUImy) < (selectedUIw * 0.6) { selectedUItouch = true; } 
		else { selectedUItouch = false; }

	//Button actions
	
	
}
else
{
	selectedUI = false;
	selectedUItouch = false;
	if selectedUIx != selectedUIxStart 
	{ 
		selectedUIx = lerp(selectedUIx, selectedUIxStart, 0.1); 
		selectedUImx = selectedUIx + (selectedUIw * 0.5);//Center X
	}
}

if playerUItouch || selectedUItouch || menuUItouch { oControl.canSelect = false; } else { oControl.canSelect = true; }