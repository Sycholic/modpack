// Grenadier
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "rhs_uniform_vdv_mflora";

_unit addVest "rhs_6b23_ML_6sh92_headset";

_unit addBackpack "B_FieldPack_khk";
for "_i" from 1 to 8 do {_unit addItemToBackpack "hlc_VOG25_AK";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "hlc_GRD_Red";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "hlc_GRD_White";};
_unit addItemToBackpack "hlc_GRD_Green";
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
_unit addItemToBackpack "SmokeShellGreen";

_unit addHeadgear "rhs_6b27m_ml_ess";

_unit addWeapon "rhs_weap_ak74m_gp25_npz";
_unit addPrimaryWeaponItem "optic_ACO_grn";

_unit linkItem "tf_pnr1000a";
_unit linkItem "tf_microDAGR";

[_unit, "FTL", "RI", 2006] call BWI_fnc_AddGear;
[_unit, "FTL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_545x39_B_AK";};
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30Rnd_545x39_t_ak";};