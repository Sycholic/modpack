//LOADOUTS - BWI - RTO

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

_unit forceAddUniform "U_PMC_IndUniformLS_BSBPBB";

_unit addVest "V_PlateCarrier1_PMC_blk";
for "_i" from 1 to 3 do {_unit addItemToVest "RH_15Rnd_9x19_M9";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellRed";
_unit addItemToVest "SmokeShellGreen";

_unit addBackpack "tf_rt1523g_black";
_unit addItemToBackpack "rhsusf_acc_anpeq15A";
_unit addItemToBackpack "RH_spr_mbs";
_unit addItemToBackpack "RH_m9qd";

_unit addHeadgear "usaf_ach_blk_ir";
_unit addGoggles "PU_shemagh_GryCLR";

_unit addWeapon "RH_M4A1_ris";
_unit addPrimaryWeaponItem "RH_SFM952V";
_unit addPrimaryWeaponItem "RH_eotech553";
_unit addWeapon "RH_m9";
_unit addHandgunItem "RH_M6X";

_unit linkItem "tf_anprc152";


[_unit, "RTO"] call BWI_fnc_AddGear;
[_unit, "RTO"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "30Rnd_556x45_Stanag";}; 
for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};