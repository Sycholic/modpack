_vehicle = _this select 0;
if((_vehicle isKindOf "landVehicle") or (_vehicle isKindOf "Air") or (_vehicle isKindOf "Ship")) then {
	clearWeaponCargoGlobal _vehicle;
	clearMagazineCargoGlobal _vehicle;
	clearItemCargoGlobal _vehicle;
	clearBackpackCargoGlobal _vehicle;
};