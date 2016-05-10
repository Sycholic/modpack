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

_unit forceAddUniform "rhs_uniform_vdv_emr";

_unit addVest "rhs_6b23_digi_6sh92_headset";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_9x19_17";};

_unit addBackpack "B_FieldPack_oli";
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
_unit addItemToBackpack "SmokeShellGreen";

_unit addHeadgear "rhs_6b28_ess";

_unit addWeapon "rhs_weap_svds_npz";
_unit addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4";
_unit addWeapon "rhs_weap_pya";

_unit linkItem "tf_pnr1000a";
_unit linkItem "tf_microDAGR";

[_unit, "DMR", "RI", 2018] call BWI_fnc_AddGear;
[_unit, "DMR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 10 do {_unit addItemToVest "rhs_10Rnd_762x54mmR_7N1";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_10Rnd_762x54mmR_7N1";};