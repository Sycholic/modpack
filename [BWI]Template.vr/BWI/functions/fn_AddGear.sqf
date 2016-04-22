/*
*	Created by BWI iFu
*
*	Main function to add standard gear to classes
*	Classes: SQL, RTO, CM, ENG, FTL, CFR, AR, AAR, RAT, RIF, HEL, JET, HMG, DM, SNI, DEM, ARM
*
*	PL     = Platoon Leader
*	SQL    = Squadleader
*	FTL    = Fireteamleader
*	PRTO   = Platoon Radio Operator
*	RTO    = Radio Operator
*	CM     = Corpsman
*	ENG    = Engineer
*	CFR    = Combat First Responder
*	AR     = Automatic Rifleman
*	AAR    = Assistant Automatic Rifleman
*	RAT    = Rifleman AT
*	RIF    = Rifleman
*	HEL    = Helicopter Pilot / Crew
*	JET    = Fixed Wing Pilot / Crew
*	HMG    = Medium Machine Gun
*	DMR    = Designated Marksman
*	SNI    = Sniper
*	DEM    = Demolition
*	ARM    = Armor Driver / Crew
*	MAT	   = Medium Anti-Tank Gunner
*	AMAT   = Medium Anti-Tank Assistant
*	LMAT   = Medium Anti-Tank Leader
*	HAT	   = Heavy Anti-Tank Gunner
*	AMAT   = Heavy Anti-Tank Assistant
*	LMAT   = Heavy Anti-Tank Leader
*	AA     = Anti Air
*
*
*   Types
*   RI	= Regular Infantry
*	IN	= Insurgents
*   IR  = Irregulars
*	SF	= Special Forces
*	PM  = Private Military
*
*	created 25.10.2015
*/
params ["_unit", "_class", ["_equipment", "RI"], ["_era", 2000]];
private ["_i", "_BWI_lfnc_AddStandardGear"];


// Class- and faction independent gear. Everyone should have _unit 
_BWI_lfnc_AddStandardGear = {
	params ["_unit", "_equipment", "_era"];
	
	_unit addItemToUniform "ACE_MapTools";
	for "_i" from 1 to 4 do { _unit addItemToUniform "ACE_CableTie"; };
	for "_i" from 1 to 2 do { _unit addItemToUniform "Chemlight_green";};
	_unit addItemToUniform "ACE_EarPlugs";

	if ( _equipment in ["RI", "SF", "PM"] ) then {
		if ( _era >= 2020 ) then {
			_unit addItemToBackpack "ACE_NVG_Gen4";
		};
		if ( _era >= 2000 && _era < 2020 ) then {
			if ( _equipment == "SF" ) then {
				_unit addItemToBackpack "NVGoggles_OPFOR"; // Gen 3
			} else {
				_unit addItemToBackpack "rhsusf_ANPVS_15";
			};
		};
		if ( _era >= 1990 && _era < 2000 ) then {
			_unit addItemToBackpack "ACE_NVG_Gen2";
			
			if( _equipment == "SF" ) then {
				_unit addItemToUniform "ACE_DAGR";
			};
		};
		if ( _era >= 1980 && _era < 1990 && _equipment == "SF" ) then {
			_unit addItemToBackpack "rhsusf_ANPVS_14";
		};
		
		if ( _era >= 1990 ) then {
			_unit addItemToUniform "ACE_IR_Strobe_Item";
		};
		
		_unit addItemToUniform "ACE_Flashlight_MX991";
	} else {
		_unit addItemToUniform "ACE_Flashlight_XL50";
	};
	
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
};

if( isNull _unit || !local _unit )  exitWith {};

// Faction independent gear. Respective classes should have that gear
switch( _class ) do {

	case "PL": {
		[_unit, _equipment, _era] call _BWI_lfnc_AddStandardGear;
		
		if ( _equipment in ["RI", "SF", "PM"] && _era >= 1990 ) then {
			if ( _era >= 2000 ) then {
				_unit addWeapon "Rangefinder";
				_unit linkItem "ItemcTab";
			} else  {
				_unit addWeapon "ACE_Vector";
				_unit addItemToUniform "ACE_DAGR";
			};
		} else {
			_unit addWeapon "Binocular";
		};
		_unit addItemToBackpack "DemoCharge_Remote_Mag";
	};


	case "SQL";
	case "FTL":	{
		[_unit, _equipment, _era] call _BWI_lfnc_AddStandardGear;
		
		if ( _equipment in ["RI", "SF", "PM"] && _era >= 1990 ) then {
			_unit addWeapon "ACE_Vector";
			
			if ( _era >= 2000 ) then {
				if ( _class == "SQL" ) then {
					_unit linkItem "ItemAndroid";
				} else {
					_unit linkItem "ItemMicroDAGR";
				};
				
				_unit addItemToBackpack "ItemcTabHCam";
			} else {
				_unit addItemToUniform "ACE_DAGR";
			};
		} else {
			_unit addWeapon "Binocular";
		};
		_unit addItemToBackpack "DemoCharge_Remote_Mag";
	};
	
	
	case "RTO";
	case "CM";
	case "CFR";
	case "DRV":	{
		[_unit, _equipment, _era] call _BWI_lfnc_AddStandardGear;
		
		if ( _equipment in ["RI", "SF", "PM"] && _era >= 1990 ) then {
			if ( _era >= 2000 ) then {
				_unit linkItem "ItemAndroid";
			} else {
				_unit addItemToUniform "ACE_DAGR";
			};
		};
		
		_unit addWeapon "Binocular";
	};
	
	
	case "ENG":	{
		[_unit, _equipment, _era] call _BWI_lfnc_AddStandardGear;
		
		if ( _equipment in ["RI", "SF", "PM"] ) then {
			if ( _era >= 2000 ) then {
				_unit linkItem "ItemAndroid";
			};
			if ( _era >= 1990 && _era < 2000 ) then {
				_unit addItemToUniform "ACE_DAGR";
			};
			
			_unit addItemToBackpack "ACE_Clacker";
			for "_i" from 1 to 4  do { _unit addItemToBackpack "DemoCharge_Remote_Mag"; };
			if ( _equipment == "SF" ) then {
				_unit addItemToBackpack "SatchelCharge_Remote_Mag";
			};
		} else {
			_unit addItemToBackpack "ACE_Clacker";
			for "_i" from 1 to 4  do { _unit addItemToBackpack "DemoCharge_Remote_Mag"; };
			
			if ( _equipment == "IN" ) then {
				_unit addItemToBackpack "ACE_Cellphone";
				for "_i" from 1 to 4  do { _unit addItemToBackpack "ACE_DeadManSwitch"; };
			};
		};
		
		_unit addItemToBackpack "ToolKit";
		_unit addWeapon "Binocular";
	};

	
	case "MMG";
	case "AMMG";
	case "MAT";
	case "AMAT";
	case "HAT";
	case "AHAT": {
		[_unit, _equipment, _era] call _BWI_lfnc_AddStandardGear;
		
		if ( _equipment in ["RI", "SF", "PM"] && _era >= 1990 ) then {
			_unit addWeapon "ACE_Vector";
			
			if( _era >= 2010 ) then {
				_unit linkItem "ItemMicroDAGR";
			};
		} else {
			_unit addWeapon "Binocular";
		};
		_unit addItemToUniform "ACE_RangeCard";
	};
	
	
	case "DMR": {
		[_unit, _equipment, _era] call _BWI_lfnc_AddStandardGear;
		
		if ( _equipment in ["RI", "SF", "PM"] && _era >= 1990 ) then {
			_unit addWeapon "Leupold_Mk4";
			
			if( _era >= 2010 ) then {
				_unit linkItem "ItemMicroDAGR";
			};
		} else {
			_unit addWeapon "Binocular";
		};
		_unit addItemToUniform "ACE_RangeCard";
	};
	
	
	case "EOD": {
		[_unit, _equipment, _era] call _BWI_lfnc_AddStandardGear;
		
		if ( _equipment in ["RI", "SF", "PM"] && _era >= 2010 ) then {
			_unit linkItem "ItemMicroDAGR";
		};
		
		_unit addItemToBackpack "ACE_Clacker";
		for "_i" from 1 to 2  do { _unit addItemToBackpack "DemoCharge_Remote_Mag"; };
		
		_unit addItemToBackpack "MineDetector";
		_unit addItemToBackpack "ACE_DefusalKit";
		_unit addWeapon "Binocular";
	};

	
	case "SNI": {
		[_unit, _equipment, _era] call _BWI_lfnc_AddStandardGear;
		
		if ( _equipment in ["RI", "SF", "PM"] && _era >= 1990 ) then {
			if ( _era >= 2000 ) then {
				_unit linkItem "ItemAndroid";
			} else {
				_unit addItemToUniform "ACE_DAGR";
			};
		
			_unit addWeapon "Leupold_Mk4";
		} else {
			_unit addWeapon "Binocular";
		};
		_unit addItemToUniform "ACE_RangeCard";
	};
	
	
	case "SPO": {
		[_unit, _equipment, _era] call _BWI_lfnc_AddStandardGear;
		
		if ( _equipment in ["RI", "SF", "PM"] && _era >= 1990 ) then {
			if ( _era >= 2000 ) then {
				_unit addWeapon "Rangefinder";
				_unit linkItem "ItemAndroid";
			} else {
				_unit addWeapon "Leupold_Mk4";
				_unit addItemToUniform "ACE_DAGR";
			};
		} else {
			_unit addWeapon "Binocular";
		};
	};
	
	
	case "JTAC": {
		[_unit, _equipment, _era] call _BWI_lfnc_AddStandardGear;
		
		if ( _equipment in ["RI", "SF", "PM"] && _era >= 1990 ) then {
			if ( _era >= 2000 ) then {
				_unit linkItem "ItemAndroid";
			} else {
				_unit addItemToUniform "ACE_DAGR";
			};
			
			_unit addWeapon "Laserdesignator";
			for "_i" from 1 to 2 do {_unit addItemToBackpack "Laserbatteries";};
		} else {
			_unit addWeapon "Binocular";
		};
	};
	
	
	case "FSP": {
		[_unit, _equipment, _era] call _BWI_lfnc_AddStandardGear;
		
		if ( _equipment in ["RI", "SF", "PM"] && _era >= 2000 ) then {
			_unit linkItem "ItemMicroDAGR";
		};
		_unit addWeapon "Binocular";
	};

	
	case "HEL": {
		[_unit, _equipment, _era] call _BWI_lfnc_AddStandardGear;
		
		if ( _equipment in ["RI", "SF", "PM"] && _era >= 2000 ) then {
			_unit linkItem "ItemMicroDAGR";
		};
		_unit addWeapon "Binocular";
		_unit addItemToBackpack "DemoCharge_Remote_Mag";
	};
	
	
	case "JET": {
		[_unit, _equipment, _era] call _BWI_lfnc_AddStandardGear;
		
		if ( _equipment in ["RI", "SF", "PM"] && _era >= 2000 ) then {
			_unit linkItem "ItemMicroDAGR";
		};
		_unit addWeapon "Binocular";
	};
	

	case "ARM": {
		[_unit, _equipment, _era] call _BWI_lfnc_AddStandardGear;
		
		if ( _equipment in ["RI", "SF", "PM"] && _era >= 2000 ) then {
			_unit linkItem "ItemMicroDAGR";
		};
		_unit addWeapon "Binocular";
	};

	
	default {
		[_unit, _equipment, _era] call _BWI_lfnc_AddStandardGear;
		
		if ( _equipment in ["RI", "SF", "PM"] && _era >= 2010 ) then {
			_unit linkItem "ItemMicroDAGR";
		};
		
		_unit addWeapon "Binocular";
	};
};
