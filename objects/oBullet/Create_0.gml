bType = "";
bSpeed = 0;
bDamage = 0;
bDamageRatio = 1;
bPath = path_add();
bTargetX = x;
bTargetY = y;
bHitCoverCount = 0;
bStartPath = false;
bMoving = false;
bPlaySound = true;
bSound = -1;
bShowFX = false;

bEmit = audio_emitter_create();
audio_emitter_falloff(bEmit, 200, 2000, 0.75);
