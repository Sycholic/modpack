// Automatic Rifleman
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "BWA3_Uniform2_Fleck";

_unit addVest "BWA3_Vest_Autorifleman_Fleck";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
_unit addItemToVest "rhs_mag_m18_green";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 3 do {_unit addItemToVest "BWA3_15Rnd_9x19_P8";};

_unit addBackpack "BWA3_Kitbag_Fleck";

_unit addHeadgear "BWA3_MICH_Fleck";

_unit addWeapon "BWA3_MG4";
_unit addPrimaryWeaponItem "RH_c79";
_unit addWeapon "BWA3_P8";

_unit linkItem "tf_rf7800str";
_unit linkItem "tf_microDAGR";

[_unit, "AR", "RI", 2010] call BWI_fnc_AddGear;
[_unit, "AR"] call BWI_fnc_AddMedical;

_unit addItemToBackpack "BWA3_200Rnd_556x45_Tracer";
for "_i" from 1 to 3 do {_unit addItemToBackpack "BWA3_200Rnd_556x45";};