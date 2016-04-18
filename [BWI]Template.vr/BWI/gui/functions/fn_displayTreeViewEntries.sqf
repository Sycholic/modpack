params ["_display"];

_tvFaction = _display displayctrl 1001;
_tvRole    = _display displayctrl 1002;
_xlistSide = _display displayctrl 1006;
_xlistRoleSelection = _display displayctrl 1009;

tvClear _tvFaction;
tvClear _tvRole;

_sideNr = lbCurSel _xlistSide;

switch ( _sideNr ) do {
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

switch( lbCurSel _xlistRoleSelection ) do {
	case 0: {
		_tvRole tvAdd [[],"Platoon"];
		_tvRole tvAdd [[0],"Platoon Leader"];
		_tvRole tvAdd [[0],"Platoon Sergeant"];
		_tvRole tvAdd [[0],"Platoon Corpsman"];

		_tvRole tvAdd [[],"Squad"];
		_tvRole tvAdd [[1],"Squad Leader"];

		_tvRole tvAdd [[],"Fireteam"];
		_tvRole tvAdd [[2],"Fireteam Leader"];
		_tvRole tvAdd [[2],"Grenadier"];
		_tvRole tvAdd [[2],"Automatic Rifleman"];
		_tvRole tvAdd [[2],"Anti-Tank Rifleman"];

		_tvRole tvAdd [[],"Fireteam (MMG)"];
		_tvRole tvAdd [[3],"Automatic Rifleman"];
		_tvRole tvAdd [[3],"Assistant Automatic Rifleman"];

		_tvRole tvAdd [[],"Fireteam (MAT)"];
		_tvRole tvAdd [[4],"Anti-Tank"];
		_tvRole tvAdd [[4],"Assistant Anti-Tank"];

		_tvRole tvAdd [[],"Fireteam (HAT)"];
		_tvRole tvAdd [[5],"Anti-Tank"];
		_tvRole tvAdd [[5],"Assistant Anti-Tank"];

		_tvRole tvAdd [[],"Fireteam (DMR)"];
		_tvRole tvAdd [[6],"Designated Marksman"];
		
		_tvRole tvAdd [[],"Fireteam (AA)"];
		_tvRole tvAdd [[7],"Anti-Air"];
		
		_tvRole tvAdd [[],"Medevac"];
		_tvRole tvAdd [[8],"Combat First Responder"];

		_tvRole tvAdd [[],"Engineering"];
		_tvRole tvAdd [[9],"Combat Engineer"];

		_tvRole tvAdd [[],"Rear Echelon"];
		_tvRole tvAdd [[10],"Team Leader"];
		_tvRole tvAdd [[10],"Rifleman"];

		_tvRole tvAdd [[],"Rear Echolon (Logistics)"];
		_tvRole tvAdd [[11],"Driver"];

		_tvRole tvAdd [[],"Rear Echolon (Fire Support)"];
		_tvRole tvAdd [[12],"Gunner"];
		_tvRole tvAdd [[12],"Assistant Gunner"];
		
		_tvRole tvAdd [[],"Rear Echolon (Sniper)"];
		_tvRole tvAdd [[13],"Sniper"];
		_tvRole tvAdd [[13],"Spotter"];

		_tvRole tvAdd [[],"Rear Echelon (EOD)"];
		_tvRole tvAdd [[14],"Explosive Ordnance Disposal"];

		_tvRole tvAdd [[],"Rear Echolon (TACP)"];
		_tvRole tvAdd [[15],"Joint Termianl Attack Controller"];

		_tvRole tvAdd [[],"Vehicle Crew"];
		_tvRole tvAdd [[16],"Commander"];
		_tvRole tvAdd [[16],"Gunner"];
		_tvRole tvAdd [[16],"Driver"];

		_tvRole tvAdd [[],"Air Crew (Fixed Wing)"];
		_tvRole tvAdd [[17],"Pilot"];
		_tvRole tvAdd [[17],"Copilot"];

		_tvRole tvAdd [[],"Air Crew (Rotary)"];
		_tvRole tvAdd [[18],"Pilot"];
		_tvRole tvAdd [[18],"Copilot"];

		_tvRole tvAdd [[],"Other"];
		_tvRole tvAdd [[19],"Radio Transmitter Operator"];

		_tvRole tvAdd [[],"Zeus"];
	};

	case 1: {
		_tvRole tvAdd [[],"FTL/GRE/AMMG/MMG"];
		_tvRole tvAdd [[],"FTL/GRE/MAT/AMAT"];
		_tvRole tvAdd [[],"FTL/GRE/HAT/AHAT"];
		_tvRole tvAdd [[],"FTL/GRE/DMR/RAT"];
	};
};

_tvFaction tvSetCurSel BWI_armory_factionSelected;
_tvRole tvSetCurSel BWI_armory_roleSelected;