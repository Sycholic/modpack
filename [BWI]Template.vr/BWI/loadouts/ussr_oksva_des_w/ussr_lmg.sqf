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

_unit forceAddUniform "AFGHAN_GORKA2";

_unit addVest "V_AFGH_6Sh92_Vog_TAN";

_unit addBackpack "B_CarryAll_khk";
for "_i" from 1 to 3 do {_unit addItemToBackpack "RH_8Rnd_9x18_Mak";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rdg2_white";};
_unit addItemToBackpack "rhs_mag_rdg2_black";

_unit addHeadgear "AFGHAN_SH_68_2";

_unit addWeapon "hlc_rifle_rpk74n";
_unit addPrimaryWeaponItem "rhs_acc_pkas";
_unit addWeapon "RH_mak";

_unit linkItem "tf_pnr1000a";
_unit linkItem "tf_microDAGR";

[_unit, "AR", "RI", 1984] call BWI_fnc_AddGear;
[_unit, "AR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 8 do {_unit addItemToVest "hlc_45Rnd_545x39_t_rpk";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "hlc_45Rnd_545x39_t_rpk";};