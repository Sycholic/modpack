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

_unit forceAddUniform "BWI_Uniform_USA_3CO";
for "_i" from 1 to 3 do {_unit addItemToUniform "rhsusf_mag_7x45acp_MHP";};

_unit addVest "BWI_Vest_USA_3CO";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";

_unit addBackpack "B_AssaultPack_cbr";

_unit addHeadgear "H_Booniehat_tan";

_unit addWeapon "hlc_rifle_M21";
_unit addPrimaryWeaponItem "hlc_optic_LRT_m14";
_unit addWeapon "rhsusf_weap_m1911a1";

_unit linkItem "tf_rf7800str";
_unit linkItem "tf_microDAGR";

[_unit, "SNI", "RI", 1993] call BWI_fnc_AddGear;
[_unit, "SNI"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_20Rnd_762x51_B_M14";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "hlc_20Rnd_762x51_B_M14";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "hlc_20Rnd_762x51_T_M14";};