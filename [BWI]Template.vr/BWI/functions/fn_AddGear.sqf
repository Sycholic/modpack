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
private ["_unit", "_class", "_i", "_BWI_lfnc_AddStandardGear"];

// Class- and faction independent gear. Everyone should have _unit 
_BWI_lfnc_AddStandardGear = {
	(_this select 0) addItemToUniform "ACE_MapTools";
	for "_i" from 1 to 4 do { (_this select 0) addItemToUniform "ACE_CableTie"; };
	for "_i" from 1 to 2 do { (_this select 0) addItemToUniform "Chemlight_green";};
	(_this select 0) addItemToUniform "ACE_EarPlugs";
	(_this select 0) addItemToUniform "ACE_IR_Strobe_Item";
	(_this select 0) addItemToUniform "ACE_Flashlight_MX991";
	
	(_this select 0) addItemToBackpack "rhsusf_ANPVS_15";
	
	(_this select 0) linkItem "ItemMap";
	(_this select 0) linkItem "ItemCompass";
	(_this select 0) linkItem "tf_microDAGR";
};

_unit = _this select 0;
_class = _this select 1;

if( isNull _unit )  exitWith {};

// Faction independet gear. Respective classes should have that gear
switch( _class ) do {

	case "PL": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addWeapon "ACE_Vector";
		_unit linkItem "ItemcTab";
		_unit addItemToBackpack "DemoCharge_Remote_Mag";
	};
	
	case "PRTO": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addWeapon "ACE_Vector";
		_unit linkItem "ItemcTab";
		_unit addItemToBackpack "DemoCharge_Remote_Mag";
	};

	case "SQL": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addWeapon "ACE_Vector";
		_unit linkItem "ItemAndroid";
		_unit addItemToBackpack "DemoCharge_Remote_Mag";
		_unit addItemToBackpack "ItemcTabHCam";
	};
	
	case "FTL": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addWeapon "ACE_Vector";
		_unit linkItem "ItemMicroDAGR";
		_unit addItemToBackpack "DemoCharge_Remote_Mag";
		_unit addItemToBackpack "ItemcTabHCam";
	};
	
	case "CM": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addWeapon "Binocular";
		_unit linkItem "ItemAndroid";
	};
	
	case "AAR": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addItemToUniform "ACE_RangeCard";
		_unit addItemToBackpack "ACE_SpareBarrel";
		_unit addWeapon "ACE_Vector";
	};
	
	case "MAT": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addItemToUniform "ACE_RangeCard";
		_unit addWeapon "ACE_Vector";
	};
	
	case "AMAT": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addItemToUniform "ACE_RangeCard";
		_unit addWeapon "ACE_Vector";
	};
	
	case "LMAT": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addItemToUniform "ACE_RangeCard";
		_unit addWeapon "ACE_Vector";
		_unit linkItem "ItemMicroDAGR";
	};
	
	case "HAT": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addItemToUniform "ACE_RangeCard";
		_unit addWeapon "ACE_Vector";
	};
	
	case "AHAT": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addItemToUniform "ACE_RangeCard";
		_unit addWeapon "ACE_Vector";
	};
	
	case "LHAT": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addItemToUniform "ACE_RangeCard";
		_unit addWeapon "ACE_Vector";
		_unit linkItem "ItemMicroDAGR";
	};
	
	case "RTO": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addWeapon "Laserdesignator";
		for "_i" from 1 to 2 do {_unit addItemToBackpack "Laserbatteries";};
		_unit linkItem "ItemAndroid";
	};
	
	case "AR": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addItemToUniform "ACE_RangeCard";
		_unit addWeapon "Binocular";
	};
	
	case "MMG": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addItemToUniform "ACE_RangeCard";
		_unit addWeapon "Binocular";
	};
	
	case "ENG": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addWeapon "Binocular";
		_unit addItemToBackpack "ToolKit";
	};
	
	case "HEL": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addWeapon "Binocular";
		_unit addItemToBackpack "DemoCharge_Remote_Mag";
		_unit linkItem "ItemMicroDAGR";
	};
	
	case "DMR": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addWeapon "ACE_Vector";
	};
	
	case "JET": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addWeapon "Binocular";
		_unit linkItem "ItemMicroDAGR";
	};
	
	case "DEM": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addWeapon "Binocular";
		_unit addItemToBackpack "ACE_Clacker";
		for "_i" from 1 to 4  do { _unit addItemToBackpack "DemoCharge_Remote_Mag"; };
		_unit addItemToBackpack "ACE_DefusalKit";
	};
	
	case "ARM": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addWeapon "Binocular";
		_unit linkItem "ItemMicroDAGR";
	};
	
	case "SNI": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addWeapon "ACE_Vector";
		_unit linkItem "ItemMicroDAGR";
		_unit addItemToUniform "ACE_RangeCard";
	};
	
	default {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addWeapon "Binocular";
	};
};
