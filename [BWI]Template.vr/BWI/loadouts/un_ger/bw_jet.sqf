//LOADOUTS - BWI - Rifleman
_unit = (_this select 1);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

_unit forceAddUniform "FIR_Fighter_Pilot_ROKAF_Nomex";
for "_i" from 1 to 2 do {_unit addItemToUniform "B_IR_Grenade";};

_unit addVest "FIR_pilot_vest";
_unit addItemToVest "ACE_HandFlare_Red";
_unit addItemToVest "ACE_HandFlare_Green";
for "_i" from 1 to 3 do {_unit addItemToVest "RH_15Rnd_9x19_M9";};

_unit addBackpack "B_Parachute";

_unit addHeadgear "FIR_USHelmetType1_Navy_Black_Close";

_unit addWeapon "RH_m9";

_unit linkItem "rhsusf_ANPVS_15";
_unit linkItem "tf_anprc152";

[_unit, "JET"] call BWI_fnc_AddGear;
[_unit, "JET"] call BWI_fnc_AddMedical;