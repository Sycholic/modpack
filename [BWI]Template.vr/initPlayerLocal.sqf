/**
*
*	Vars for reinsertion
*
*/
BWI_playerGotKilled = false;
BWI_playerCanDeploy = true;
BWI_playerKillCount = 0;
BWI_playerReinsertionQueue = [];
BWI_playerReinsertCriticalSection = false;
BWI_displayReinsertionQueue = false;

/**
*
*	Vars for FOB objects
*   The condigtions are needed! Otherwise JIP-queued FOB placements are being overwritten with objNull
*
*/
if ( isNil "BWI_logistics_FOB_Flag" ) then {
	BWI_logistics_FOB_Flag = objNull;
};

if ( isNil "BWI_logistics_FOB_Net" ) then {
	BWI_logistics_FOB_Net = objNull;
};

if ( isNil "BWI_logistics_FOB_AmmoBox" ) then {
	BWI_logistics_FOB_AmmoBox = objNull;
};

if ( isNil "BWI_logistics_FOB_Table1" ) then {
	BWI_logistics_FOB_Table1 = objNull;
};

if ( isNil "BWI_logistics_FOB_Table2" ) then {
	BWI_logistics_FOB_Table2 = objNull;
};

if ( isNil "BWI_logistics_FOB_Board" ) then {
	BWI_logistics_FOB_Board = objNull;
};

/**
*
*	Evaluate preselected factions and slot description
*
*/
BWI_armory_baseSlot = "You are slotted as: ";
BWI_squadName = "";

if( side player == west ) then {
	BWI_armory_sideSelected = 0;
	BWI_armory_factionSelected = [0,0];
};

if( side player == east ) then {
	BWI_armory_sideSelected = 1;
	BWI_armory_factionSelected = [0,1];
};

if( side player == independent ) then {
	BWI_armory_sideSelected = 2;
	BWI_armory_factionSelected = [0];
};

if( player in [z1,z2,z3,z4,z5,z6,z7,z8] ) then {
	BWI_armory_roleSelected = [18];
	BWI_armory_baseSlot = BWI_armory_baseSlot + "Zeus";
	group player setGroupIdGlobal ["Game Master"];
} else {
	_squad    	    = (str player) select [6,3];
	_platoonRole 	= (str player) select [10,3];
	_fireteam		= (str player) select [10,3];
	_fireteamRole   = (str player) select [14,3];

	switch _squad do 
	{
		case "ple": {
			if( _platoonRole == "pll" ) then {
				BWI_armory_roleSelected = [0,0];
				BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon Leader";
				group player setGroupIdGlobal ["Platoon Element"];
			};
			
			if( _platoonRole == "pls" ) then {
				BWI_armory_roleSelected = [0,1];
				BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon Seergeant";
			};
			
			if( _platoonRole == "plc" ) then {
				BWI_armory_roleSelected = [0,2];
				BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon Corpsman";
			};
		};
		
		case "log": {
			if( _platoonRole == "eng" ) then {
				BWI_armory_roleSelected = [7,0];
				BWI_armory_baseSlot = BWI_armory_baseSlot + "Combat Engineer";
			};
		};

		case "med": {
			if( _platoonRole == "cfr" ) then {
				BWI_armory_roleSelected = [6,0];
				BWI_armory_baseSlot = BWI_armory_baseSlot + "MEDEVAC CFR";
			};
		};
		
		case "arm": {
			_armorNumber = (str player) select [9,1];
			_armorRole = (str player) select [11,3];
					
			if( _armorRole == "dri" ) then {
				BWI_armory_baseSlot = BWI_armory_baseSlot + "Armor " + _armorNumber + " Driver";
				group player setGroupIdGlobal ["Armor"];
				BWI_armory_roleSelected = [14,2];
			};
			
			if( _armorRole == "gun" ) then {
				BWI_armory_baseSlot = BWI_armory_baseSlot + "Armor " + _armorNumber + " Gunner";
				BWI_armory_roleSelected = [14,1];
			};
			
			if( _armorRole == "com" ) then {
				BWI_armory_baseSlot = BWI_armory_baseSlot + "Armor " + _armorNumber + " Commander";
				BWI_armory_roleSelected = [14,0];
			};
		};

		case "jet": {
			_jetNumber = (str player) select [9,1];
			_jetRole = (str player) select [11,3];
					
			if( _jetRole == "pil" ) then {
				BWI_armory_baseSlot = BWI_armory_baseSlot + "Jet " + _armorNumber + " Pilot";
				group player setGroupIdGlobal ["Jet"];
				BWI_armory_roleSelected = [16,0];
			};
			
			if( _jetRole == "cop" ) then {
				BWI_armory_baseSlot = BWI_armory_baseSlot + "Jet " + _armorNumber + " Copilot";
				BWI_armory_roleSelected = [16,1];
			};

			
		};	
		
		case "rot": {
			_rotNumber = (str player) select [9,1];
			_rotRole = (str player) select [11,3];
					
			if( _rotRole == "pil" ) then {
				BWI_armory_baseSlot = BWI_armory_baseSlot + "Rotary " + _armorNumber + " Pilot";
				group player setGroupIdGlobal ["Rotary"];
				BWI_armory_roleSelected = [16,0];
			};
			
			if( _rotRole == "cop" ) then {
				BWI_armory_baseSlot = BWI_armory_baseSlot + "Rotary " + _armorNumber + " Copilot";
				BWI_armory_roleSelected = [16,1];
			};
		};
		
		default {
			
			BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon 1";
			
			if( _squad == "sqa" ) then {
				BWI_armory_baseSlot = BWI_armory_baseSlot + " / Squad Alpha";
				BWI_squadName = "Alpha";
			};
			
			if( _squad == "sqb" ) then {
				BWI_armory_baseSlot = BWI_armory_baseSlot + " / Squad Bravo";
				BWI_squadName = "Bravo";
			};
			
			if( _squad == "sqc" ) then {
				BWI_armory_baseSlot = BWI_armory_baseSlot + " / Squad Charlie";
				BWI_squadName = "Charlie";
			};
		
			switch _fireteam do {
			
				case "sqe": {
					BWI_armory_baseSlot = BWI_armory_baseSlot + " / Squad Element";
					
					if( _fireteamRole == "sql" ) then {
						BWI_armory_roleSelected = [1,0];
						BWI_armory_baseSlot = BWI_armory_baseSlot + " / Leader";
						group player setGroupIdGlobal ["%GroupNames", BWI_squadName];
					};
				};
				
				case "ft1": {
					BWI_armory_baseSlot = BWI_armory_baseSlot + " / Fireteam 1";
					
					if( _fireteamRole == "ftl" ) then {
						BWI_armory_roleSelected = [2,0];
						BWI_armory_baseSlot = BWI_armory_baseSlot + " / Leader";
					};
					
					if( _fireteamRole == "ari" ) then {
						BWI_armory_roleSelected = [2,2];
						BWI_armory_baseSlot = BWI_armory_baseSlot + " / Automatic Rifleman";
					};
					
					if( _fireteamRole == "atr" ) then {
						BWI_armory_roleSelected = [2,3];
						BWI_armory_baseSlot = BWI_armory_baseSlot + " / Anti-Tank Rifleman";
					};
					
					if( _fireteamRole == "gre" ) then {
						BWI_armory_roleSelected = [2,1];
						BWI_armory_baseSlot = BWI_armory_baseSlot + " / Grenadier";
					};
				};
				
				case "ft2": {
					BWI_armory_baseSlot = BWI_armory_baseSlot + " / Fireteam 2";
					
					if( _fireteamRole == "ftl" ) then {
						BWI_armory_roleSelected = [2,0];
						BWI_armory_baseSlot = BWI_armory_baseSlot + " / Leader";
					};
					
					if( _fireteamRole == "ari" ) then {
						BWI_armory_roleSelected = [2,2];
						BWI_armory_baseSlot = BWI_armory_baseSlot + " / Automatic Rifleman";
					};
					
					if( _fireteamRole == "atr" ) then {
						BWI_armory_roleSelected = [2,3];
						BWI_armory_baseSlot = BWI_armory_baseSlot + " / Anti-Tank Rifleman";
					};
					
					if( _fireteamRole == "gre" ) then {
						BWI_armory_roleSelected = [2,1];
						BWI_armory_baseSlot = BWI_armory_baseSlot + " / Grenadier";
					};
				};
			};
		};
	};
};