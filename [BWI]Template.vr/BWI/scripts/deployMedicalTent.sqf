_playerLookDir = getDir player;
_tentLookDir = 0;
_cosine = cos(_playerLookDir);
_sine = sin(_playerLookDir);
_surfaceNormal = [];

_posTent = [0,0,0];

_posPlayer = getPosATL player;
_posTent set [0, ((_posPlayer select 0) + (5 * _sine))];
_posTent set [1, ((_posPlayer select 1) + (5 * _cosine)) ];

BWI_medical_MASH = createVehicle ['MASH_EP1', _posTent, [], 0, 'CAN_COLLIDE'];
_tentLookDir = [getPos BWI_medical_MASH, getPos player] call BIS_fnc_dirTo;
BWI_medical_MASH setDir _tentLookDir;
_surfaceNormal = surfaceNormal position BWI_medical_MASH;
BWI_medical_MASH setVectorUp _surfaceNormal;
BWI_medical_MASH enableSimulation false;
BWI_medical_MASH allowDamage false;
publicVariable "BWI_medical_MASH";

player removeItem "ARP_Objects_BoxMre_M";
BWI_medical_TentDeployed = true;
publicVariable "BWI_medical_TentDeployed";
BWI_medical_MASH addAction ["<t color='#1111ff'>Deconstruct Medical Tent</t>", "BWI\scripts\repackageMedicalTent.sqf", nil, 1.5, false, false, "", "BWI_medical_TentDeployed && ('ToolKit' in items _this)"];