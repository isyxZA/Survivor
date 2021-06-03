showDebug = false;

guiWidth  = display_get_gui_width();
guiHeight = display_get_gui_height();

mouseX = device_mouse_x_to_gui(0);
mouseY = device_mouse_y_to_gui(0);

menuUItouch = false;

//Player UI setup
playerUI = true;
playerUItouch = false;

playerUIx = 4;//Top left X
playerUIy = guiHeight - (sprite_get_height(sUIa) + 4);//Top left Y

playerUIw = sprite_get_width(sUIa);
playerUIh = sprite_get_height(sUIa);

playerUIyR = playerUIy + (playerUIh * 0.9);//Rank Y

playerUImx = playerUIx + (playerUIw * 0.5);//Center X
playerUImy = playerUIy + (playerUIh * 0.5);//Center Y

playerUIlx = playerUIx + (playerUIw * 0.11);//Left tab X
playerUIrx = playerUIx + (playerUIw * 0.89);//Right tab X

playerUIy1 = playerUIy + (playerUIh * 0.25);//Center Y
playerUIy2 = playerUIy + (playerUIh * 0.4);//Center Y
playerUIy3 = playerUIy + (playerUIh * 0.55);//Center Y
playerUIy4 = playerUIy + (playerUIh * 0.7);//Center Y
playerUIy5 = playerUIy + (playerUIh * 0.85);//Center Y

touchL1 = false;
touchL2 = false;
touchL3 = false;
touchL4 = false;
touchL5 = false;

touchR1 = false;
touchR2 = false;
touchR3 = false;
touchR4 = false;
touchR5 = false;


//Selected UI setup
selectedUI = false;
selectedUItouch = false;

selectedUIxStart  = playerUIx + (sprite_get_width(sUIa) * 0.1);
selectedUIxTarget = playerUIx + sprite_get_width(sUIa);

selectedUIx = selectedUIxStart;
selectedUIy = playerUIy + (sprite_get_height(sUIa) * 0.05);

selectedUIw = sprite_get_width(sUIa) * 0.9;
selectedUIh = sprite_get_height(sUIa) * 0.9;

selectedUImx = selectedUIx + (selectedUIw * 0.5);//Center X
selectedUImy = selectedUIy + (selectedUIh * 0.5);//Center Y

selectedUIlx = selectedUIx + (selectedUIw * 0.1);//Left tab X
selectedUIrx = selectedUIx + (selectedUIw * 0.9);//Right tab X

selectedUIy1 = selectedUIy + (selectedUIh * 0.2);//Center Y
selectedUIy2 = selectedUIy + (selectedUIh * 0.35);//Center Y
selectedUIy3 = selectedUIy + (selectedUIh * 0.5);//Center Y
selectedUIy4 = selectedUIy + (selectedUIh * 0.65);//Center Y
selectedUIy5 = selectedUIy + (selectedUIh * 0.8);//Center Y

touchL1s = false;
touchL2s = false;
touchL3s = false;
touchL4s = false;
touchL5s = false;

touchR1s = false;
touchR2s = false;
touchR3s = false;
touchR4s = false;
touchR5s = false;