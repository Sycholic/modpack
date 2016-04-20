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

_unit forceAddUniform "BWA3_Uniform_Fleck";

_unit addVest "BWA3_Vest_Marksman_Fleck";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
_unit addItemToVest "rhs_mag_m18_green";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 3 do {_unit addItemToVest "BWA3_15Rnd_9x19_P8";};

_unit addBackpack "BWA3_Kitbag_Fleck";

_unit addHeadgear "BWA3_Booniehat_Fleck";

_unit addWeapon "hlc_rifle_awmagnum_BL";
_unit addPrimaryWeaponItem "UK3CB_BAF_SB31250";
_unit addWeapon "BWA3_P8";

_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "SNI", "RI", 2010] call BWI_fnc_AddGear;
[_unit, "SNI"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToBackpack "hlc_5rnd_300WM_FMJ_AWM";}; 
for "_i" from 1 to  4 do {_unit addItemToVest "hlc_5rnd_300WM_AP_AWM";}; 