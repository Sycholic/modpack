
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

_unit addVest "rhsusf_iotv_ucp_saw";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};

_unit addBackpack "B_Carryall_mcamo";

_unit addHeadgear "rhsusf_ach_helmet_headset_ess_ucp";

_unit addWeapon "rhs_weap_m240B_CAP";
_unit addPrimaryWeaponItem "rhsusf_acc_ELCAN";
_unit addWeapon "rhsusf_weap_m9";

_unit linkItem "tf_rf7800str";

[_unit, "MMG"] call BWI_fnc_AddGear;
[_unit, "MMG"] call BWI_fnc_AddMedical;

for "_i" from 1 to 3 do {_unit addItemToBackpack "rhsusf_100Rnd_762x51";};
_unit addItemToBackpack "rhsusf_100Rnd_762x51_m62_tracer";
