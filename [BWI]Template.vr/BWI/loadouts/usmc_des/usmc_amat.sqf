//LOADOUTS - BWI - Automatic Rifleman (M27)
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
for "_i" from 1 to 2 do {_unit addItemToUniform "B_IR_Grenade";};

_unit addVest "rhsusf_spc_mg";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellRed";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {_unit addItemToVest "RH_15Rnd_9x19_M9";};

_unit addBackpack "B_Carryall_khk";
_unit addItemToBackpack "RH_peq15b";
_unit addItemToBackpack "rhsusf_acc_nt4_black";
for "_i" from 1 to 2 do {_unit addItemToBackpack "HandGrenade";};
_unit addItemToBackpack "RH_m9qd";

_unit addHeadgear "rhsusf_lwh_helmet_marpatd_ess";

_unit addWeapon "rhs_weap_m4a1_carryhandle_grip";
_unit addPrimaryWeaponItem "RH_SFM952V";
_unit addPrimaryWeaponItem "RH_compm4s";
_unit addWeapon "RH_m9";
_unit addHandgunItem "RH_M6X";

_unit linkItem "tf_rf7800str";

[_unit, "AMAT"] call BWI_fnc_AddGear;
[_unit, "AMAT"] call BWI_fnc_AddMedical;

for "_i" from 1 to 3 do {_unit addItemToBackpack "tf47_m3maaws_HEAT";}; 
for "_i" from 1 to 6 do {_unit addItemToVest "30Rnd_556x45_Stanag";}; 
for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";}; 