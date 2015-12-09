
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


_unit forceAddUniform "rhs_uniform_cu_ucp";

_unit addVest "rhsusf_iotv_ucp_rifleman";
_unit addItemToVest "SmokeShellRed";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 3 do {_unit addItemToVest "RH_15Rnd_9x19_M9";};

_unit addBackpack "rhsusf_assault_eagleaiii_ucp";
_unit addItemToBackpack "rhsusf_acc_anpeq15A";
_unit addItemToBackpack "RH_SFM952V";
_unit addItemToBackpack "RH_fa762";
_unit addItemToBackpack "RH_m9qd";

_unit addHeadgear "rhsusf_ach_helmet_headset_ess_ucp";

_unit addWeapon "srifle_EBR_F";
_unit addPrimaryWeaponItem "optic_DMS";
_unit addWeapon "RH_m9";
_unit addHandgunItem "RH_M6X";

_unit linkItem "tf_rf7800str";

[_unit, "DMR"] call BWI_fnc_AddGear;
[_unit, "DMR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 2 do {_unit addItemToVest "20Rnd_762x51_Mag";}; 
for "_i" from 1 to 8 do {_unit addItemToBackpack "20Rnd_762x51_Mag";}; 
for "_i" from 1 to 3 do {_unit addItemToVest "ACE_20Rnd_762x51_Mag_Tracer_Dim";};