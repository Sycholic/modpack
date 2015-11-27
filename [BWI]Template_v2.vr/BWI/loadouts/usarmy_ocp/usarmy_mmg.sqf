
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

_unit forceAddUniform "rhs_uniform_cu_ocp";

_unit addVest "rhsusf_iotv_ocp_saw";
_unit addItemToVest "SmokeShellRed";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {_unit addItemToVest "RH_15Rnd_9x19_M9";};

_unit addBackpack "usaf_ruck_mc";
_unit addItemToBackpack "RH_m9qd";
_unit addItemToBackpack "RH_qdss_nt4";

_unit addHeadgear "rhsusf_ach_helmet_headset_ess_ocp";

_unit addWeapon "hlc_lmg_M60E4";
_unit addPrimaryWeaponItem "RH_c79";
_unit addWeapon "RH_m9";
_unit addHandgunItem "RH_M6X";

_unit linkItem "tf_rf7800str";

[_unit, "MMG"] call BWI_fnc_AddGear;
[_unit, "MMG"] call BWI_fnc_AddMedical;

for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_100Rnd_762x51_B_M60E4";};
_unit addItemToBackpack "hlc_100Rnd_762x51_M_M60E4"; 