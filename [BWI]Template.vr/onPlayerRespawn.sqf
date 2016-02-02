
/**
*
*	Add Zeus actions to the SpawnVAS
*
*/
if( AdminAction0 != -1 ) then {
	SpawnVAS removeAction AdminAction0;
	AdminAction0 = -1;
};

if( AdminAction1 != -1 ) then {
	SpawnVAS removeAction AdminAction1;
	AdminAction1 = -1;
};

if( AdminAction2 != -1 ) then {
	SpawnVAS removeAction AdminAction2;
	AdminAction2 = -1;
};

if( AdminAction3 != -1 ) then {
	SpawnVAS removeAction AdminAction3;
	AdminAction3 = -1;
};

if( player in [z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11,z12,z13,z14,z15,z16] ) then {
	AdminAction0 = SpawnVAS addAction[ "---BWI Mission Admin---", "" ];
	AdminAction1 = SpawnVAS addAction[ "BWI Admin: Reclaim AI", "[player] remoteExecCall ['BWI_fnc_ReclaimOwnershipOfAI']" ];
	AdminAction2 = SpawnVAS addAction[ "<t color='#11c311'>BWI Admin: End Mission (Success)</t>", "[true] remoteExecCall ['BWI_fnc_EndMission']" ];
	AdminAction3 = SpawnVAS addAction[ "<t color='#bb1111'>BWI Admin: End Mission (Failure)</t>", "[false] remoteExecCall ['BWI_fnc_EndMission']" ];
};

/**
*
*	CommCard action
*
*/
player addAction ["BWI: CommCard", "createDialog 'ShowCommCard';", nil, -10, false, false];

/**
*
*	Add actions to player objects when they initially spawn or respawn
*
*/
_platoonRole = (str player) select [10,3];

if( _platoonRole == "eng" ) then {
	player addAction ["<t color='#11ffff'>Deploy Medical Tent</t>", "BWI\scripts\deployMedicalTent.sqf", nil, 1.5, false, false, "", "!isNull BWI_logistics_FOB_Flag && (_this distance2D BWI_logistics_FOB_Flag) < 30 && ('BWI_medical_tentBox' in items _this) && ('ToolKit' in items _this)"];
	player addAction ["<t color='#ff1111'>(outside FOB perimeter)</t>", "", nil, 1.5, false, false, "", "(isNull BWI_logistics_FOB_Flag || (_this distance BWI_logistics_FOB_Flag) > 30) && ('BWI_medical_tentBox' in items _this) && ('ToolKit' in items _this)"];
	player addAction ["<t color='#ff11ff'>Deploy FOB</t>", "BWI\scripts\deployFOB.sqf", nil, 1.5, false, false, "", "('BWI_logistics_fobBox' in items _this) && ('ToolKit' in items _this)"];
};

/**
*
*	Handle reinsertion timer
*
*/
if( BWI_playerGotKilled ) then {

	_timerScript = [] spawn {
		_timer = 120 + (BWI_playerKillCount - 1) * 180;
		
		while { _timer > 0 && !BWI_playerCanDeploy } do {
			hintSilent parseText format ["<t color='#ff1111'>Waiting for reinsertion</t><br/>Wait til the timer has finished!<br/>%1:%2 remaining.", floor(_timer / 60), [_timer % 60,2] call CBA_fnc_formatNumber];
			sleep 1;
			_timer = _timer - 1;
		};
		
		BWI_playerCanDeploy = true;
		
		while { isNull BWI_logistics_FOB_Flag } do {
			hintSilent parseText "<t color='#FFA805'>FOB not placed</t><br/>You have to wait until the FOB has been placed by the PL/APL to reinsert.";
			sleep 2;
		};
		
		hintSilent parseText "<t color='#11ff11'>REINSERTION READY!</t><br/>Use the teleporter flag pole!";
	};
	
};