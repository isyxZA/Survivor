/// @description Destroy the unit
if uShowDeath 
{
	uShowDeath = false;
	visible = false;
	var dsl = audio_sound_length(uDeathSound);
	audio_play_sound_on(uEmit, uDeathSound, false, 1);
	alarm[11] = room_speed * dsl;
}
else
{
	instance_destroy();
}