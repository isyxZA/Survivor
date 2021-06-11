event_inherited();
ds_list_add(global.UnitList, id);
GetBio(PLAYER);
SetStats(uType);
InitDialog(uType);
InitMovement(uType);
InitAttack(uType);
//camera_set_view_target(oCamera.my_camera, id);