// Combat Engineer
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "BWI_Uniform_SWE_M90K";
_unit addItemToUniform "RH_SFM952V";

_unit addVest "BWI_Vest_SWE_M90K";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};

_unit addBackpack "B_Carryall_cbr";
_unit addItemToBackpack "RH_peq15b";

_unit addHeadgear "BWI_Helmet_SWE_M90K";

_unit addWeapon "hlc_rifle_falosw";
_unit addPrimaryWeaponItem "RH_compM2l";

_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "ENG", "RI", 2010] call BWI_fnc_AddGear;
[_unit, "ENG"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_20Rnd_762x51_B_fal";}; 
for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_20Rnd_762x51_T_fal";};