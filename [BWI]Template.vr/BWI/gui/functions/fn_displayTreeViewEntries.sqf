params ["_display", "_sideNr"];

tvClear 1001;
tvClear 1002;

_tvFaction = _display displayctrl 1001;
_tvRole    = _display displayctrl 1002;

if( _sideNr == 0 ) then {
	_tvFaction tvAdd [[],"USMC"];
	_tvFaction tvAdd [[],"US Army"];
	_tvFaction tvAdd [[],"Blackops"];
	_tvFaction tvAdd [[],"UK"];
	_tvFaction tvAdd [[],"Bundeswehr"];
	_tvFaction tvAdd [[],"US - 1985"];
	_tvFaction tvAdd [[],"PMC"];
	_tvFaction tvAdd [[],"SEALS - Scuba"];
	_tvFaction tvAdd [[],"UN (Ger)"];

	_tvFaction tvAdd [[0],"Desert"];
	_tvFaction tvAdd [[0],"Wood"];
	_tvFaction tvExpand [0];

	_tvFaction tvAdd [[1],"OCP"];
	_tvFaction tvAdd [[1],"UCP"];
	_tvFaction tvExpand [1];

	_tvFaction tvAdd [[4],"Tropentarn (Desert)"];
	_tvFaction tvAdd [[4],"Flecktarn (Wood)"];
	_tvFaction tvExpand [4];
} else {
	_tvFaction tvAdd [[],"RUS VDV"];
	_tvFaction tvAdd [[0],"Flora"];
	_tvFaction tvAdd [[0],"Mountain Flora"];
	_tvFaction tvAdd [[0],"EMR"];
	_tvFaction tvExpand [0];
};

_tvRole tvAdd [[],"Platoon Leader"];
_tvRole tvAdd [[],"Platoon RTO"];
_tvRole tvAdd [[],"Squad Leader"];
_tvRole tvAdd [[],"Fireteam Leader"];
_tvRole tvAdd [[],"Radio Operator"];
_tvRole tvAdd [[],"Corpsman"];
_tvRole tvAdd [[],"Engineer"];
_tvRole tvAdd [[],"Combat First Responder"];
_tvRole tvAdd [[],"Automatic Rifleman"];
_tvRole tvAdd [[],"Medium Machine Gun"];
_tvRole tvAdd [[],"Ass. Automatic Rifleman"];
_tvRole tvAdd [[],"Rifleman AT"];
_tvRole tvAdd [[],"Medium AT"];
_tvRole tvAdd [[],"Heavy AT"];
_tvRole tvAdd [[],"Anti Air"];
_tvRole tvAdd [[],"Designated Marksman"];
_tvRole tvAdd [[],"Pilot"];
_tvRole tvAdd [[],"Sniper"];
_tvRole tvAdd [[],"Demolition Specialist"];
_tvRole tvAdd [[],"Armor Crewman"];
_tvRole tvAdd [[],"Rifleman"];

_tvRole tvAdd [[12],"Leader"];
_tvRole tvAdd [[12],"Gunner"];
_tvRole tvAdd [[12],"Spotter"];
_tvRole tvAdd [[13],"Leader"];
_tvRole tvAdd [[13],"Gunner"];
_tvRole tvAdd [[13],"Spotter"];
_tvRole tvAdd [[16],"Rotary"];
_tvRole tvAdd [[16],"Fixed Wing"];

_tvFaction tvSetCurSel BWI_armory_factionSelected;
_tvRole tvSetCurSel BWI_armory_roleSelected;