params ["_display", "_sideNr"];

tvClear 1001;
tvClear 1002;

_tvFaction = _display displayctrl 1001;
_tvRole    = _display displayctrl 1002;

switch _sideNr do {
	case 0:	{
		_tvFaction tvAdd [[],"USMC"];
		_tvFaction tvAdd [[],"US Army"];
		_tvFaction tvAdd [[],"Blackops"];
		_tvFaction tvAdd [[],"UK"];
		_tvFaction tvAdd [[],"Bundeswehr"];
		_tvFaction tvAdd [[],"US - 1985"];
		_tvFaction tvAdd [[],"SEALS - Scuba"];
		//_tvFaction tvAdd [[],"UN (Ger)"]; disabled, LOP UN vests gone with the modpack

		_tvFaction tvAdd [[0],"Desert"];
		_tvFaction tvAdd [[0],"Wood"];
		_tvFaction tvExpand [0];

		_tvFaction tvAdd [[1],"OCP"];
		_tvFaction tvAdd [[1],"UCP"];
		_tvFaction tvExpand [1];

		_tvFaction tvAdd [[4],"Tropentarn (Desert)"];
		_tvFaction tvAdd [[4],"Flecktarn (Wood)"];
		_tvFaction tvExpand [4];
	};
		
	case 1: {
		_tvFaction tvAdd [[],"RUS VDV"];
		_tvFaction tvAdd [[],"Taliban"];
		
		_tvFaction tvAdd [[0],"Flora"];
		_tvFaction tvAdd [[0],"Mountain Flora"];
		_tvFaction tvAdd [[0],"EMR"];
		
		_tvFaction tvExpand [0];
	};
	
	case 2: {
		_tvFaction tvAdd [[],"PMC"];
		_tvFaction tvAdd [[],"FSA"];
	};
};

_tvRole tvAdd [[],"Leadership"];
_tvRole tvAdd [[],"Radio"];
_tvRole tvAdd [[],"Support"];
_tvRole tvAdd [[],"LMG Team"];
_tvRole tvAdd [[],"MMG Team"];
_tvRole tvAdd [[],"MAT Team"];
_tvRole tvAdd [[],"HAT Team"];
_tvRole tvAdd [[],"Specialists"];
_tvRole tvAdd [[],"Crewman"];
_tvRole tvAdd [[],"Rifleman"];
_tvRole tvAdd [[],"Zeus"];

_tvRole tvAdd [[0],"Platoon Leader"];
_tvRole tvAdd [[0],"Ass. Platoon Leader"];
_tvRole tvAdd [[0],"Squad Leader"];
_tvRole tvAdd [[0],"Fireteam Leader"];

_tvRole tvAdd [[1],"Platoon RTO"];
_tvRole tvAdd [[1],"Radio Operator"];

_tvRole tvAdd [[2],"Corpsman"];
_tvRole tvAdd [[2],"Combat First Responder"];
_tvRole tvAdd [[2],"Engineer (FOB)"];
_tvRole tvAdd [[2],"Engineer (MEDTENT)"];

_tvRole tvAdd [[3],"Gunner"];
_tvRole tvAdd [[3],"Assistant"];

_tvRole tvAdd [[4],"Gunner"];
_tvRole tvAdd [[4],"Assistant"];

_tvRole tvAdd [[5],"Leader"];
_tvRole tvAdd [[5],"Gunner"];
_tvRole tvAdd [[5],"Spotter"];

_tvRole tvAdd [[6],"Leader"];
_tvRole tvAdd [[6],"Gunner"];
_tvRole tvAdd [[6],"Spotter"];

_tvRole tvAdd [[7],"Rifleman AT"];
_tvRole tvAdd [[7],"Anti Air"];
_tvRole tvAdd [[7],"Designated Marksman"];
_tvRole tvAdd [[7],"Sniper"];
_tvRole tvAdd [[7],"Demolition Specialist"];

_tvRole tvAdd [[8],"Fixed Wing"];
_tvRole tvAdd [[8],"Rotary"];
_tvRole tvAdd [[8],"Armor Crewman"];


_tvFaction tvSetCurSel BWI_armory_factionSelected;
_tvRole tvSetCurSel BWI_armory_roleSelected;