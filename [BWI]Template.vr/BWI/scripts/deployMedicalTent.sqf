[20, [], 
{
	_playerLookDir = getDir player;
	_tentLookDir = 0;
	_cosine = cos(_playerLookDir);
	_sine = sin(_playerLookDir);
	_surfaceNormal = [];

	_posTent = [0,0,0];

	_posPlayer = getPosATL player;
	_posTent set [0, ((_posPlayer select 0) + (8 * _sine))];
	_posTent set [1, ((_posPlayer select 1) + (8 * _cosine)) ];

	BWI_medical_MASH = createVehicle ['CampEast_EP1', _posTent, [], 0, 'CAN_COLLIDE'];
	BWI_medical_MASH enableSimulation false;
	BWI_medical_MASH allowDamage false;
	BWI_medical_MASH setVariable ["ace_medical_isMedicalFacility", true];
	_tentLookDir = [getPos BWI_medical_MASH, getPos player] call BIS_fnc_dirTo;
	BWI_medical_MASH setDir abs( 180 - _tentLookDir );
	_surfaceNormal = surfaceNormal position BWI_medical_MASH;
	BWI_medical_MASH setVectorUp _surfaceNormal;
	publicVariable "BWI_medical_MASH";

	player removeItem "BWI_medical_tentBox";
	BWI_medical_TentDeployed = true;
	publicVariable "BWI_medical_TentDeployed";
	BWI_medical_MASH addAction ["<t color='#1111ff'>Deconstruct Medical Tent</t>", "BWI\scripts\repackageMedicalTent.sqf", nil, 1.5, false, false, "", "BWI_medical_TentDeployed && ('ToolKit' in items _this)"];
}, {}, "Deploying Tent", {true}, []] call ace_common_fnc_progressBar;