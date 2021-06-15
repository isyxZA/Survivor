/// @description Initialize unit attack variables
/// @ param type Type of unit
function InitAttack(type)
{
	uCanShoot = true;
	uShooting = false;
	uReloading = false;
	uTarget = -1;
	uBurstCount = 0;
	switch type
	{
		case PLAYER:
			uAttackRange = oGrid.cellSize * 20;
			uReloadTime = room_speed;
			uAccuracy = 0.3;
			uRifleAmmo = 30;
			uShootRifle = false;
			uGrenadeAmmo = 2;
			uThrowGrenade = false;
			break;
		case F_RIFLEMAN:
			uAttackRange = oGrid.cellSize * 20;
			uReloadTime = room_speed;
			uAccuracy = 0.3;
			uRifleAmmo = 30;
			uShootRifle = false;
			uGrenadeAmmo = 2;
			uThrowGrenade = false;
			alarm[0] = (room_speed * 8) + ds_list_find_index(global.FriendList, id) + irandom_range(2, 24);
			break;
		case E_RIFLEMAN:
			uAttackRange = oGrid.cellSize * 20;
			uReloadTime = room_speed;
			uAccuracy = 0.3;
			uRifleAmmo = 30;
			uShootRifle = false;
			uGrenadeAmmo = 2;
			uThrowGrenade = false;
			alarm[0] = (room_speed * 8) + ds_list_find_index(global.FoeList, id) + irandom_range(2, 24);
			break;
		case F_TANK:
			uAttackRange = oGrid.cellSize * 32;
			uReloadTime = room_speed;
			uAccuracy = 0.2;
			uMainAmmo = 100;
			uShootMain = false;
			uMGAmmo = 100;
			uShootMg = false;
			//uSmokeAmmo = 2;
			//uPopSmoke = false;
			alarm[0] = (room_speed * 8) + ds_list_find_index(global.FriendList, id) + irandom_range(2, 24);
			break;
		case E_TANK:
			uAttackRange = oGrid.cellSize * 32;
			uReloadTime = room_speed;
			uAccuracy = 0.2;
			uMainAmmo = 100;
			uShootMain = false;
			uMGAmmo = 100;
			uShootMg = false;
			//uSmokeAmmo = 2;
			//uPopSmoke = false;
			alarm[0] = (room_speed * 8) + ds_list_find_index(global.FoeList, id) + irandom_range(2, 24);
			break;
	}
}