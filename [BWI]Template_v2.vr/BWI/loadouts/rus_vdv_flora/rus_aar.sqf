
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

_unit forceAddUniform "rhs_uniform_vdv_flora";

_unit addVest "rhs_6b13_6sh92_headset_mapcase";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rgd5";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rdg2_white";};
_unit addItemToVest "rhs_mag_nspn_red";
_unit addItemToVest "rhs_mag_nspn_green";
for "_i" from 1 to 2 do {_unit addItemToVest "RH_8Rnd_9x18_Mak";};

_unit addBackpack "B_Carryall_oli";
_unit addItemToBackpack "hlc_muzzle_545SUP_AK";

_unit addHeadgear "rhs_6b26_ess_bala";

_unit addWeapon "hlc_rifle_aks74";
_unit addPrimaryWeaponItem "rhs_acc_ekp1";
_unit addWeapon "RH_mak";

_unit linkItem "tf_pnr1000a";

[_unit, "AAR"] call BWI_fnc_AddGear;
[_unit, "AAR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_30Rnd_545x39_AK";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_30Rnd_545x39_7N22_AK";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_100Rnd_762x54mmR";};