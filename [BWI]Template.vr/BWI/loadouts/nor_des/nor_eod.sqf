// Explosive Ordnance Disposal
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "BWI_Uniform_NOR_M03";
_unit addItemToUniform "RH_SFM952V";

_unit addVest "BWI_Vest_NOR_M03";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};

_unit addBackpack "B_Kitbag_cbr";

_unit addHeadgear "BWI_Helmet_NOR_M03";

_unit addWeapon "hlc_rifle_g3ka4";
_unit addPrimaryWeaponItem "RH_peq15b";
_unit addPrimaryWeaponItem "RH_compm4s";

_unit linkItem "tf_rf7800str";
_unit linkItem "tf_microDAGR";

[_unit, "EOD", "RI", 2006] call BWI_fnc_AddGear;
[_unit, "EOD"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_20rnd_762x51_b_G3";}; 
for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_20rnd_762x51_T_G3";};