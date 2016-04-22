// Automatic Rifleman
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "rhs_uniform_vdv_emr";
_unit addItemToUniform "RH_SFM952V";

_unit addVest "rhs_6b23_digi_6sh92_headset";
_unit addItemToVest "RH_peq15b";

_unit addBackpack "B_CarryAll_oli";
for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_9x19_17";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
_unit addItemToBackpack "SmokeShellGreen";

_unit addHeadgear "rhs_6b28_ess";

_unit addWeapon "hlc_rifle_RPK12";
_unit addPrimaryWeaponItem "RH_m145";
_unit addWeapon "rhs_weap_pya";

_unit linkItem "tf_pnr1000a";
_unit linkItem "tf_microDAGR";

[_unit, "AR", "RI", 2018] call BWI_fnc_AddGear;
[_unit, "AR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_60Rnd_545x39_t_rpk";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "hlc_60Rnd_545x39_t_rpk";};