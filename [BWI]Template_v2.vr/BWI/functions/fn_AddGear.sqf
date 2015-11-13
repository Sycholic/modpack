/*
*	Created by BWI iFu
*
*	Main function to add standard gear to classes
*	Classes: SQL, RTO, CM, ENG, FTL, CFR, AR, AAR, RAT, RIF, HEL, JET, HMG, DM, SNI, DEM, ARM
*
*	SQL    = Squadleader
*	FTL    = Fireteamleader
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
*
*	created 25.10.2015
*/
private ["_unit", "_class", "_i", "_BWI_lfnc_AddStandardGear"];

// Class- and faction independent gear. Everyone should have _unit 
_BWI_lfnc_AddStandardGear = {
	(_this select 0) addItemToUniform "ACE_MapTools";
	for "_i" from 1 to 4 do { (_this select 0) addItemToUniform "ACE_CableTie"; };
	for "_i" from 1 to 2 do { (_this select 0) addItemToUniform "Chemlight_green";};
	for "_i" from 1 to 2 do { (_this select 0) addItemToUniform "B_IR_Grenade";};
	(_this select 0) addItemToUniform "ACE_EarPlugs";
	(_this select 0) addItemToUniform "ACE_IR_Strobe_Item";
	(_this select 0) addItemToUniform "ACE_Flashlight_MX991";
	
	(_this select 0) addItemToBackpack "rhsusf_ANPVS_15";
	
	(_this select 0) linkItem "ItemMap";
	(_this select 0) linkItem "ItemCompass";
	(_this select 0) linkItem "ItemWatch";
};

_unit = _this select 0;
_class = _this select 1;

if( isNull _unit )  exitWith {};

// Faction independet gear. Respective classes should have that gear
switch( _class ) do {

	case "SQL": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addWeapon "ACE_Vector";
		_unit linkItem "ItemGPS";
		_unit addItemToBackpack "DemoCharge_Remote_Mag";
		_unit addItemToBackpack "ACE_DefusalKit";
		_unit addItemToBackpack "ACE_Clacker";
		_unit addItemToBackpack "ACE_M26_Clacker";
	};
	
	case "FTL": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addWeapon "ACE_Vector";
		_unit linkItem "ItemGPS";
		_unit addItemToBackpack "DemoCharge_Remote_Mag";
		_unit addItemToBackpack "ACE_DefusalKit";
		_unit addItemToBackpack "ACE_Clacker";
		_unit addItemToBackpack "ACE_M26_Clacker";
	};
	
	case "CM": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addWeapon "Binocular";
		_unit linkItem "ItemGPS";
	};
	
	case "AAR": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addItemToUniform "ACE_RangeCard";
		_unit addItemToBackpack "ACE_SpareBarrel";
		_unit addWeapon "ACE_Vector";
	};
	
	case "RTO": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addWeapon "Laserdesignator";
		for "_i" from 1 to 2 do {_unit addItemToBackpack "Laserbatteries";};
		_unit linkItem "ItemGPS";
	};
	
	case "AR": {
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
		_unit addItemToBackpack "ACE_Clacker";
	};
	
	case "DMR": {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addWeapon "ACE_Vector";
	};
	
	default {
		[_unit] call _BWI_lfnc_AddStandardGear;
		_unit addWeapon "Binocular";
	};
};