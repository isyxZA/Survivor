event_inherited();
ds_list_add(global.UnitList, id);
ds_list_add(global.FriendList, id);
GetBio(F_TANK);
SetStats(uType);
InitMovement(uType);
InitAttack(uType);