/// @description Destroy the unit
if uShowDeath 
{
	uShowDeath = false;
	visible = false;
	var dsl = audio_sound_length(uDeathSound);
	audio_play_sound_on(uEmit, uDeathSound, false, 10);
	alarm[11] = room_speed * dsl;
	with oExplosionPFX
	{
		xp = other.x;
		yp = other.y;
		explode01 = true;
	}
	with instance_create_layer(x, y, "GroundFX", oCrater)
	{
		cSprite = sCrater06;
		cAngle = random(360);
	}
}
else
{
	instance_destroy();
}