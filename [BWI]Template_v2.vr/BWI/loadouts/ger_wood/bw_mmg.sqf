
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

_unit forceAddUniform "BWA3_Uniform2_Fleck";

_unit addVest "BWA3_Vest_Autorifleman_Fleck";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
_unit addItemToVest "rhs_mag_m18_green";
_unit addItemToVest "rhs_mag_m18_red";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {_unit addItemToVest "RH_12Rnd_45cal_usp";};

_unit addBackpack "BWA3_Kitbag_Fleck";
_unit addItemToBackpack "acc_flashlight";
_unit addItemToBackpack "BWA3_muzzle_snds_G28";
_unit addItemToBackpack "RH_gemtech45";

_unit addHeadgear "BWA3_MICH_Fleck";

_unit addGoggles "NeckTight_ODBLK";

_unit addWeapon "BWA3_MG5";
_unit addPrimaryWeaponItem "acc_pointer_IR";
_unit addPrimaryWeaponItem "BWA3_optic_ZO4x30";
_unit addWeapon "RH_usp";
_unit addHandgunItem "RH_X300";

_unit linkItem "tf_rf7800str";

[_unit, "MMG"] call BWI_fnc_AddGear;
[_unit, "MMG"] call BWI_fnc_AddMedical;

for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_120Rnd_762x51";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "BWA3_120Rnd_762x51";};