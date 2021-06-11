audio_falloff_set_model(audio_falloff_linear_distance);

//audio_group_load(Music);
//audio_group_set_gain(Music, 0.5, 0);
audio_master_gain(0);

aEmit = audio_emitter_create();
audio_emitter_falloff(aEmit, 200, 2000, 0.75);

fadeOut = false;
fadeIn = true;

aGain = 0;
