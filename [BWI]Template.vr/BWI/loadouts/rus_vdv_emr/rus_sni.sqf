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

_unit forceAddUniform "rhs_uniform_vdv_emr";

_unit addVest "rhs_6b23_digi_6sh92_headset";

_unit addBackpack "B_FieldPack_oli";
for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_9x19_17";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
_unit addItemToBackpack "SmokeShellGreen";

_unit addHeadgear "rhs_Booniehat_digi";

_unit addWeapon "rhs_weap_svdp_npz";
_unit addPrimaryWeaponItem "RH_leu_mk4";
_unit addWeapon "rhs_weap_pya";

_unit linkItem "tf_fadak";
_unit linkItem "ItemWatch";

[_unit, "SNI", "RI", 2018] call BWI_fnc_AddGear;
[_unit, "SNI"] call BWI_fnc_AddMedical;

for "_i" from 1 to 10 do {_unit addItemToVest "rhs_10Rnd_762x54mmR_7N1";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_10Rnd_762x54mmR_7N1";};
