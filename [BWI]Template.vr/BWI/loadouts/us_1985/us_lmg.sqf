
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "rhs_uniform_FROG01_m81";

_unit addVest "V_I_G_resistanceLeader_F";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellRed";
_unit addItemToVest "SmokeShellGreen";

_unit addBackpack "BWA3_Carryall_Fleck";
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhsusf_mag_15Rnd_9x19_JHP";};

_unit addHeadgear "rhsusf_ach_helmet_M81";

_unit addWeapon "rhs_weap_m249_pip_L_vfg";
_unit addWeapon "rhsusf_weap_m9";

_unit linkItem "tf_rf7800str";

[_unit, "AR", "1985"] call BWI_fnc_AddGear;
[_unit, "AR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_200rnd_556x45_M_SAW";};
_unit addItemToVest "rhs_200rnd_556x45_T_SAW";