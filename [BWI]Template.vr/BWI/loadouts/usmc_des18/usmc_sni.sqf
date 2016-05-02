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

_unit forceAddUniform "rhs_uniform_FROG01_d";

_unit addVest "rhsusf_spc_marksman";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};

_unit addBackpack "rhsusf_assault_eagleaiii_coy";

_unit addHeadgear "rhs_Booniehat_marpatd";

_unit addWeapon "RH_m110";
_unit addPrimaryWeaponItem "RH_peq15";
_unit addPrimaryWeaponItem "RH_leu_mk4";
_unit addPrimaryWeaponItem "RH_TD_ACB";
_unit addWeapon "rhsusf_weap_m9";

_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "SNI", "RI", 2018] call BWI_fnc_AddGear;
[_unit, "SNI"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToBackpack "RH_20Rnd_762x51_M80A1";}; 
for "_i" from 1 to 2 do {_unit addItemToVest "RH_20Rnd_762x51_M80A1";};