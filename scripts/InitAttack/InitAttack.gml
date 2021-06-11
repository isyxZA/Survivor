/// @description Initialize unit attack variables
/// @ param type Type of unit
function InitAttack(type)
{
	uCanShoot = true;
	uTarget = noone;
	uBurstCount = 0;
	uBulletType = "";
	switch type
	{
		case PLAYER:
			uAttackRange = oGrid.cellSize * 20;
			uReloadTime = room_speed * 60;
			uAccuracy = 0.3;
			uRifleAmmo = 30;
			uShootRifle = false;
			uGrenadeAmmo = 2;
			uThrowGrenade = false;
			break;
		case F_RIFLEMAN:
		case E_RIFLEMAN:
			uAttackRange = oGrid.cellSize * 20;
			uReloadTime = room_speed * 60;
			uAccuracy = 0.3;
			uRifleAmmo = 30;
			uShootRifle = false;
			uGrenadeAmmo = 2;
			uThrowGrenade = false;
			break;
		case F_TANK:
		case E_TANK:
			uAttackRange = oGrid.cellSize * 32;
			uReloadTime = room_speed * 60;
			uAccuracy = 0.2;
			uMainAmmo = 100;
			uShootMain = false;
			uMGAmmo = 100;
			uShootMg = false;
			uSmokeAmmo = 2;
			uPopSmoke = false;
			break;
	}
}