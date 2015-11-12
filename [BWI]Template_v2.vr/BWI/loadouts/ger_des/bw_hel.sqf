
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

_unit forceAddUniform "BWA3_Uniform_Crew_Tropen";

_unit addVest "BWA3_Vest_Tropen";
_unit addItemToVest "rhs_mag_m18_green";
_unit addItemToVest "rhs_mag_m18_red";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_HandFlare_Green";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_HandFlare_Red";};
for "_i" from 1 to 3 do {_unit addItemToVest "RH_12Rnd_45cal_usp";};

_unit addBackpack "BWA3_FieldPack_Tropen";

_unit addHeadgear "rhsusf_hgu56p";

_unit addWeapon "hlc_smg_mp5a4";
_unit addPrimaryWeaponItem "hlc_muzzle_Tundra";
_unit addPrimaryWeaponItem "optic_ACO_grn_smg";
_unit addWeapon "RH_usp";

_unit linkItem "tf_anprc152_5";

[_unit, "HEL"] call BWI_fnc_AddGear;
[_unit, "HEL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30Rnd_9x19_B_MP5";}; 
