randomize();
surface_depth_disable(true);
game_set_speed(60, gamespeed_fps);

global.GameState = "IN_GAME";

// Global data structures
global.UnitList = ds_list_create();
global.FriendList = ds_list_create();
global.FoeList = ds_list_create();

canSelect = true;
selectedObj = noone;

//Unit (collision) types
#macro PLAYER  0
#macro F_RIFLEMAN  1
#macro E_RIFLEMAN  2
#macro F_TANK 3
#macro E_TANK 4
#macro F_LAV 5
#macro E_LAV 6
//#macro F_LAC 7
//#macro E_LAC 8
//#macro F_LOGI 9
//#macro E_LOGI 10

#macro L_COVER 11
#macro H_COVER 12

//Bullet damages
#macro B_RIFLE 5
#macro B_GRENADE 15
#macro B_CANNON 25
#macro B_30MM 20
#macro B_MG 10

//Bullet speeds
#macro B_RIFLESPD 40
#macro B_GRENADESPD 20
#macro B_CANNONSPD 45
#macro B_MGSPD 50

//Menu constants
#macro MENUCELL_W 180
#macro MENUCELL_H 64
#macro RESETMENU 0
#macro ACTIONMENU 1
#macro ACTIONMENU_E 2

//Key map default
//global.UP      = 87; //W
//global.DOWN    = 83; //S
//global.LEFT    = 65; //A
//global.RIGHT   = 68; //D
//global.LSHIFT  = 90;
//global.RSHIFT  = 67;
global.GRID   = 71; //G
global.LMOUSE = 1;
global.RMOUSE = 2;
global.MMOUSE = 3;
global.INCREASE = 107; //+
global.DECREASE = 109; //-

spawnCell = noone;
showDebug = false;

SetTextDefault();