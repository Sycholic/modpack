
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
for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_15Rnd_9x19_P8";};

_unit addBackpack "BWA3_Kitbag_Fleck";
_unit addItemToBackpack "acc_flashlight";

_unit addHeadgear "BWA3_MICH_Fleck";

_unit addGoggles "NeckTight_ODBLK";

_unit addWeapon "BWA3_MG4";
_unit addPrimaryWeaponItem "acc_pointer_IR";
_unit addPrimaryWeaponItem "BWA3_optic_ZO4x30";
_unit addWeapon "BWA3_P8";

_unit linkItem "tf_rf7800str";

[_unit, "AR"] call BWI_fnc_AddGear;
[_unit, "AR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_200Rnd_556x45";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "BWA3_200Rnd_556x45";};