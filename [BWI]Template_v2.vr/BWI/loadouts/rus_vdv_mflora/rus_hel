//LOADOUTS - BWI - Helicopter Pilot
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


_unit forceAddUniform "rhs_uniform_df15";

_unit addVest "rhs_vest_commander";

_unit addBackpack "B_FieldPack_blk";
_unit addItemToBackpack "acc_pointer_IR";
_unit addItemToBackpack "hlc_muzzle_545SUP_AK";
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_HandFlare_Red";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_HandFlare_Green";};

_unit addHeadgear "rhs_zsh7a_mike";

[_unit, "HEL"] call BWI_fnc_AddGear;
[_unit, "HEL"] call BWI_fnc_AddMedical;

_unit addWeapon "hlc_rifle_aku12";
_unit addPrimaryWeaponItem "RH_SFM952V";
_unit addPrimaryWeaponItem "rhsusf_acc_eotech_552";
_unit addWeapon "rhs_weap_makarov_pmm";
_unit linkItem "tf_pnr1000a";

for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30Rnd_545x39_B_AK";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_9x18_12_57N181S";};
