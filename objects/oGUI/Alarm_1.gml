/// @description Remove dialog from player dialog list
ds_list_delete(playerDialog, 0);
if !ds_list_empty(playerDialog) { alarm[1] = 220; }