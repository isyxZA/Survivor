if fadeOut == true 
{
    if aGain > 0.2 { aGain -= 0.01; audio_master_gain(aGain); } 
		else { fadeOut = false; }
}
else if fadeIn == true 
{
    if aGain < 1 { aGain += 0.01; audio_master_gain(aGain); } 
		else { fadeIn = false; }
}