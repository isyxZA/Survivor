spawnCell = noone;
squadSize = 11;
xAdj = 0;
yAdj = 0;
cellX = 0;
cellY = 0;

//Friendly forces init
//PLATOON 1
createfPlatoon1 = true;
movefPlatoon1 = false;

fPlatoon1 = ds_list_create();//First Platoon
fPlatoon1X = room_width * 0.5;
fPlatoon1Y = room_height * 0.8;

fSquadP1a = ds_list_create();//Able squad
fSquadP1b = ds_list_create();//Bravo squad
fSquadP1c = ds_list_create();//Charlie squad
fSquadP1d = ds_list_create();//Delta squad
fSquadP1e = ds_list_create();//Echo squad

fsquadLeadP1a = noone;
fsquadLeadP1b = noone;
fsquadLeadP1c = noone;
fsquadLeadP1d = noone;
fsquadLeadP1e = noone;

fPlatoon1[| 0] = fSquadP1a;
ds_list_mark_as_list(fPlatoon1, 0);
fPlatoon1[| 1] = fSquadP1b;
ds_list_mark_as_list(fPlatoon1, 1);
fPlatoon1[| 2] = fSquadP1c;
ds_list_mark_as_list(fPlatoon1, 2);
fPlatoon1[| 3] = fSquadP1d;
ds_list_mark_as_list(fPlatoon1, 3);
fPlatoon1[| 4] = fSquadP1e;
ds_list_mark_as_list(fPlatoon1, 4);

//PLATOON 2
createfPlatoon2 = true;
movefPlatoon2 = false;

fPlatoon2 = ds_list_create();//First Platoon
fPlatoon2X = room_width * 0.3;
fPlatoon2Y = room_height * 0.8;

fSquadP2a = ds_list_create();//Able squad
fSquadP2b = ds_list_create();//Bravo squad
fSquadP2c = ds_list_create();//Charlie squad
fSquadP2d = ds_list_create();//Delta squad
fSquadP2e = ds_list_create();//Echo squad

fsquadLeadP2a = noone;
fsquadLeadP2b = noone;
fsquadLeadP2c = noone;
fsquadLeadP2d = noone;
fsquadLeadP2e = noone;

fPlatoon2[| 0] = fSquadP2a;
ds_list_mark_as_list(fPlatoon2, 0);
fPlatoon2[| 1] = fSquadP2b;
ds_list_mark_as_list(fPlatoon2, 1);
fPlatoon2[| 2] = fSquadP2c;
ds_list_mark_as_list(fPlatoon2, 2);
fPlatoon2[| 3] = fSquadP2d;
ds_list_mark_as_list(fPlatoon2, 3);
fPlatoon2[| 4] = fSquadP2e;
ds_list_mark_as_list(fPlatoon2, 4);

//PLATOON 3
createfPlatoon3 = true;
movefPlatoon3 = false;

fPlatoon3 = ds_list_create();//First Platoon
fPlatoon3X = room_width * 0.7;
fPlatoon3Y = room_height * 0.8;

fSquadP3a = ds_list_create();//Able squad
fSquadP3b = ds_list_create();//Bravo squad
fSquadP3c = ds_list_create();//Charlie squad
fSquadP3d = ds_list_create();//Delta squad
fSquadP3e = ds_list_create();//Echo squad

fsquadLeadP3a = noone;
fsquadLeadP3b = noone;
fsquadLeadP3c = noone;
fsquadLeadP3d = noone;
fsquadLeadP3e = noone;

fPlatoon3[| 0] = fSquadP3a;
ds_list_mark_as_list(fPlatoon3, 0);
fPlatoon3[| 1] = fSquadP3b;
ds_list_mark_as_list(fPlatoon3, 1);
fPlatoon3[| 2] = fSquadP3c;
ds_list_mark_as_list(fPlatoon3, 2);
fPlatoon3[| 3] = fSquadP3d;
ds_list_mark_as_list(fPlatoon3, 3);
fPlatoon3[| 4] = fSquadP3e;
ds_list_mark_as_list(fPlatoon3, 4);

//Enemy forces init
//PLATOON 1
createePlatoon1 = true;
moveePlatoon1 = false;

ePlatoon1 = ds_list_create();//First Platoon
ePlatoon1X = room_width * 0.5;
ePlatoon1Y = room_height * 0.2;

eSquadP1a = ds_list_create();//Able squad
eSquadP1b = ds_list_create();//Bravo squad
eSquadP1c = ds_list_create();//Charlie squad
eSquadP1d = ds_list_create();//Delta squad
eSquadP1e = ds_list_create();//Echo squad

esquadLeadP1a = noone;
esquadLeadP1b = noone;
esquadLeadP1c = noone;
esquadLeadP1d = noone;
esquadLeadP1e = noone;

ePlatoon1[| 0] = eSquadP1a;
ds_list_mark_as_list(ePlatoon1, 0);
ePlatoon1[| 1] = eSquadP1b;
ds_list_mark_as_list(ePlatoon1, 1);
ePlatoon1[| 2] = eSquadP1c;
ds_list_mark_as_list(ePlatoon1, 2);
ePlatoon1[| 3] = eSquadP1d;
ds_list_mark_as_list(ePlatoon1, 3);
ePlatoon1[| 4] = eSquadP1e;
ds_list_mark_as_list(ePlatoon1, 4);

//PLATOON 2
createePlatoon2 = true;
moveePlatoon2 = false;

ePlatoon2 = ds_list_create();//First Platoon
ePlatoon2X = room_width * 0.7;
ePlatoon2Y = room_height * 0.2;

eSquadP2a = ds_list_create();//Able squad
eSquadP2b = ds_list_create();//Bravo squad
eSquadP2c = ds_list_create();//Charlie squad
eSquadP2d = ds_list_create();//Delta squad
eSquadP2e = ds_list_create();//Echo squad

esquadLeadP2a = noone;
esquadLeadP2b = noone;
esquadLeadP2c = noone;
esquadLeadP2d = noone;
esquadLeadP2e = noone;

ePlatoon2[| 0] = eSquadP2a;
ds_list_mark_as_list(ePlatoon2, 0);
ePlatoon2[| 1] = eSquadP2b;
ds_list_mark_as_list(ePlatoon2, 1);
ePlatoon2[| 2] = eSquadP2c;
ds_list_mark_as_list(ePlatoon2, 2);
ePlatoon2[| 3] = eSquadP2d;
ds_list_mark_as_list(ePlatoon2, 3);
ePlatoon2[| 4] = eSquadP2e;
ds_list_mark_as_list(ePlatoon2, 4);

//PLATOON 3
createePlatoon3 = true;
moveePlatoon3 = false;

ePlatoon3 = ds_list_create();//First Platoon
ePlatoon3X = room_width * 0.3;
ePlatoon3Y = room_height * 0.2;

eSquadP3a = ds_list_create();//Able squad
eSquadP3b = ds_list_create();//Bravo squad
eSquadP3c = ds_list_create();//Charlie squad
eSquadP3d = ds_list_create();//Delta squad
eSquadP3e = ds_list_create();//Echo squad

esquadLeadP3a = noone;
esquadLeadP3b = noone;
esquadLeadP3c = noone;
esquadLeadP3d = noone;
esquadLeadP3e = noone;

ePlatoon3[| 0] = eSquadP3a;
ds_list_mark_as_list(ePlatoon3, 0);
ePlatoon3[| 1] = eSquadP3b;
ds_list_mark_as_list(ePlatoon3, 1);
ePlatoon3[| 2] = eSquadP3c;
ds_list_mark_as_list(ePlatoon3, 2);
ePlatoon3[| 3] = eSquadP3d;
ds_list_mark_as_list(ePlatoon3, 3);
ePlatoon3[| 4] = eSquadP3e;
ds_list_mark_as_list(ePlatoon3, 4);

//Waypoints
//Center Front
//Friendly positions
fplatoon1x = room_width * 0.5;
fplatoon1y = room_height * 0.55;
// ||
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

//Foe positions
eplatoon1x = room_width * 0.5;
eplatoon1y = room_height * 0.45;

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


//Western Front
//Friendly positions
fplatoon2x = room_width * 0.2;
fplatoon2y = room_height * 0.55;
// ||
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

//Foe positions
eplatoon2x = room_width * 0.8;
eplatoon2y = room_height * 0.45;

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

//Eastern Front
//Friendly positions
fplatoon3x = room_width * 0.8;
fplatoon3y = room_height * 0.55;
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

//Foe positions
eplatoon3x = room_width * 0.2;
eplatoon3y = room_height * 0.45;

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