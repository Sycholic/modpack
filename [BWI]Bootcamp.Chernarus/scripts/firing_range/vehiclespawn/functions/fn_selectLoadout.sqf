params ["_display"];
private ["_tvRole", "_xlistSide", "_factionPath", "_role", "_scriptName", "_error", "_vehicle", "_spawnpos", "_veh"];

_xlistSide = _display displayctrl 1006;
_tvFaction = _display displayctrl 1001;
_tvRole = _display displayctrl 1002;
_errorMsg = _display displayctrl 1007;

_roleSelected = tvCurSel _tvRole;
_factionPath = "";
_role = "";
_loadoutParameter = "";
_error = false;

// Position 1
if( lbCurSel _xlistSide == 0 ) then {
_spawnpos = getMarkerPos "fr_vhc_spwn_1";
};

// Position 2
if( lbCurSel _xlistSide == 1 ) then {
_spawnpos = getMarkerPos "fr_vhc_spwn_2";
};

// Position 3
if( lbCurSel _xlistSide == 2 ) then {
_spawnpos = getMarkerPos "fr_vhc_spwn_3";
};

// Position 4
if( lbCurSel _xlistSide == 3 ) then {
_spawnpos = getMarkerPos "fr_vhc_spwn_4";
};

// Position 5
if( lbCurSel _xlistSide == 4 ) then {
_spawnpos = getMarkerPos "fr_vhc_spwn_5";
};

// Position 6
if( lbCurSel _xlistSide == 5 ) then {
_spawnpos = getMarkerPos "fr_vhc_spwn_6";
};


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
		case 2 :{
					_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a vehicle!</t>";
					[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
					_role = ""; _error = true;
				};
		case 3 :{
					_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a vehicle!</t>";
					[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
					_role = ""; _error = true;
				};
		
		default { _role = ""; _error = true; };
	};
};

// multi member role (HAT/MAT/pilot team)
if( count _roleSelected == 2 ) then {
	switch ( _roleSelected select 0 ) do {
		case 0 :{
					if( _roleSelected select 1 == 0 ) then { _vehicle = "RHSUSF_M1A1aimwd_usarmy"; }; 
					if( _roleSelected select 1 == 1 ) then { _vehicle = "RHS_M2A3_BUSKIII_wd"; };
					if( _roleSelected select 1 == 2 ) then { _vehicle = "rhsusf_M1025_w_mk19"; };
					if( _roleSelected select 1 == 3 ) then { _vehicle = "rhsusf_M1025_w_m2"; };
				};
		case 1 :{
					if( _roleSelected select 1 == 0 ) then { _vehicle = "rhs_btr60_msv"; }; 
					if( _roleSelected select 1 == 1 ) then { _vehicle = "rhs_btr70_msv"; };
					if( _roleSelected select 1 == 2 ) then { _vehicle = "rhs_btr80_msv"; };
					if( _roleSelected select 1 == 3 ) then { _vehicle = "rhsusf_M1078A1P2_B_d_flatbed_fmtv_usarmy"; };
				};
		case 2 :{
					if( _roleSelected select 1 == 0 ) then { _role = "cm"; }; 
					if( _roleSelected select 1 == 1 ) then { _role = "cfr"; };
					if( _roleSelected select 1 == 2 ) then { _role = "eng"; _loadoutParameter = "ENGF"; };
					if( _roleSelected select 1 == 3 ) then { _role = "eng"; _loadoutParameter = "ENGT"; };
				};
		
		default { _role = ""; _error = true; };
	};
};

if ( !_error ) then {
	_variableActivated = true;
	_veh = createVehicle [_vehicle, _spawnpos, [], 0, "NONE"];
	_veh setDir 325;
	
	closeDialog 1;
	true
} else {
	// error occured
	false
};
