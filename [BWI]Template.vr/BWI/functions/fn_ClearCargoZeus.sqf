_vehicle = _this select 0;
if((_vehicle isKindOf "landVehicle") or (_vehicle isKindOf "Air") or (_vehicle isKindOf "Ship")) then {
	clearWeaponCargoGlobal _vehicle;
	clearMagazineCargoGlobal _vehicle;
	clearItemCargoGlobal _vehicle;
	clearBackpackCargoGlobal _vehicle;
	
	_vehClass = getDescription(_vehicle) select 0;
	
	// HMG ammo for 3CB HMG vehicles.
	if (_vehClass in ["UK3CB_BAF_Coyote_Passenger_L111A1_D", "UK3CB_BAF_Coyote_Passenger_L111A1_W", "UK3CB_BAF_Coyote_Logistics_L111A1_D", "UK3CB_BAF_Coyote_Logistics_L111A1_W", "UK3CB_BAF_Jackal2_L2A1_D", "UK3CB_BAF_Jackal2_L2A1_W"]) then {
		_vehicle addItemCargoGlobal ["UK3CB_BAF_100Rnd_127x99_Box", 7];
		_vehicle addItemCargoGlobal ["UK3CB_BAF_150Rnd_762x51_Box", 7];
	};
	
	// GMG ammo for 3CB vehicles.
	if (_vehClass in ["UK3CB_BAF_Coyote_Passenger_L134A1_D", "UK3CB_BAF_Coyote_Passenger_L134A1_W", "UK3CB_BAF_Coyote_Logistics_L134A1_D", "UK3CB_BAF_Coyote_Logistics_L134A1_W", "UK3CB_BAF_Jackal2_GMG_D", "UK3CB_BAF_Jackal2_GMG_W"]) then {
		_vehicle addItemCargoGlobal ["UK3CB_BAF_32Rnd_40mm_G_Box", 7];
		_vehicle addItemCargoGlobal ["UK3CB_BAF_150Rnd_762x51_Box", 7];
	};
};