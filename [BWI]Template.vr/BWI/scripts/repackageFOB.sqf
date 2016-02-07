[20, [], {
	_fobPosition = getPosATL BWI_logistics_FOB_Net;
	deleteVehicle BWI_logistics_FOB_Net;
	deleteVehicle BWI_logistics_FOB_Flag;
	deleteVehicle BWI_logistics_FOB_AmmoBox;
	deleteVehicle BWI_logistics_FOB_Table1;
	deleteVehicle BWI_logistics_FOB_Table2;
	deleteVehicle BWI_logistics_FOB_Board;
	_fobBox = createVehicle ['groundWeaponHolder', _fobPosition, [], 0, 'CAN_COLLIDE'];
	_fobBox addItemCargoGlobal ['BWI_logistics_fobBox', 1];
}, {}, "Repackaging FOB", {true}, []] call ace_common_fnc_progressBar;