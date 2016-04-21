// Automatic Rifleman (MMG)
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "rhs_uniform_vdv_flora";

_unit addVest "rhs_6b23_6sh92_headset";

_unit addBackpack "B_CarryAll_oli";
for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_9x19_17";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
_unit addItemToBackpack "SmokeShellGreen";

_unit addHeadgear "rhs_6b26_ess";

_unit addWeapon "rhs_weap_pkp";
_unit addPrimaryWeaponItem "rhs_acc_1p78";
_unit addWeapon "rhs_weap_pya";

_unit linkItem "tf_pnr1000a";
_unit linkItem "tf_microDAGR";

[_unit, "AR", "RI", 2006] call BWI_fnc_AddGear;
[_unit, "AR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 2 do {_unit addItemToVest "rhs_100Rnd_762x54mmR_green";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_100Rnd_762x54mmR";};