// Fire Support
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

_unit addWeapon "RH_M16A2";

_unit linkItem "tf_rf7800str";
_unit linkItem "tf_microDAGR";

[_unit, "FSP", "RI", 1993] call BWI_fnc_AddGear;
[_unit, "FSP"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToBackpack "30Rnd_556x45_Stanag";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "30Rnd_556x45_Stanag_Tracer_Red";};