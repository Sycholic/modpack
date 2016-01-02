
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

_unit forceAddUniform "rhs_uniform_FROG01_m81";

_unit addVest "V_I_G_resistanceLeader_F";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellRed";
_unit addItemToVest "SmokeShellGreen";

_unit addBackpack "B_AssaultPack_rgr";
for "_i" from 1 to 2 do {_unit addItemToBackpack "RH_15Rnd_9x19_M9";};

_unit addHeadgear "rhsusf_ach_helmet_M81";

_unit addWeapon "rhs_weap_m249_pip_L_vfg";
_unit addWeapon "RH_m9";
_unit addHandgunItem "RH_M6X";

_unit linkItem "tf_rf7800str";

[_unit, "AR", "1985"] call BWI_fnc_AddGear;
[_unit, "AR"] call BWI_fnc_AddMedical;

_unit addItemToVest "rhs_200rnd_556x45_M_SAW";
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_200rnd_556x45_M_SAW";};