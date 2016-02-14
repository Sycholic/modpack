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
*	created 25.10.2015
*/
params ["_unit", "_class", ["_equipment", "modern"]];
private ["_i", "_BWI_lfnc_AddStandardGear"];

// Class- and faction independent gear. Everyone should have _unit 
_BWI_lfnc_AddStandardGear = {
	params ["_unit", "_equipment"];
	_unit addItemToUniform "ACE_MapTools";
	for "_i" from 1 to 4 do { _unit addItemToUniform "ACE_CableTie"; };
	for "_i" from 1 to 2 do { _unit addItemToUniform "Chemlight_green";};
	_unit addItemToUniform "ACE_EarPlugs";
	
	if( _equipment == "modern" ) then {
		_unit addItemToUniform "ACE_IR_Strobe_Item";
		_unit addItemToUniform "ACE_Flashlight_MX991";
		_unit addItemToBackpack "rhsusf_ANPVS_15";
	};
	
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "tf_microDAGR";
};

if( isNull _unit || !local _unit )  exitWith {};

// Faction independent gear. Respective classes should have that gear
switch( _class ) do {

	case "PL": {
		[_unit, _equipment] call _BWI_lfnc_AddStandardGear;
		if( _equipment == "modern" ) then {
			_unit addWeapon "ACE_Vector";
			_unit linkItem "ItemcTab";
		} else {
			_unit addWeapon "Binocular";
		};
		_unit addItemToBackpack "DemoCharge_Remote_Mag";
	};
	
	case "PRTO": {
		[_unit, _equipment] call _BWI_lfnc_AddStandardGear;
		if( _equipment == "modern" ) then {
			_unit addWeapon "ACE_Vector";
			_unit linkItem "ItemcTab";
		} else {
			_unit addWeapon "Binocular";
		};
		_unit addItemToBackpack "DemoCharge_Remote_Mag";
	};

	case "SQL": {
		[_unit, _equipment] call _BWI_lfnc_AddStandardGear;
		if( _equipment == "modern" ) then {
			_unit addWeapon "ACE_Vector";
			_unit linkItem "ItemAndroid";
			_unit addItemToBackpack "ItemcTabHCam";
		} else {
			_unit addWeapon "Binocular";
		};
		_unit addItemToBackpack "DemoCharge_Remote_Mag";
	};
	
	case "FTL": {
		[_unit, _equipment] call _BWI_lfnc_AddStandardGear;
		if( _equipment == "modern" ) then {
			_unit addWeapon "ACE_Vector";
			_unit linkItem "ItemMicroDAGR";
			_unit addItemToBackpack "ItemcTabHCam";
		} else {
			_unit addWeapon "Binocular";
		};
		_unit addItemToBackpack "DemoCharge_Remote_Mag";
	};
	
	case "CM": {
		[_unit, _equipment] call _BWI_lfnc_AddStandardGear;
		if( _equipment == "modern" ) then {
			_unit addWeapon "Binocular";
			_unit linkItem "ItemAndroid";
		};
	};
	
	case "AAR": {
		[_unit, _equipment] call _BWI_lfnc_AddStandardGear;
		if( _equipment == "modern" ) then {
			_unit addWeapon "ACE_Vector";
		} else {
			_unit addWeapon "Binocular";
		};
		_unit addItemToUniform "ACE_RangeCard";
		_unit addItemToBackpack "ACE_SpareBarrel";
	};
	
	case "MAT": {
		[_unit, _equipment] call _BWI_lfnc_AddStandardGear;
		if( _equipment == "modern" ) then {
			_unit addWeapon "ACE_Vector";
		} else {
			_unit addWeapon "Binocular";
		};
		_unit addItemToUniform "ACE_RangeCard";
	};
	
	case "AMAT": {
		[_unit, _equipment] call _BWI_lfnc_AddStandardGear;
		if( _equipment == "modern" ) then {
			_unit addWeapon "ACE_Vector";
		} else {
			_unit addWeapon "Binocular";
		};
		_unit addItemToUniform "ACE_RangeCard";
	};
	
	case "LMAT": {
		[_unit, _equipment] call _BWI_lfnc_AddStandardGear;
		if( _equipment == "modern" ) then {
			_unit addWeapon "ACE_Vector";
			_unit linkItem "ItemMicroDAGR";
		} else {
			_unit addWeapon "Binocular";
		};
		_unit addItemToUniform "ACE_RangeCard";
	};
	
	case "HAT": {
		[_unit, _equipment] call _BWI_lfnc_AddStandardGear;
		if( _equipment == "modern" ) then {
			_unit addWeapon "ACE_Vector";
		} else {
			_unit addWeapon "Binocular";
		};
		_unit addItemToUniform "ACE_RangeCard";
	};
	
	case "AHAT": {
		[_unit, _equipment] call _BWI_lfnc_AddStandardGear;
		if( _equipment == "modern" ) then {
			_unit addWeapon "ACE_Vector";
		} else {
			_unit addWeapon "Binocular";
		};
		_unit addItemToUniform "ACE_RangeCard";
	};
	
	case "LHAT": {
		[_unit, _equipment] call _BWI_lfnc_AddStandardGear;
		if( _equipment == "modern" ) then {
			_unit addWeapon "ACE_Vector";
			_unit linkItem "ItemMicroDAGR";
		} else {
			_unit addWeapon "Binocular";
		};
		_unit addItemToUniform "ACE_RangeCard";
	};
	
	case "RTO": {
		[_unit, _equipment] call _BWI_lfnc_AddStandardGear;
		if( _equipment == "modern" ) then {
			_unit addWeapon "Laserdesignator";
			_unit linkItem "ItemAndroid";
			for "_i" from 1 to 2 do {_unit addItemToBackpack "Laserbatteries";};
		} else {
			_unit addWeapon "Binocular";
		};
	};
	
	case "AR": {
		[_unit, _equipment] call _BWI_lfnc_AddStandardGear;
		if( _equipment == "modern" ) then {
			_unit addWeapon "Binocular";
		};
		_unit addItemToUniform "ACE_RangeCard";
	};
	
	case "MMG": {
		[_unit, _equipment] call _BWI_lfnc_AddStandardGear;
		if( _equipment == "modern" ) then {
			_unit addWeapon "Binocular";
		};
		_unit addItemToUniform "ACE_RangeCard";
	};
	
	case "ENG": {
		[_unit, _equipment] call _BWI_lfnc_AddStandardGear;
		if( _equipment == "modern" ) then {
			_unit linkItem "ItemAndroid";
			_unit addWeapon "Binocular";
		};
		_unit addItemToBackpack "ToolKit";
		_unit addItemToBackpack "BWI_medical_tentBox";
	};
	
	case "HEL": {
		[_unit, _equipment] call _BWI_lfnc_AddStandardGear;
		if( _equipment == "modern" ) then {
			_unit addWeapon "Binocular";
			_unit linkItem "ItemMicroDAGR";
		};
		_unit addItemToBackpack "DemoCharge_Remote_Mag";
	};
	
	case "DMR": {
		[_unit, _equipment] call _BWI_lfnc_AddStandardGear;
		if( _equipment == "modern" ) then {
			_unit addWeapon "ACE_Vector";
		} else {
			_unit addWeapon "Binocular";
		};
	};
	
	case "JET": {
		[_unit, _equipment] call _BWI_lfnc_AddStandardGear;
		if( _equipment == "modern" ) then {
			_unit addWeapon "Binocular";
			_unit linkItem "ItemMicroDAGR";
		};
	};
	
	case "DEM": {
		[_unit, _equipment] call _BWI_lfnc_AddStandardGear;
		if( _equipment == "modern" ) then {
			_unit addWeapon "Binocular";
		};
		_unit addItemToBackpack "ACE_Clacker";
		for "_i" from 1 to 4  do { _unit addItemToBackpack "DemoCharge_Remote_Mag"; };
		_unit addItemToBackpack "ACE_DefusalKit";
	};
	
	case "ARM": {
		[_unit, _equipment] call _BWI_lfnc_AddStandardGear;
		if( _equipment == "modern" ) then {
			_unit addWeapon "Binocular";
			_unit linkItem "ItemMicroDAGR";
		};
	};
	
	case "SNI": {
		[_unit, _equipment] call _BWI_lfnc_AddStandardGear;
		if( _equipment == "modern" ) then {
			_unit addWeapon "ACE_Vector";
			_unit linkItem "ItemMicroDAGR";
		} else {
			_unit addWeapon "Binocular";
		};
		_unit addItemToUniform "ACE_RangeCard";
	};
	
	default {
		[_unit, _equipment] call _BWI_lfnc_AddStandardGear;
		if( _equipment == "modern" ) then {
			_unit addWeapon "Binocular";
		};
	};
};
