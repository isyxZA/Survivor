/// @description Control unit actions on the battlefield
//Friendly forces movement
if movefPlatoon1
{
	movefPlatoon1 = false;
	MoveSquad(fPlatoon1, irandom_range(0, 4));
}
if movefPlatoon2
{
	movefPlatoon2 = false;
	MoveSquad(fPlatoon2, irandom_range(0, 4));
}
if movefPlatoon3
{
	movefPlatoon3 = false;
	MoveSquad(fPlatoon3, irandom_range(0, 4));
}

//Foe forces movement
if moveePlatoon1
{
	moveePlatoon1 = false;
	MoveSquad(ePlatoon1, irandom_range(0, 4));
}
if moveePlatoon2
{
	moveePlatoon2 = false;
	MoveSquad(ePlatoon2, irandom_range(0, 4));
}
if moveePlatoon3
{
	moveePlatoon3 = false;
	MoveSquad(ePlatoon3, irandom_range(0, 4));
}
