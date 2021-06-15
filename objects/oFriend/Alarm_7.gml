/// @description Reload timer
uReloadTime -= 1;
if uReloadTime <= 0 
{
	uReloading = false;
	uRifleAmmo = 30;
	uReloadTime = room_speed;
}
else
{
	alarm[7] = room_speed;
}