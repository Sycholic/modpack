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
	BWI_armory_roleSelected = [1];
	BWI_armory_baseSlot = BWI_armory_baseSlot + "Zeus";
	group player setGroupIdGlobal ["Game Master"];
} else {
	_squad    	    = (str player) select [6,3];
	_platoonRole2 	= (str player) select [10,2];
	_platoonRole 	= (str player) select [10,3];
	_platoonRole4	= (str player) select [10,4];
	_fireteam		= (str player) select [10,3];
	_fireteamRole   = (str player) select [14,3];

	switch _squad do 
	{
		case "ple": {
			if( _platoonRole2 == "pl" ) then {
				BWI_armory_roleSelected = [0];
				BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon Leader";
				group player setGroupIdGlobal ["Platoon Element"];
			};
			
			if( _platoonRole == "apl" ) then {
				BWI_armory_roleSelected = [0];
				BWI_armory_baseSlot = BWI_armory_baseSlot + " Assistant Platoon Leader";
				group player setGroupIdGlobal ["Support Element"];
			};
			
			if( _platoonRole == "rto" ) then {
				BWI_armory_roleSelected = [1];
				BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon JTAC";
			};
		};
		
		case "log": {
			if( _platoonRole4 == "eng1" ) then {
				BWI_armory_roleSelected = [6];
				BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon Combat Engineer (FOB)";
			};
			
			if( _platoonRole4 == "eng2" ) then {
				BWI_armory_roleSelected = [7];
				BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon Combat Engineer (MEDTENT)";
			};
		};

		case "med": {
			if( _platoonRole2 == "cm"  ) then {
				BWI_armory_roleSelected = [5];
				BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon Corpsman";
			};
		};
		
		case "arm": {
			_armorNumber = (str player) select [9,1];
			_armorRole = (str player) select [11,3];
					
			if( _armorNumber == "1" ) then {
			
				if( _armorRole == "dri" ) then {
					BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon 1 / Armor 1 Driver";
					group player setGroupIdGlobal ["Armor 1"];
				};
				
				if( _armorRole == "gun" ) then {
					BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon 1 / Armor 1 Gunner";
				};
				
				if( _armorRole == "com" ) then {
					BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon 1 / Armor 1 Commander";
				};
				
			} else {
			
				if( _armorRole == "dri" ) then {
					BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon 1 / Armor 2 Driver";
					group player setGroupIdGlobal ["Armor 2"];
				};
				
				if( _armorRole == "gun" ) then {
					BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon 1 / Armor 2 Gunner";
				};
				
				if( _armorRole == "com" ) then {
					BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon 1 / Armor 2 Commander";
				};
				
			};
			
			BWI_armory_roleSelected = [19];
		};

		case "jet": {
			_jetRole = (str player) select [11,3];
					
			if( _jetRole == "pil" ) then {
				BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon 1 / Jet 1 Pilot";
				group player setGroupIdGlobal ["Jet 1"];
			};
			
			if( _jetRole == "cop" ) then {
				BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon 1 / Jet 1 Copilot";
			};

			BWI_armory_roleSelected = [16,0];
		};	
		
		case "rot": {
			_rotRole = (str player) select [11,3];
					
			if( _rotRole == "pil" ) then {
				BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon 1 / Rotary 1 Pilot";
				group player setGroupIdGlobal ["Rotary 1"];
			};
			
			if( _rotRole == "cop" ) then {
				BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon 1 / Rotary 1 Copilot";
			};
			
			BWI_armory_roleSelected = [16,1];
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
						BWI_armory_roleSelected = [2];  BWI_armory_baseSlot = BWI_armory_baseSlot + " / Leader";
						group player setGroupIdGlobal ["%GroupNames-Actual", BWI_squadName];
					};
					
					if( _fireteamRole == "rto" ) then {
						BWI_armory_roleSelected = [4];
						BWI_armory_baseSlot = BWI_armory_baseSlot + " / Radio Operator";
					};
					
					if( _fireteamRole == "rif" ) then {
						BWI_armory_roleSelected = [20];
						BWI_armory_baseSlot = BWI_armory_baseSlot + " / Rifleman";
					};
				};
				
				case "ft1": {
					BWI_armory_baseSlot = BWI_armory_baseSlot + " / Fireteam 1";
					
					if( _fireteamRole == "ftl" ) then {
						BWI_armory_roleSelected = [3];
						BWI_armory_baseSlot = BWI_armory_baseSlot + " / Leader";
					};
					
					if( _fireteamRole == "cfr" ) then {
						BWI_armory_roleSelected = [7];
						BWI_armory_baseSlot = BWI_armory_baseSlot + " / Combat First Responder";
					};
					
					if( _fireteamRole == "rif" ) then {
						BWI_armory_roleSelected = [20];
						BWI_armory_baseSlot = BWI_armory_baseSlot + " / Rifleman";
					};
				};
				
				case "ft2": {
					BWI_armory_baseSlot = BWI_armory_baseSlot + " / Fireteam 2";
					
					if( _fireteamRole == "ftl" ) then {
						BWI_armory_roleSelected = [3];
						BWI_armory_baseSlot = BWI_armory_baseSlot + " / Leader";
					};
					
					if( _fireteamRole == "cfr" ) then {
						BWI_armory_roleSelected = [7];
						BWI_armory_baseSlot = BWI_armory_baseSlot + " / Combat First Responder";
					};
					
					if( _fireteamRole == "rif" ) then {
						BWI_armory_roleSelected = [20];
						BWI_armory_baseSlot = BWI_armory_baseSlot + " / Rifleman";
					};
				};
			};
		};
	};
};


/**
*
*	Vars for reinsertion
*
*/
"BWI_logistics_FOB_Flag" addPublicVariableEventHandler {
	_squad 			= (str player) select [6,3];
	_platoonRole 	= (str player) select [10,3];
	_platoonRole2	= (str player) select [10,2];

	if( _squad == "log" && _platoonRole == "eng" ) then {
		BWI_logistics_FOB_Flag addAction ["<t color='#1111ff'>Deconstruct FOB</t>", "BWI\scripts\repackageFOB.sqf", [], 1.5, false, false, "", "('ToolKit' in items _this)"];
	};
};