if fadeOut == true 
{
    if aGain > 0.2 { aGain -= 0.01; } else { fadeOut = false; }
    audio_master_gain(aGain);
}
else if fadeIn == true 
{
    if aGain < 1 { aGain += 0.01; } else { fadeIn = false; }
    audio_master_gain(aGain);
}