/*
*	Created by BWI iFu
*
*	Main function to add medical supplies to classes
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
params ["_unit", "_class"];
private ["_i"];

if( isNull _unit || !local _unit )  exitWith {};

switch( _class ) do {
	case "CFR": {
		for "_i" from 1 to 10 do { _unit addItemToBackpack "ACE_fieldDressing"; };
		for "_i" from 1 to 15 do { _unit addItemToBackpack "ACE_packingBandage"; };
		for "_i" from 1 to 15 do { _unit addItemToBackpack "ACE_elasticBandage"; };
		for "_i" from 1 to 20 do { _unit addItemToBackpack "ACE_quikclot"; };
		for "_i" from 1 to 8  do { _unit addItemToBackpack "ACE_tourniquet"; };
		for "_i" from 1 to 8  do { _unit addItemToBackpack "ACE_morphine"; };
		for "_i" from 1 to 8  do { _unit addItemToBackpack "ACE_epinephrine"; };
		for "_i" from 1 to 4  do { _unit addItemToBackpack "ACE_plasmaIV_250"; };
		for "_i" from 1 to 2  do { _unit addItemToBackpack "ACE_salineIV_250"; };
	};
	
	case "CM": {
		for "_i" from 1 to 10 do { _unit addItemToBackpack "ACE_fieldDressing"; };
		for "_i" from 1 to 20 do { _unit addItemToBackpack "ACE_packingBandage"; };
		for "_i" from 1 to 20 do { _unit addItemToBackpack "ACE_elasticBandage"; };
		for "_i" from 1 to 10 do { _unit addItemToBackpack "ACE_quikclot"; };
		for "_i" from 1 to 5  do { _unit addItemToBackpack "ACE_tourniquet"; };
		for "_i" from 1 to 10 do { _unit addItemToBackpack "ACE_morphine"; };
		for "_i" from 1 to 10 do { _unit addItemToBackpack "ACE_epinephrine"; };
		for "_i" from 1 to 6  do { _unit addItemToBackpack "ACE_plasmaIV_500"; };
		for "_i" from 1 to 2  do { _unit addItemToBackpack "ACE_salineIV_500"; };
		_unit addItemToBackpack "ACE_surgicalKit";
	};
	
	case "JET": {
		for "_i" from 1 to 6 do { _unit addItemToVest "ACE_fieldDressing"; };
		for "_i" from 1 to 8 do { _unit addItemToVest "ACE_packingBandage"; };
		for "_i" from 1 to 8 do { _unit addItemToVest "ACE_elasticBandage"; };
		for "_i" from 1 to 10 do { _unit addItemToVest "ACE_quikclot"; };
		for "_i" from 1 to 2 do { _unit addItemToVest "ACE_tourniquet"; };
		_unit addItemToVest "ACE_morphine";
		_unit addItemToVest "ACE_epinephrine";
	};
	
	case "FSP": {
		for "_i" from 1 to 6 do { _unit addItemToUniform "ACE_fieldDressing"; };
		for "_i" from 1 to 8 do { _unit addItemToVest "ACE_packingBandage"; };
		for "_i" from 1 to 8 do { _unit addItemToVest "ACE_elasticBandage"; };
		for "_i" from 1 to 10 do { _unit addItemToVest "ACE_quikclot"; };
		for "_i" from 1 to 2 do { _unit addItemToUniform "ACE_tourniquet"; };
	};
	
	default {
		for "_i" from 1 to 6 do { _unit addItemToBackpack "ACE_fieldDressing"; };
		for "_i" from 1 to 8 do { _unit addItemToBackpack "ACE_packingBandage"; };
		for "_i" from 1 to 8 do { _unit addItemToBackpack "ACE_elasticBandage"; };
		for "_i" from 1 to 10 do { _unit addItemToBackpack "ACE_quikclot"; };
		for "_i" from 1 to 2 do { _unit addItemToBackpack "ACE_tourniquet"; };
	};
};
