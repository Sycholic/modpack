params ["_teamLeader", "_factionPath", "_role"];
private ["_roleDisplayName", "_factionDisplayName"];

switch( _role ) do {
	case "gre": {
		_roleDisplayName = "Grenadier";
	};
	
	case "lmg": {
		_roleDisplayName = "LMG Gunner";
	};
	
	case "almg": {
		_roleDisplayName = "LMG Assistant";
	};
	
	case "mmg": {
		_roleDisplayName = "MMG Gunner";
	};
	
	case "ammg": {
		_roleDisplayName = "MMG Assistant";
	};
	
	case "mat": {
		_roleDisplayName = "Medium AT Gunner";
	};
	
	case "amat": {
		_roleDisplayName = "Medium AT Assistant";
	};
	
	case "hat": {
		_roleDisplayName = "Heavy AT Gunner";
	};
	
	case "ahat": {
		_roleDisplayName = "Heavy AT Assistant";
	};
    
    default {
        _roleDisplayName = "";
    };
};

switch( _factionPath ) do {
	case "usmc_des\usmc_": {
		_factionDisplayName = "USMC (Desert)";
	};
	
	case "usmc_wood": {
		_factionDisplayName = "USMC (Wood)";
	};
	
	case "usarmy_ocp\usarmy_": {
		_factionDisplayName = "US Army (OCP)";
	};
	
	case "usarmy_ucp\usarmy_": {
		_factionDisplayName = "US Army (UCP)";
	};
	
	case "ger_des\bw_": {
		_factionDisplayName = "Bundeswehr (Desert/Tropen)";
	};
	
	case "ger_wood\bw_": {
		_factionDisplayName = "Bundeswehr (Wood/Fleck)";
	};
	
	case "sfodd_night\sfodd_": {
		_factionDisplayName = "Special Forces";
	};
	
	case "uk_mtp\uk_": {
		_factionDisplayName = "UK MTP";
	};
	
	case "us_1985\us_": {
		_factionDisplayName = "US (1985)";
	};
    
    case "seals_scuba\seals_": {
		_factionDisplayName = "US Navy SEALS";
	};
    
    case "us_1985\us_": {
		_factionDisplayName = "US (1985)";
	};
    
    default {
		_factionDisplayName = "";
	};
};

_timer = 10;
while { _timer > 0 } do {
	hintSilent parseText format ["<t color='#FFA805'>Team Loadout</t><br/>A loadout has been assigned to you by your team leader %1:<br/>In %2 seconds you will change your loadout to:<br/>%3 / %4",
                            name _teamLeader,
                            [_timer % 60,2] call CBA_fnc_formatNumber,
                            _factionDisplayName,
                            _roleDisplayName];
	sleep 1;
	_timer = _timer - 1;
};

hintSilent parseText format ["<t color='#FFA805'>Team Loadout</t><br/>New loadout loading...<br/>%1 / %2",
                            _factionDisplayName,
                            _roleDisplayName];

_scriptName = "BWI\loadouts\" + _factionPath + _role + ".sqf";
[player] call compile preprocessFileLineNumbers _scriptName;