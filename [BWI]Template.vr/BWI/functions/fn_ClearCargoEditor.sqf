{
	if( ( _x isKindOf "landVehicle" ) or ( _x isKindOf "Air" ) or ( _x isKindOf "Ship" ) ) then	{
		clearWeaponCargo _x;
		clearMagazineCargo _x;
		clearItemCargo _x;
		clearBackpackCargo _x;
	};
} forEach vehicles;

