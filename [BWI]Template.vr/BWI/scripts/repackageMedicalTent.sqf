[20, [], {
	_mashPosition = position BWI_medical_MASH;
	deleteVehicle BWI_medical_MASH;
	BWI_medical_MASH = objNull;
	publicVariable "BWI_medical_MASH";
	_tentBox = createVehicle ['groundWeaponHolder', _mashPosition, [], 0, 'CAN_COLLIDE'];
	_tentBox addItemCargoGlobal ['BWI_medical_tentBox', 1];
	BWI_medical_TentDeployed = false;
}, {}, "Repackaging Tent", {true}, []] call ace_common_fnc_progressBar;