showDebug = false;

guiWidth  = display_get_gui_width();
guiHeight = display_get_gui_height();

mouseX = device_mouse_x_to_gui(0);
mouseY = device_mouse_y_to_gui(0);

menuUItouch = false;

playerName = "";
playerRank = "";
playerPlatoon = "";
playerSquad = "";

showHealth = false;
showBio = false;
showInventory = false;

cFollow = c_silver;

//Player UI setup
playerUI = true;
playerUItouch = false;

playerUIx = 4;//Top left X
playerUIy = guiHeight - (sprite_get_height(sUIa) + 4);//Top left Y

playerUIw = sprite_get_width(sUIa);
playerUIh = sprite_get_height(sUIa);

playerUIxT = playerUIx + 8;//Dialog X
playerUIyT = playerUIy - 4;//Dialog Y

//playerUIxR = playerUIx + (playerUIw * 0.62);//Rank X
//playerUIyR = playerUIy + (playerUIh * 0.78);//Rank Y

playerUImx = playerUIx + (playerUIw * 0.5);//Center X
playerUImy = playerUIy + (playerUIh * 0.5);//Center Y

playerUIlx = playerUIx + (playerUIw * 0.11);//Left tab X
playerUIrx = playerUIx + (playerUIw * 0.89);//Right tab X

playerUIy1 = playerUIy + (playerUIh * 0.3);
playerUIy2 = playerUIy + (playerUIh * 0.45);
playerUIy3 = playerUIy + (playerUIh * 0.6);
playerUIy4 = playerUIy + (playerUIh * 0.75);
//playerUIy5 = playerUIy + (playerUIh * 0.85);

touchL1 = false;
touchL2 = false;
touchL3 = false;
touchL4 = false;
//touchL5 = false;

touchR1 = false;
touchR2 = false;
touchR3 = false;
touchR4 = false;
//touchR5 = false;

//Selected UI setup
selectedName = "";
selectedRank = "";
selectedPlatoon = "";
selectedSquad = "";

selectedUI = false;
selectedUItouch = false;

selectedUIxStart  = playerUIx + (sprite_get_width(sUIa) * 0.1);
selectedUIxTarget = playerUIx + sprite_get_width(sUIa);

selectedUIx = selectedUIxStart;
selectedUIy = playerUIy + (sprite_get_height(sUIa) * 0.05);

selectedUIw = sprite_get_width(sUIa) * 0.9;
selectedUIh = sprite_get_height(sUIa) * 0.9;

selectedUIxT = selectedUIx + 6;//Dialog X
selectedUIyT = selectedUIy;//Dialog Y

//selectedUIxR = selectedUIx + (selectedUIw * 0.62);//Rank X
//selectedUIyR = selectedUIy + (selectedUIh * 0.78);//Rank Y

selectedUImx = selectedUIx + (selectedUIw * 0.5);//Center X
selectedUImy = selectedUIy + (selectedUIh * 0.5);//Center Y

/*
selectedUIlx = selectedUIx + (selectedUIw * 0.1);//Left tab X
selectedUIrx = selectedUIx + (selectedUIw * 0.9);//Right tab X

selectedUIy1 = selectedUIy + (selectedUIh * 0.2);
selectedUIy2 = selectedUIy + (selectedUIh * 0.35);
selectedUIy3 = selectedUIy + (selectedUIh * 0.5);
selectedUIy4 = selectedUIy + (selectedUIh * 0.65);
selectedUIy5 = selectedUIy + (selectedUIh * 0.8);

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
*/

//Dialog init
dialogLevel = 0;
playerDialog = ds_list_create();
selectedDialog = ds_list_create();

//Dialog choices
optionsDialog = ds_list_create();
optionsDisplay = false;
optionsUItouch = false;
optionsUIyTarget = playerUIyT - 4;
optionsUIh = 80;
optionsUIy = optionsUIyTarget + optionsUIh;
option1 = false;
option2 = false;
option3 = false;

dialogBranch = "ZERO";
dialogTopic = "NONE";

//Inventory
playerINx1 = playerUImx - 40;
playerINx2 = playerUImx;
playerINx3 = playerUImx + 40;

playerINy1 = playerUImy - 40;
playerINy2 = playerUImy;
playerINy3 = playerUImy + 40;

touchIN1 = false;
touchIN2 = false;
touchIN3 = false;
touchIN4 = false;
touchIN5 = false;
touchIN6 = false;
touchIN7 = false;
touchIN8 = false;
touchIN9 = false;