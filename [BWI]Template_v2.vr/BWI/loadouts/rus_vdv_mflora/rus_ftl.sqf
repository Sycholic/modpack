
_unit = (_this select 1);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

_unit forceAddUniform "rhs_uniform_mflora_patchless";

_unit addVest "rhs_6b23_ML_6sh92_headset";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rgd5";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rdg2_white";};
_unit addItemToVest "rhs_mag_nspn_red";
_unit addItemToVest "rhs_mag_nspn_green";
for "_i" from 1 to 6 do {_unit addItemToVest "hlc_VOG25_AK";};
for "_i" from 1 to 2 do {_unit addItemToVest "hlc_GRD_White";};
_unit addItemToVest "hlc_GRD_Red";

_unit addBackpack "B_FieldPack_khk";
for "_i" from 1 to 2 do {_unit addItemToBackpack "hlc_VOG25_AK";};
_unit addItemToBackpack "hlc_GRD_Red";
_unit addItemToBackpack "hlc_GRD_green";
_unit addItemToBackpack "hlc_GRD_yellow";
_unit addItemToBackpack "hlc_muzzle_545SUP_AK";
for "_i" from 1 to 2 do {_unit addItemToBackpack "RH_8Rnd_9x18_Mak";};

_unit addHeadgear "rhs_6b27m_ml_ess";

_unit addWeapon "hlc_rifle_aks74_GL";
_unit addPrimaryWeaponItem "rhs_acc_pkas";
_unit addWeapon "RH_mak";

_unit linkItem "tf_fadak";

[_unit, "FTL"] call BWI_fnc_AddGear;
[_unit, "FTL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_30Rnd_545x39_AK";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_30Rnd_545x39_7N22_AK";};	 