/// @description Generate character trait pool
function GenerateTraits()
{
	enum Traits
	{
		strong,// +stamina | +carryMax
		alert,// +vision | -aimTime
		brave,// +morale | -desertChance
		athletic,// +moveSpeed | -staminaDrain | -injuryChance
		sociable,// +morale | +talkRate
		calm,// +shootAccuracy | +morale
		
		weak,// stamina | carryMax
		complacent,// vision | targetAquisition
		cowardly,// morale | desertChance
		unfit,// -moveSpeed | +staminaDrain | +injuryChance
		timid,// -morale | -talkRate
		nervous// -shootAccuracy | -morale
	}
}