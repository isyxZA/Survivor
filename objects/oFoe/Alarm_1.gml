/// @description Adjust rotation when moving
if moving 
{
	rotationTarget = point_direction(xPrev, yPrev, x, y);
	xPrev = x;
	yPrev = y;
	alarm[1] = 10; 
}