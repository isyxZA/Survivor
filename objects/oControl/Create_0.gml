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

//Unit types
#macro PLAYER  0
#macro F_RIFLEMAN  1
#macro E_RIFLEMAN  2

//Baseline constants
#macro TALKRATEBASE 1000

//Menu constants
#macro MENUCELL_W 180
#macro MENUCELL_H 64

#macro RESETMENU 0
#macro ACTIONMENU 1

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