/// @description Check for enemy targets
if Chance(0.5)
{
	if GetTarget(uType)
	{
		alarm[6] = room_speed * 2;
	}
}

if moving
{
	alarm[0] = room_speed * 12;
}
else
{
	alarm[0] = room_speed * 6;
}