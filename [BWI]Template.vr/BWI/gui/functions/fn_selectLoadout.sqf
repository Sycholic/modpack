params ["_display"];
private ["_tvFaction", "_tvRole", "_xlistSide", "_factionPath", "_role", "_scriptName", "_error"];

_xlistSide = _display displayctrl 1006;
_xlistRoleSelection = _display displayctrl 1009;
_tvFaction = _display displayctrl 1001;
_tvRole = _display displayctrl 1002;
_errorMsg = _display displayctrl 1007;

_factionSelected = tvCurSel _tvFaction;
_roleSelected = tvCurSel _tvRole;
_factionPath = "";
_role = "";
_loadoutParameter = "";
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
			case 2: { _factionPath = "sfodd_night\sfodd_"; };
			case 3: { _factionPath = "uk_mtp\uk_"; };
			case 4: {
						_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a camouflage!</t>";
						[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
						_factionPath = ""; _error = true;
					};
			case 5: { _factionPath = "usmc_wood86\usmc_"; };
			case 6: { _factionPath = "seals_scuba\seals_"; };
			case 7: { _factionPath = "sfodd_des\sfodd_"; };
			case 8: { _factionPath = "sfodd_wood\sfodd_"; };
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


// independent is current side
if( lbCurSel _xlistSide == 2 ) then {

	// single camo faction
	if( count _factionSelected == 1 ) then {
		switch ( _factionSelected select 0 ) do {
			case 0: { _factionPath = "pmc\pmc_"; };
			case 1: { _factionPath = "syrian_rebels\syrian_"; };
			case 2: { _factionPath = "afghan_militia\afghan_"; };
			case 3: { _factionPath = "afghan_militia84\afghan_"; };
			default { _factionPath = ""; _error = true; };
		};
	};

	// multi camo faction
	if( count _factionSelected == 2 ) then {
		switch ( _factionSelected select 0 ) do {
			default { _factionPath = ""; _error = true; };
		};
	};
};


if( lbCurSel _xlistRoleSelection == 0 ) then {

	// personal roles

	if( count _roleSelected == 1 ) then {
		// single member role
	
		switch ( _roleSelected select 0 ) do {
			case 0 :{
						_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a a role inside 'Platoon'!</t>";
						[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
						_role = ""; _error = true;
					};
			case 1 :{
						_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a a role inside 'Squad'!</t>";
						[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
						_role = ""; _error = true;
					};
			case 2 :{
						_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a a role inside 'Fireteam'!</t>";
						[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
						_role = ""; _error = true;
					};
			case 3 :{
						_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a a role inside 'Fireteam (MMG)'!</t>";
						[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
						_role = ""; _error = true;
					};
			case 4 :{
						_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a a role inside 'Fireteam (MAT)'!</t>";
						[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
						_role = ""; _error = true;
					};
			case 5 :{
						_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a a role inside 'Fireteam (HAT)'!</t>";
						[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
						_role = ""; _error = true;
					};
			case 6 :{
						_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a a role inside 'Fireteam (DMR)'!</t>";
						[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
						_role = ""; _error = true;
					};
			case 7 :{
						_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a a role inside 'Fireteam (AA)'!</t>";
						[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
						_role = ""; _error = true;
					};
			case 8 :{
						_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a a role inside 'Medevac'!</t>";
						[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
						_role = ""; _error = true;
					};
			case 9 :{
						_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a a role inside 'Engineering'!</t>";
						[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
						_role = ""; _error = true;
					};
			case 10 :{
						_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a a role inside 'Rear Echelon'!</t>";
						[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
						_role = ""; _error = true;
					};
			case 11 :{
						_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a a role inside 'Rear Echolon (Logistics)'!</t>";
						[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
						_role = ""; _error = true;
					};
			case 12:{
						_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a a role inside 'Rear Echolon (Fire Support)'!</t>";
						[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
						_role = ""; _error = true;
					};
			case 13:{
						_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a a role inside 'Rear Echolon (Sniper)'!</t>";
						[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
						_role = ""; _error = true;
					};
			case 14:{
						_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a a role inside 'Rear Echolon (EOD)'!</t>";
						[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
						_role = ""; _error = true;
					};
			case 15:{
						_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a a role inside 'Rear Echolon (TACP)'!</t>";
						[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
						_role = ""; _error = true;
					};
			case 16:{
						_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a a role inside 'Vehicle Crew'!</t>";
						[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
						_role = ""; _error = true;
					};
			case 17:{
						_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a a role inside 'Air Crew (Fixed Wing)'!</t>";
						[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
						_role = ""; _error = true;
					};
			case 18:{
						_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a a role inside 'Air Crew (Rotary)'!</t>";
						[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
						_role = ""; _error = true;
					};
			case 19:{
						_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a a role inside 'Other'!</t>";
						[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
						_role = ""; _error = true;
					};
			case 20:{
						_role = "zeus";
					};
			
			default { _role = ""; _error = true; };
		};
	};

	
	if( count _roleSelected == 2 ) then {
		// multi member role (HAT/MAT/pilot team)
	
		switch ( _roleSelected select 0 ) do {
			case 0 :{
						if( _roleSelected select 1 == 0 ) then { _role = "pl"; };
						if( _roleSelected select 1 == 1 ) then { _role = "pl"; };
						if( _roleSelected select 1 == 2 ) then { _role = "cm"; };
					};
			case 1 :{
						if( _roleSelected select 1 == 0 ) then { _role = "sql"; };
					};
			case 2 :{
						if( _roleSelected select 1 == 0 ) then { _role = "ftl"; };
						if( _roleSelected select 1 == 1 ) then { _role = "gre"; };
						if( _roleSelected select 1 == 2 ) then { _role = "lmg"; };
						if( _roleSelected select 1 == 3 ) then { _role = "rat"; };
					};
			case 3 :{
						if( _roleSelected select 1 == 0 ) then { _role = "mmg"; };
						if( _roleSelected select 1 == 1 ) then { _role = "ammg"; };
					};
			case 4 :{
						if( _roleSelected select 1 == 0 ) then { _role = "mat"; };
						if( _roleSelected select 1 == 1 ) then { _role = "amat"; };
					};
			case 5 :{
						if( _roleSelected select 1 == 0 ) then { _role = "hat";  };
						if( _roleSelected select 1 == 1 ) then { _role = "ahat"; };
					};
			case 6 :{
						if( _roleSelected select 1 == 0 ) then { _role = "dmr"; };
					};
			case 7 :{
						if( _roleSelected select 1 == 0 ) then { _role = "aa"; };
					};
			case 8 :{
						if( _roleSelected select 1 == 0 ) then { _role = "cfr"; };
					};
			case 9 :{
						if( _roleSelected select 1 == 0 ) then { _role = "eng"; };
					};
			case 10 :{
						if( _roleSelected select 1 == 0 ) then { _role = "ftl"; };
						if( _roleSelected select 1 == 1 ) then { _role = "rif"; };
					};
			case 11 :{
						if( _roleSelected select 1 == 0 ) then { _role = "drv"; };
					};
			case 12:{
						if( _roleSelected select 1 == 0 ) then { _role = "fsp"; };
						if( _roleSelected select 1 == 1 ) then { _role = "fsp"; };
					};
			case 13:{
						if( _roleSelected select 1 == 0 ) then { _role = "sni"; };
						if( _roleSelected select 1 == 1 ) then { _role = "spo"; };
					};
			case 14:{
						if( _roleSelected select 1 == 0 ) then { _role = "eod"; };
					};
			case 15:{
						if( _roleSelected select 1 == 0 ) then { _role = "jtac"; };
					};
			case 16:{
						if( _roleSelected select 1 == 0 ) then { _role = "arm"; };
						if( _roleSelected select 1 == 1 ) then { _role = "arm"; };
						if( _roleSelected select 1 == 2 ) then { _role = "arm"; };
					};
			case 17:{
						if( _roleSelected select 1 == 0 ) then { _role = "jet"; };
						if( _roleSelected select 1 == 1 ) then { _role = "jet"; };
					};
			case 18:{
						if( _roleSelected select 1 == 0 ) then { _role = "hel"; };
						if( _roleSelected select 1 == 1 ) then { _role = "hel"; };
					};
			case 19:{
						if( _roleSelected select 1 == 0 ) then { _role = "rto"; };
					};
			case 20:{
						// can not be selected
					};
			default { 
                        _role = ""; _error = true;
                    };
		};
	};

} else {

	// team roles
	if( count _roleSelected == 1 ) then {
	
		_recipientBaseFireteam = (str player) select [0,14];
		_recipientGRE = _recipientBaseFireteam + "gre";
		_recipientARI = _recipientBaseFireteam + "ari";
		_recipientATR = _recipientBaseFireteam + "atr";
		
		// 0 : FTL/GRE/AMMG/MMG
		// 1 : FTL/GRE/MAT/AMAT
		// 2 : FTL/GRE/HAT/AHAT
		// 3 : FTL/GRE/DMR/RAT
	
		switch( _roleSelected select 0 ) do {
			case 0  :{
							_role = "ftl";
							[player, _factionPath, "gre"]   remoteExec ["BWI_fnc_ReceiveTeamLoadout", _recipientGRE, false];
							[player, _factionPath, "mmg"]   remoteExec ["BWI_fnc_ReceiveTeamLoadout", _recipientARI, false];
							[player, _factionPath, "ammg"]  remoteExec ["BWI_fnc_ReceiveTeamLoadout", _recipientATR, false];
					   };
			case 1  :{
							_role = "ftl";
							[player, _factionPath, "gre"]   remoteExec ["BWI_fnc_ReceiveTeamLoadout", _recipientGRE, false];
							[player, _factionPath, "amat"]  remoteExec ["BWI_fnc_ReceiveTeamLoadout", _recipientARI, false];
							[player, _factionPath, "mat"]   remoteExec ["BWI_fnc_ReceiveTeamLoadout", _recipientATR, false];
					   };
			case 2  :{
							_role = "ftl";
							[player, _factionPath, "gre"]   remoteExec ["BWI_fnc_ReceiveTeamLoadout", _recipientGRE, false];
							[player, _factionPath, "ahat"]  remoteExec ["BWI_fnc_ReceiveTeamLoadout", _recipientARI, false];
							[player, _factionPath, "hat"]   remoteExec ["BWI_fnc_ReceiveTeamLoadout", _recipientATR, false];
					   };
			case 3  :{
							_role = "ftl";
							[player, _factionPath, "gre"]   remoteExec ["BWI_fnc_ReceiveTeamLoadout", _recipientGRE, false];
							[player, _factionPath, "dmr"]   remoteExec ["BWI_fnc_ReceiveTeamLoadout", _recipientARI, false];
							[player, _factionPath, "rat"]   remoteExec ["BWI_fnc_ReceiveTeamLoadout", _recipientATR, false];
					   };
			default    {
							_role = ""; _error = true;
					   };
		};
		
	};
};

if ( !_error ) then {
	_scriptName = "BWI\loadouts\" + _factionPath + _role + ".sqf";
	_preprocessedScript = preprocessFileLineNumbers _scriptName;
	// check if faction has corresponding loadout
	if ( _preprocessedScript == "" ) then {
		_errorMsg ctrlSetStructuredText parseText "<t color='#ff1111'>Error: This faction has no loadout for the selected role.</t>";
		[_errorMsg] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
		false
	} else {
		
		BWI_armory_sideSelected = lbCurSel _xlistSide;
		BWI_armory_factionSelected = _factionSelected;
		BWI_armory_roleSelected = _roleSelected;
		
		if( "" == _loadoutParameter ) then {
			[player] call compile _preprocessedScript;
		} else {
			[player, _loadoutParameter] call compile _preprocessedScript;
		};
		
		closeDialog 1;
		true
	};
} else {
	// error occured
	false
};
