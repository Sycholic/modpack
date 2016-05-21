{
	if( ( _x isKindOf "landVehicle" ) or ( _x isKindOf "Air" ) or ( _x isKindOf "Ship" ) ) then	{
		clearWeaponCargoGlobal _x;
		clearMagazineCargoGlobal _x;
		clearItemCargoGlobal _x;
		clearBackpackCargoGlobal _x;
		
		_vehClass = getDescription(_x) select 0;
		
		// HMG ammo for 3CB HMG vehicles.
		if (_vehClass in ["UK3CB_BAF_Coyote_Passenger_L111A1_D", "UK3CB_BAF_Coyote_Passenger_L111A1_W", "UK3CB_BAF_Coyote_Logistics_L111A1_D", "UK3CB_BAF_Coyote_Logistics_L111A1_W", "UK3CB_BAF_Jackal2_L2A1_D", "UK3CB_BAF_Jackal2_L2A1_W"]) then {
			_x addItemCargoGlobal ["UK3CB_BAF_100Rnd_127x99_Box", 7];
			_x addItemCargoGlobal ["UK3CB_BAF_150Rnd_762x51_Box", 7];
		};
		
		// GMG ammo for 3CB vehicles.
		if (_vehClass in ["UK3CB_BAF_Coyote_Passenger_L134A1_D", "UK3CB_BAF_Coyote_Passenger_L134A1_W", "UK3CB_BAF_Coyote_Logistics_L134A1_D", "UK3CB_BAF_Coyote_Logistics_L134A1_W", "UK3CB_BAF_Jackal2_GMG_D", "UK3CB_BAF_Jackal2_GMG_W"]) then {
			_x addItemCargoGlobal ["UK3CB_BAF_32Rnd_40mm_G_Box", 7];
			_x addItemCargoGlobal ["UK3CB_BAF_150Rnd_762x51_Box", 7];
		};
	};
} forEach vehicles;

