event_inherited();
ds_list_add(global.UnitList, id);
ds_list_add(global.FoeList, id);
GetBio(E_RIFLEMAN);
SetStats(uType);
InitDialog(uType);
InitMovement(uType);