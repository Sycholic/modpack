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

_unit forceAddUniform "U_B_GhillieSuit";

_unit addVest "rhsusf_spc_marksman";
_unit addItemToVest "SmokeShellRed";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 3 do {_unit addItemToVest "RH_15Rnd_9x19_M9";};

_unit addBackpack "B_Kitbag_rgr";
_unit addItemToBackpack "RH_m9qd";

_unit addHeadgear "rhsusf_mich_helmet_marpatwd_norotos";

_unit addWeapon "BWA3_G82";
_unit addPrimaryWeaponItem "BWA3_optic_24x72";
_unit addWeapon "RH_m9";
_unit addHandgunItem "RH_M6X";

_unit linkItem "tf_anprc152";

[_unit, "SNI"] call BWI_fnc_AddGear;
[_unit, "SNI"] call BWI_fnc_AddMedical;

for "_i" from 1 to 10 do {_unit addItemToBackpack "BWA3_10Rnd_127x99_G82";}; 
for "_i" from 1 to  3 do {_unit addItemToVest "BWA3_10Rnd_127x99_G82";}; 