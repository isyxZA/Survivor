/// @description Greeting switch
if instance_exists(oPlayer)
{
	if point_distance(x, y, oPlayer.x, oPlayer.y) < oPlayer.uVision { canTalk = true; }
		else { alarm[2] = uTalkRate * irandom_range(6, 22); }
}
else
{ 
	alarm[2] = uTalkRate * irandom_range(10, 20);
}