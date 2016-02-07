
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "rhs_uniform_flora_patchless";
for "_i" from 1 to 2 do {_unit addItemToUniform "O_IR_Grenade";};
_unit addVest "rhs_6b23_6sh92_headset";

_unit addBackpack "B_Kitbag_sgg";
for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_9x18_12_57N181S";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellRed";};
_unit addItemToBackpack "SmokeShellGreen";
_unit addHeadgear "rhs_6b26_ess_bala";

_unit addWeapon "rhs_weap_pkp";
_unit addPrimaryWeaponItem "rhs_acc_1p78";
_unit addWeapon "rhs_weap_makarov_pmm";
_unit linkItem "tf_pnr1000a";

[_unit, "AR"] call BWI_fnc_AddGear;
[_unit, "AR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_100Rnd_762x54mmR_green";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_100Rnd_762x54mmR";};

