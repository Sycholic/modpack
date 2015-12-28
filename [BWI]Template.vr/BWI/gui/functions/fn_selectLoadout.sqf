params ["_display"];
private ["_tvFaction", "_tvRole", "_xlistSide", "_factionPath", "_role", "_scriptName", "_error"];

_xlistSide = _display displayctrl 1006;
_tvFaction = _display displayctrl 1001;
_tvRole = _display displayctrl 1002;
_errorMsg = _display displayctrl 1007;

_factionSelected = tvCurSel _tvFaction;
_roleSelected = tvCurSel _tvRole;
_factionPath = "";
_role = "";
_error = false;

if( count _factionSelected == 0 ) exitWith {false};

// blufor is current side
if( lbCurSel _xlistSide == 0 ) then {

	// single camo faction
	if( count _factionSelected == 1 ) then {
		switch ( _factionSelected select 0 ) do {
			case 0: {
						_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a camouflage!</t>";
						[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
						_factionPath = ""; _error = true;
					};
			case 1: {
						_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a camouflage!</t>";
						[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
						_factionPath = ""; _error = true;
					};
			case 2: { _factionPath = "blackops\blackops_"; };
			case 3: { _factionPath = "uk_mtp\uk_"; };
			case 4: {
						_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a camouflage!</t>";
						[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
						_factionPath = ""; _error = true;
					};
			case 5: { _factionPath = "us_1985\us_"; };
			case 6: { _factionPath = "pmc\pmc_"; };
			default { _factionPath = ""; _error = true; };
		};
	};

	// multi camo faction
	if( count _factionSelected == 2 ) then {
		switch ( _factionSelected select 0 ) do {
			case 0: {
						if( _factionSelected select 1 == 0 ) then { _factionPath = "usmc_des\usmc_";  }; 
						if( _factionSelected select 1 == 1 ) then { _factionPath = "usmc_wood\usmc_";  };
					};
			case 1: {
						if( _factionSelected select 1 == 0 ) then { _factionPath = "usarmy_ocp\usarmy_";  }; 
						if( _factionSelected select 1 == 1 ) then { _factionPath = "usarmy_ucp\usarmy_";  };
					};
			case 4: {
						if( _factionSelected select 1 == 0 ) then { _factionPath = "ger_des\bw_";  }; 
						if( _factionSelected select 1 == 1 ) then { _factionPath = "ger_wood\bw_";  };
					};
			default { _factionPath = ""; _error = true; };
		};
	};
};

// opfor is current side
if( lbCurSel _xlistSide == 1 ) then {

	// single camo faction
	if( count _factionSelected == 1 ) then {
		switch ( _factionSelected select 0 ) do {
			case 0: {
						_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a camouflage!</t>";
						[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
						_factionPath = ""; _error = true;
					};
			default { _factionPath = ""; _error = true; };
		};
	};

	// multi camo faction
	if( count _factionSelected == 2 ) then {
		switch ( _factionSelected select 0 ) do {
			case 0: {
						if( _factionSelected select 1 == 0 ) then { _factionPath = "rus_vdv_flora\rus_";  }; 
						if( _factionSelected select 1 == 1 ) then { _factionPath = "rus_vdv_mflora\rus_";  };
						if( _factionSelected select 1 == 2 ) then { _factionPath = "rus_vdv_emr\rus_";  };
					};
			default { _factionPath = ""; _error = true; };
		};
	};
};

// single member role
if( count _roleSelected == 1 ) then {
	switch ( _roleSelected select 0 ) do {
		case 0: { _role = "pl"; };
		case 1: { _role = "prto"; };
		case 2: { _role = "sql"; };
		case 3: { _role = "ftl"; };
		case 4: { _role = "rto"; };
		case 5: { _role = "cm"; };
		case 6: { _role = "eng"; };
		case 7: { _role = "cfr"; };
		case 8: { _role = "ar"; };
		case 9: { _role = "mmg"; };
		case 10: { _role = "aar"; };
		case 11: { _role = "rat"; };
		case 12:{
					_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a a role inside 'Medium AT'!</t>";
					[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
					_role = ""; _error = true;
				};
		case 13:{
					_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a a role inside 'Heavy AT'!</t>";
					[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
					_role = ""; _error = true;
				};
		case 14:{ _role = "aa"; };
		case 15:{ _role = "dmr"; };
		case 16:{
					_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a a role inside 'Pilot'!</t>";
					[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
					_role = ""; _error = true;
				};
		case 17:{ _role = "sni"; };
		case 18:{ _role = "dem"; };
		case 19:{ _role = "arm"; };
		case 20:{ _role = "rif"; };
		default { _role = ""; _error = true; };
	};
};

// multi member role (HAT/MAT/pilot team)
if( count _roleSelected == 2 ) then {
	switch ( _roleSelected select 0 ) do {
		case 12:{
					if( _roleSelected select 1 == 0 ) then { _role = "lmat"; }; 
					if( _roleSelected select 1 == 1 ) then { _role = "mat";  };
					if( _roleSelected select 1 == 2 ) then { _role = "amat"; };
				};
		case 13:{
					if( _roleSelected select 1 == 0 ) then { _role = "lhat"; }; 
					if( _roleSelected select 1 == 1 ) then { _role = "hat";  };
					if( _roleSelected select 1 == 2 ) then { _role = "ahat"; };
				};
		case 16:{
					if( _roleSelected select 1 == 0 ) then { _role = "hel"; }; 
					if( _roleSelected select 1 == 1 ) then { _role = "jet"; };
				};
		default { _role = ""; _error = true; };
	};
};

if ( !_error ) then {
	_scriptName = "BWI\loadouts\" + _factionPath + _role + ".sqf";
	_preprocessedScript = preprocessFileLineNumbers _scriptName;
	// check if faction has corresponding loadout
	if ( _preprocessedScript == "" ) then {
		_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: This faction has no loadout for the selected role.</t>";
		[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
		false;
	} else {
		[objNull, player] call compile _preprocessedScript;

		closeDialog 1;
		true
	};
} else {
	// error occured
	false
};
