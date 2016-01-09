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

	_tentObject = createVehicle ['CampEast_EP1', _posTent, [], 0, 'CAN_COLLIDE'];
	_tentObject enableSimulation false;
	_tentObject allowDamage false;
	_tentObject setVariable ["ace_medical_isMedicalFacility", true];
	_tentLookDir = [getPos player, getPos _tentObject] call BIS_fnc_dirTo;
	_tentObject setDir _tentLookDir;
	_surfaceNormal = surfaceNormal position _tentObject;
	_tentObject setVectorUp _surfaceNormal;

	player removeItem "BWI_medical_tentBox";
	[_player, _tentObject] remoteExecCall ["BWI_fnc_AddNewMedicalTentObject"];
}, {}, "Deploying Tent", {true}, []] call ace_common_fnc_progressBar;