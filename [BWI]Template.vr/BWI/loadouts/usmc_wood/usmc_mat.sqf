// Anti-Tank (MAT)
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "rhs_uniform_FROG01_wd";
_unit addItemToUniform "RH_SFM952V";

_unit addVest "rhsusf_spc_rifleman";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";

_unit addBackpack "B_Carryall_khk";

_unit addHeadgear "rhsusf_mich_helmet_marpatwd_norotos";

_unit addWeapon "rhs_weap_m16a4_carryhandle_grip";
_unit addPrimaryWeaponItem "RH_peq15b";
_unit addPrimaryWeaponItem "RH_compm4s";
_unit addWeapon "tf47_smaw_green";
_unit addSecondaryWeaponItem "tf47_optic_smaw";

_unit linkItem "tf_rf7800str";
_unit linkItem "tf_microDAGR";

[_unit, "MAT", "RI", 2008] call BWI_fnc_AddGear;
[_unit, "MAT"] call BWI_fnc_AddMedical;

_unit addItemToBackpack "tf47_smaw_HEAA";
for "_i" from 1 to 6 do {_unit addItemToVest "30Rnd_556x45_Stanag";}; 
for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
_unit addItemToVest "tf47_smaw_SR";