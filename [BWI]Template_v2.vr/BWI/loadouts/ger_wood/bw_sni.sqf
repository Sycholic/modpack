
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

_unit forceAddUniform "BWA3_Uniform_Ghillie_idz_Fleck";

_unit addVest "BWA3_Vest_Marksman_Fleck";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
_unit addItemToVest "rhs_mag_m18_green";
_unit addItemToVest "rhs_mag_m18_red";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {_unit addItemToVest "RH_12Rnd_45cal_usp";};

_unit addBackpack "BWA3_Kitbag_Fleck";
_unit addItemToBackpack "acc_flashlight";
_unit addItemToBackpack "BWA3_muzzle_snds_G36";
_unit addItemToBackpack "RH_gemtech45";

_unit addHeadgear "BWA3_MICH_Fleck";

_unit addWeapon "BWA3_G82";
_unit addPrimaryWeaponItem "BWA3_optic_24x72";
_unit addWeapon "RH_usp";
_unit addHandgunItem "RH_X300";

_unit linkItem "tf_anprc152";

[_unit, "SNI"] call BWI_fnc_AddGear;
[_unit, "SNI"] call BWI_fnc_AddMedical;

for "_i" from 1 to 10 do {_unit addItemToBackpack "BWA3_10Rnd_127x99_G82";}; 
for "_i" from 1 to  3 do {_unit addItemToVest "BWA3_10Rnd_127x99_G82";}; 