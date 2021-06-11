event_inherited();
ds_list_add(global.UnitList, id);
ds_list_add(global.FoeList, id);
GetBio(E_TANK);
SetStats(uType);
InitMovement(uType);
InitAttack(uType);