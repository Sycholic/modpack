// Sniper
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "rhs_uniform_cu_ocp";

_unit addVest "rhsusf_iotv_ocp_rifleman";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};

_unit addBackpack "rhsusf_assault_eagleaiii_ocp";

_unit addHeadgear "rhs_Booniehat_ocp";

_unit addWeapon "rhs_weap_XM2010";
_unit addPrimaryWeaponItem "RH_peq15b";
_unit addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4_2";
_unit addPrimaryWeaponItem "RH_TD_ACB_b";
_unit addWeapon "rhsusf_weap_m9";

_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "SNI", "RI", 2015] call BWI_fnc_AddGear;
[_unit, "SNI"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToBackpack "rhsusf_5Rnd_300winmag_xm2010";}; 
for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_5Rnd_300winmag_xm2010";}; 