// Corpsman
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
for "_i" from 1 to 3 do {_unit addItemToUniform "RH_15Rnd_9x19_M9";};

_unit addVest "BWI_Vest_USA_3CO";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";

_unit addBackpack "B_Carryall_cbr";

_unit addHeadgear "BWI_Helmet_USA_3CO";

_unit addWeapon "RH_M16A2";
_unit addWeapon "RH_m9";

_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "CM", "RI", 1993] call BWI_fnc_AddGear;
[_unit, "CM"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "30Rnd_556x45_Stanag";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "30Rnd_556x45_Stanag_Tracer_Red";};