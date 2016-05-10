_vehicle = _this select 0;
if((_vehicle isKindOf "landVehicle") or (_vehicle isKindOf "Air") or (_vehicle isKindOf "Ship")) then
	{
		clearWeaponCargo _vehicle;
		clearMagazineCargo _vehicle;
		clearItemCargo _vehicle;
		clearBackpackCargo _vehicle;
	};