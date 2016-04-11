params ["_teamLeader", "_faction", "_role"];

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
};

_timer = 10;
while { _timer > 0 } do {
	hint parseText format ["<t color='#FFA805'>Team Loadout</t><br/>A loadout has been assigned to you by your team leader %1:<br/>In %2 seconds you will change your loadout to:<br/>%3",
						   name _teamLeader,
						   [_timer % 60,2] call CBA_fnc_formatNumber,
						   _roleDisplayName];
	sleep 1;
	_timer = _timer - 1;
};

_scriptName = "BWI\loadouts\" + _factionPath + _role + ".sqf";
[player] call compile preprocessFileLineNumbers _scriptName;