params ["_display"];
private ["_tvRole", "_xlistSide", "_factionPath", "_role", "_scriptName", "_error", "_vehicle", "_spawnpos", "_veh", "_spCheck"];

_xlistSide = _display displayctrl 1006;
_tvRole = _display displayctrl 1002;
_errorMsg = _display displayctrl 1007;

_roleSelected = tvCurSel _tvRole;
_factionPath = "";
_role = "";
_loadoutParameter = "";
_error = false;


if( count _roleSelected == 1 ) then {
	switch ( _roleSelected select 0 ) do {
		case 0 :{
					_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a vehicle!</t>";
					[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
					_role = ""; _error = true;
				};
		case 1 :{
					_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a vehicle!</t>";
					[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
					_role = ""; _error = true;
				};
		
		default { _role = ""; _error = true; };
	};
};

if( count _roleSelected == 2 ) then {
	switch ( _roleSelected select 0 ) do {
		case 0 :{
					if( _roleSelected select 1 == 0 ) then { _vehicle = "RHSUSF_M1A1aimwd_usarmy"; }; 
					if( _roleSelected select 1 == 1 ) then { _vehicle = "BWA3_Leopard2A6M_Fleck"; }; 
					if( _roleSelected select 1 == 2 ) then { _vehicle = "RHS_M2A3_BUSKIII_wd"; };
					if( _roleSelected select 1 == 3 ) then { _vehicle = "rhsusf_M1025_w_mk19"; };
					if( _roleSelected select 1 == 4 ) then { _vehicle = "rhsusf_M1025_w_m2"; };
				};
		case 1 :{
					if( _roleSelected select 1 == 0 ) then { _vehicle = "rhs_btr70_msv"; }; 
					if( _roleSelected select 1 == 1 ) then { _vehicle = "rhs_bmp2_msv"; };
					if( _roleSelected select 1 == 2 ) then { _vehicle = "rhs_bmp3_late_msv"; };
					if( _roleSelected select 1 == 3 ) then { _vehicle = "rhs_brm1k_msv"; };
					if( _roleSelected select 1 == 4 ) then { _vehicle = "rhs_t72bb_tv"; };
					if( _roleSelected select 1 == 5 ) then { _vehicle = "rhs_t80"; };
					if( _roleSelected select 1 == 6 ) then { _vehicle = "rhs_t90_tv"; };
					if( _roleSelected select 1 == 7 ) then { _vehicle = "rhs_zsu234_aa"; };
					
				};
		
		default { _role = ""; _error = true; };
	};
};

if ( !_error ) then {

if( lbCurSel _xlistSide == 0 ) then {
	deleteVehicle veh1;
	veh1 = createVehicle [_vehicle, [0,0,0], [], 0, "NONE"];
	execVM "scripts\firing_range\vehiclespawn\spawnpos\pos1.sqf";
};

if( lbCurSel _xlistSide == 1 ) then {
	deleteVehicle veh2;
	veh2 = createVehicle [_vehicle, [0,0,0], [], 0, "NONE"];
	execVM "scripts\firing_range\vehiclespawn\spawnpos\pos2.sqf";
};


if( lbCurSel _xlistSide == 2 ) then {
	deleteVehicle veh3;
	veh3 = createVehicle [_vehicle, [0,0,0], [], 0, "NONE"];
	execVM "scripts\firing_range\vehiclespawn\spawnpos\pos3.sqf";
};


if( lbCurSel _xlistSide == 3 ) then {
	deleteVehicle veh4;
	veh4 = createVehicle [_vehicle, [0,0,0], [], 0, "NONE"];
	execVM "scripts\firing_range\vehiclespawn\spawnpos\pos4.sqf";
};


if( lbCurSel _xlistSide == 4 ) then {
	deleteVehicle veh5;
	veh5 = createVehicle [_vehicle, [0,0,0], [], 0, "NONE"];
	execVM "scripts\firing_range\vehiclespawn\spawnpos\pos5.sqf";
};


if( lbCurSel _xlistSide == 5 ) then {
	deleteVehicle veh6;
	veh6 = createVehicle [_vehicle, [0,0,0], [], 0, "NONE"];
	execVM "scripts\firing_range\vehiclespawn\spawnpos\pos6.sqf";
};



	

} else {
	// error occured
	false
};
