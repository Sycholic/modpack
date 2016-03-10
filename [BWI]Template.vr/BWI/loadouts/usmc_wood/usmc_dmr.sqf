//LOADOUTS - BWI - DMR

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
for "_i" from 1 to 2 do {_unit addItemToUniform "B_IR_Grenade";};

_unit addVest "rhsusf_spc_marksman";
_unit addItemToVest "SmokeShellRed";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};

_unit addBackpack "B_Carryall_khk";
_unit addItemToBackpack "UK3CB_BAF_LLM_IR_Black";
_unit addItemToBackpack "UK3CB_BAF_LLM_Flashlight_Black";
_unit addItemToBackpack "CUP_acc_ANPEQ_15";

_unit addHeadgear "rhsusf_mich_helmet_marpatwd_norotos_arc";

_unit addWeapon "srifle_EBR_F";
_unit addPrimaryWeaponItem "optic_DMS";
_unit addWeapon "rhsusf_weap_m9";

_unit linkItem "tf_rf7800str";

[_unit, "DMR"] call BWI_fnc_AddGear;
[_unit, "DMR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 10 do {_unit addItemToBackpack "20Rnd_762x51_Mag";}; 
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_20Rnd_762x51_Mag_Tracer_Dim";};