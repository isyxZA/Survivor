/// @description Returns true or false depending on RNG
/// @param percent
//ex: 
//Chance(0.7);	-> Returns true 70% of the time
function Chance(percent)
{
	return percent > random(1);
}