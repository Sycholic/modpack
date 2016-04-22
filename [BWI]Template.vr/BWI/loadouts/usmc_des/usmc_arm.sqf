// Vehicle Crew
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

_unit addVest "rhsusf_spc";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};

_unit addBackpack "rhsusf_assault_eagleaiii_coy";

_unit addHeadgear "rhsusf_cvc_helmet";

_unit addWeapon "hlc_rifle_CQBR";

_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "ARM", "RI", 2008] call BWI_fnc_AddGear;
[_unit, "ARM"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToBackpack "30Rnd_556x45_Stanag";};