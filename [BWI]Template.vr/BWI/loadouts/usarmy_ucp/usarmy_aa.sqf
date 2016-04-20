// Anti-Air
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "rhs_uniform_cu_ucp";
_unit addItemToUniform "RH_SFM952V";

_unit addVest "rhsusf_iotv_ucp_rifleman";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};

_unit addBackpack "B_Carryall_cbr";

_unit addHeadgear "rhsusf_ach_helmet_ESS_ucp";

_unit addWeapon "rhs_weap_m4a1_carryhandle_grip";
_unit addPrimaryWeaponItem "RH_compM2l";
_unit addPrimaryWeaponItem "RH_peq15b";
_unit addWeapon "rhs_weap_fim92";

_unit linkItem "tf_rf7800str";
_unit linkItem "tf_microDAGR";

[_unit, "AA", "RI", 2003] call BWI_fnc_AddGear;
[_unit, "AA"] call BWI_fnc_AddMedical;

_unit addItemToBackpack "rhs_fim92_mag";
for "_i" from 1 to 6 do {_unit addItemToVest "30Rnd_556x45_Stanag";}; 
for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};