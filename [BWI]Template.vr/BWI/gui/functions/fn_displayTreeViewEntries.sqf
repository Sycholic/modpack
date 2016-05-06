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
		_tvFaction tvAdd [[],"British Army"];
		_tvFaction tvAdd [[0],"MTP (c. 2013)"];
		_tvFaction tvExpand [0];
		
		_tvFaction tvAdd [[],"Bundeswehr"];
		_tvFaction tvAdd [[1],"Tropentarn (c. 2010)"];
		_tvFaction tvAdd [[1],"Flecktarn (c. 2010)"];
		_tvFaction tvExpand [1];
		
		_tvFaction tvAdd [[],"Delta Force"];
		_tvFaction tvAdd [[2],"Desert (c. 1993)"];
		_tvFaction tvAdd [[2],"Desert (c. 2016)"];
		_tvFaction tvAdd [[2],"Night (c. 2016)"];
		_tvFaction tvAdd [[2],"Urban (c. 2016)"];
		_tvFaction tvAdd [[2],"Woodland (c. 2016)"];
		_tvFaction tvExpand [2];
		
		_tvFaction tvAdd [[],"Finnish Defence Forces"];
		_tvFaction tvAdd [[3],"Winter (c. 2008)"];
		_tvFaction tvAdd [[3],"Woodland (c. 2008)"];
		_tvFaction tvExpand [3];
				
		_tvFaction tvAdd [[],"Israel Defence Forces"];
		_tvFaction tvAdd [[4],"Field Dress (c. 2016)"];
		_tvFaction tvExpand [4];
		
		_tvFaction tvAdd [[],"Norwegian Army"];
		_tvFaction tvAdd [[5],"Desert (c. 2006)"];
		_tvFaction tvAdd [[5],"Woodland (c. 2006)"];
		_tvFaction tvExpand [5];
		
		_tvFaction tvAdd [[],"Royal Danish Army"];
		_tvFaction tvAdd [[6],"MTP (c. 2015)"];
		_tvFaction tvExpand [6];
		
		_tvFaction tvAdd [[],"Special Air Service"];
		_tvFaction tvAdd [[7],"Desert (c. 1991)"];
		_tvFaction tvAdd [[7],"Woodland (c. 1991)"];
		_tvFaction tvAdd [[7],"MTP (c. 2016)"];
		_tvFaction tvExpand [7];
		
		_tvFaction tvAdd [[],"Swedish Army"];
		_tvFaction tvAdd [[8],"Desert (c. 2010)"];
		_tvFaction tvAdd [[8],"Woodland (c. 2010)"];
		_tvFaction tvExpand [8];
		
		_tvFaction tvAdd [[],"US Army"];
		_tvFaction tvAdd [[9],"DCU (c. 1993)"];
		_tvFaction tvAdd [[9],"UCP (c. 2013)"];
		_tvFaction tvAdd [[9],"OCP (c. 2015)"];
		_tvFaction tvExpand [9];
		
		_tvFaction tvAdd [[],"US Navy"];
		_tvFaction tvAdd [[10],"SEALS (c. 2016)"];
		_tvFaction tvExpand [10];
		
		_tvFaction tvAdd [[],"USMC"];
		_tvFaction tvAdd [[11],"Woodland (c. 1986)"];
		_tvFaction tvAdd [[11],"Desert (c. 2008)"];
		_tvFaction tvAdd [[11],"Woodland (c. 2008)"];
		_tvFaction tvAdd [[11],"Desert (c. 2018)"];
		_tvFaction tvAdd [[11],"Woodland (c. 2018)"];
		_tvFaction tvExpand [11];
	};
		
	case 1: {
		_tvFaction tvAdd [[],"Russian VDV"];
		_tvFaction tvAdd [[0],"Flora (c. 2006)"];
		_tvFaction tvAdd [[0],"M. Flora (c. 2006)"];
		_tvFaction tvAdd [[0],"EMR (c. 2018)"];
		_tvFaction tvExpand [0];
		
		_tvFaction tvAdd [[],"Spetsnaz GRU"];
		_tvFaction tvAdd [[1],"Woodland (c. 2018)"];
		_tvFaction tvAdd [[1],"Urban (c. 2018)"];
		_tvFaction tvExpand [1];
		
		_tvFaction tvAdd [[],"USSR OKSVA"];
		_tvFaction tvAdd [[2],"Summer (c. 1984)"];
		_tvFaction tvAdd [[2],"Winter (c. 1984)"];
		_tvFaction tvExpand [2];
	};
	
	case 2: {
		_tvFaction tvAdd [[],"Afghanistan"];
		_tvFaction tvAdd [[0],"Mujahideen (c. 1984)"];
		_tvFaction tvAdd [[0],"Taliban (c. 2001)"];
		_tvFaction tvExpand [0];
	
		_tvFaction tvAdd [[],"Contractors"];
		_tvFaction tvAdd [[1],"Black Watch (c. 2018)"];
		_tvFaction tvAdd [[1],"ION Corp. (c. 2014)"];
		_tvFaction tvExpand [1];
		
		_tvFaction tvAdd [[],"Finnish Peacekeepers"];
		_tvFaction tvAdd [[2],"UN Woodland (c. 2008)"];
		_tvFaction tvExpand [2];
		
		_tvFaction tvAdd [[],"Swedish Peacekeepers"];
		_tvFaction tvAdd [[3],"UN Desert (c. 2010)"];
		_tvFaction tvAdd [[3],"UN Woodland (c. 2010)"];
		_tvFaction tvExpand [3];
		
		_tvFaction tvAdd [[],"Syria"];
		_tvFaction tvAdd [[4],"FSA (c. 2011)"];
		_tvFaction tvExpand [4];
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
		_tvRole tvAdd [[15],"Joint Terminal Attack Controller"];

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