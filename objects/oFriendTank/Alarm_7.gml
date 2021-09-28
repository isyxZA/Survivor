/// @description Reload timer
uReloadTime -= 5;
if uReloadTime <= 0 
{
	uReloading = false;
	uMainAmmo = 30;
	uMGAmmo = 30;
	uReloadTime = room_speed;
	if uCanShoot { alarm[6] = room_speed; }
}
else
{
	alarm[7] = room_speed;
}