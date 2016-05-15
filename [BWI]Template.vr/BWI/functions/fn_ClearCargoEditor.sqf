{
	if( ( _x isKindOf "landVehicle" ) or ( _x isKindOf "Air" ) or ( _x isKindOf "Ship" ) ) then	{
		clearWeaponCargoGlobal _x;
		clearMagazineCargoGlobal _x;
		clearItemCargoGlobal _x;
		clearBackpackCargoGlobal _x;
	};
} forEach vehicles;

