
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "BWA3_Uniform_Ghillie_idz_Tropen";

_unit addVest "BWA3_Vest_Marksman_Tropen";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
_unit addItemToVest "rhs_mag_m18_green";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_15Rnd_9x19_P8";};

_unit addBackpack "BWA3_Kitbag_Tropen";

_unit addHeadgear "BWA3_MICH_Tropen";

_unit addWeapon "hlc_rifle_awMagnum_BL_ghillie";
_unit addPrimaryWeaponItem "UK3CB_BAF_SB31250_Desert_Ghillie";
_unit addWeapon "BWA3_P8";

_unit linkItem "tf_anprc152";

[_unit, "SNI"] call BWI_fnc_AddGear;
[_unit, "SNI"] call BWI_fnc_AddMedical;

for "_i" from 1 to 16 do {_unit addItemToBackpack "hlc_5rnd_300WM_FMJ_AWM";}; 
for "_i" from 1 to  4 do {_unit addItemToVest "hlc_5rnd_300WM_FMJ_AWM";}; 
for "_i" from 1 to  3 do {_unit addItemToVest "hlc_5rnd_300WM_SBT_AWM";}; 