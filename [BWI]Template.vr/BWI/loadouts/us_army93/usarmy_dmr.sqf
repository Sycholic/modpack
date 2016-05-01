// Designated Marksman
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

_unit addVest "BWI_Vest_USA_3CO";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";

_unit addBackpack "B_AssaultPack_cbr";

_unit addHeadgear "BWI_Helmet_USA_3CO";

_unit addWeapon "hlc_rifle_M21";
_unit addPrimaryWeaponItem "hlc_optic_artel_m14";

_unit linkItem "tf_rf7800str";
_unit linkItem "tf_microDAGR";

[_unit, "DMR", "RI", 1993] call BWI_fnc_AddGear;
[_unit, "DMR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_20Rnd_762x51_B_M14";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "hlc_20Rnd_762x51_B_M14";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "hlc_20Rnd_762x51_T_M14";};