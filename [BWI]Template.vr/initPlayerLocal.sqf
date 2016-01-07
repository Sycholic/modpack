BWI_medical_MASH = objNull;
BWI_medical_TentDeployed = false;

BWI_armory_baseSlot = "You are slotted as: ";

if( side player == west ) then {
	BWI_armory_sideSelected = 0;
	BWI_armory_factionSelected = [0,0];
} else {
	BWI_armory_sideSelected = 1;
	BWI_armory_factionSelected = [0,1];
};

_squad    	    = (str player) select [6,3];
_platoonRole2 	= (str player) select [10,2];
_platoonRole 	= (str player) select [10,3];
_fireteam		= (str player) select [10,3];
_fireteamRole   = (str player) select [14,3];

switch _squad do 
{
	case "ple": {
		if( _platoonRole2 == "pl" ) then { BWI_armory_roleSelected = [0]; BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon Leader"; };
		if( _platoonRole == "rto" ) then { BWI_armory_roleSelected = [1]; BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon JTAC"; };
	};
	
	case "log": {
		if( _platoonRole == "eng" ) then { BWI_armory_roleSelected = [6];  BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon Combat Engineer"; };
		if( _platoonRole == "dri" ) then { BWI_armory_roleSelected = [20]; BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon Logistics Driver"; };
	};

	case "med": {
		if( _platoonRole2 == "cm"  ) then { BWI_armory_roleSelected = [5];  BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon Corpsman"; };
		if( _platoonRole  == "dri" ) then { BWI_armory_roleSelected = [20]; BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon Medical Driver"; };
	};
	
	case "arm": {
		_armorNumber = (str player) select [9,1];
		_armorRole = (str player) select [11,3];
				
		if( _armorNumber == "1" ) then {
			if( _armorRole == "dri" ) then { BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon 1 / Armor 1 Driver"; };
			if( _armorRole == "gun" ) then { BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon 1 / Armor 1 Gunner"; };
			if( _armorRole == "com" ) then { BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon 1 / Armor 1 Commander"; };
		} else {
			if( _armorRole == "dri" ) then { BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon 1 / Armor 2 Driver"; };
			if( _armorRole == "gun" ) then { BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon 1 / Armor 2 Gunner"; };
			if( _armorRole == "com" ) then { BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon 1 / Armor 2 Commander"; };
		};
		BWI_armory_roleSelected = [19];
	};

	case "jet": {
		_jetRole = (str player) select [11,3];
				
		if( _jetRole == "pil" ) then { BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon 1 / Jet 1 Pilot"; };
		if( _jetRole == "cop" ) then { BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon 1 / Jet 1 Copilot"; };

		BWI_armory_roleSelected = [16,0];
	};	
	
	case "rot": {
		_rotRole = (str player) select [11,3];
				
		if( _rotRole == "pil" ) then { BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon 1 / Rotary 1 Pilot"; };
		if( _rotRole == "cop" ) then { BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon 1 / Rotary 1 Copilot"; };
		
		BWI_armory_roleSelected = [16,1];
	};
	
	default {
		
		BWI_armory_baseSlot = BWI_armory_baseSlot + "Platoon 1";
		
		if( _squad == "sqa" ) then { BWI_armory_baseSlot = BWI_armory_baseSlot + " / Squad Alpha"; };
		if( _squad == "sqb" ) then { BWI_armory_baseSlot = BWI_armory_baseSlot + " / Squad Bravo"; };
		if( _squad == "sqc" ) then { BWI_armory_baseSlot = BWI_armory_baseSlot + " / Squad Charlie"; };
	
		switch _fireteam do {
		
			case "sqe": {
				BWI_armory_baseSlot = BWI_armory_baseSlot + " / Squad Element";
				
				if( _fireteamRole == "sql" ) then { BWI_armory_roleSelected = [2];  BWI_armory_baseSlot = BWI_armory_baseSlot + " / Leader"; };
				if( _fireteamRole == "rto" ) then { BWI_armory_roleSelected = [4];  BWI_armory_baseSlot = BWI_armory_baseSlot + " / Radio Operator"; };
				if( _fireteamRole == "rif" ) then { BWI_armory_roleSelected = [20]; BWI_armory_baseSlot = BWI_armory_baseSlot + " / Rifleman"; };
			};
			
			case "ft1": {
				BWI_armory_baseSlot = BWI_armory_baseSlot + " / Fireteam 1";
				
				if( _fireteamRole == "ftl" ) then { BWI_armory_baseSlot = BWI_armory_baseSlot + " / Leader"; };
				if( _fireteamRole == "cfr" ) then { BWI_armory_baseSlot = BWI_armory_baseSlot + " / Combat First Responder"; };
				if( _fireteamRole == "rif" ) then { BWI_armory_baseSlot = BWI_armory_baseSlot + " / Rifleman"; };
			};
			
			case "ft2": {
				BWI_armory_baseSlot = BWI_armory_baseSlot + " / Fireteam 2";
				
				if( _fireteamRole == "ftl" ) then { BWI_armory_roleSelected = [3];  BWI_armory_baseSlot = BWI_armory_baseSlot + " / Leader"; };
				if( _fireteamRole == "cfr" ) then { BWI_armory_roleSelected = [7];  BWI_armory_baseSlot = BWI_armory_baseSlot + " / Combat First Responder"; };
				if( _fireteamRole == "rif" ) then { BWI_armory_roleSelected = [20]; BWI_armory_baseSlot = BWI_armory_baseSlot + " / Rifleman"; };
			};
		};
	};
};

"BWI_medical_MASH" addPublicVariableEventHandler {
	if( !isNull BWI_medical_MASH ) then {
		BWI_medical_MASH setVariable ["ace_medical_isMedicalFacility", true];
	};
};
