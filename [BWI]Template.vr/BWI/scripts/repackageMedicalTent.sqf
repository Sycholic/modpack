_mashPosition = position BWI_medical_MASH;
deleteVehicle BWI_medical_MASH;
BWI_medical_MASH = objNull;
publicVariable "BWI_medical_MASH";
_tentBox = createVehicle ['groundWeaponHolder', _mashPosition, [], 0, 'CAN_COLLIDE'];
_tentBox addItemCargoGlobal ['ARP_Objects_BoxMre_M', 1];
BWI_medical_TentDeployed = false;