//LOADOUTS - BWI - AAR (M27)
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "rhs_uniform_FROG01_d";

_unit addVest "rhsusf_spc_mg";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};

_unit addBackpack "B_Carryall_khk";

_unit addHeadgear "rhsusf_lwh_helmet_marpatd_ess";

_unit addWeapon "hlc_m249_pip1";
_unit addPrimaryWeaponItem "rhsusf_acc_ELCAN";
_unit addWeapon "rhsusf_weap_m9";

_unit linkItem "tf_rf7800str";

[_unit, "AR"] call BWI_fnc_AddGear;
[_unit, "AR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_200rnd_556x45_M_SAW";};
_unit addItemToBackpack "hlc_200rnd_556x45_T_SAW";