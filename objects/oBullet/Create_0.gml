bSpeed = 0;
bDamage = 0;
bDamageRatio = 1;
bPath = path_add();
bTargetX = 0;
bTargetY = 0;
bHitCoverCount = 1;
bStartPath = true;
bMoving = false;

bEmit = audio_emitter_create();
audio_emitter_falloff(bEmit, 200, 2000, 1.5);
audio_emitter_position(bEmit, x, y, 0);