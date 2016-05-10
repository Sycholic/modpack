// Assistant Automatic Rifleman (MMG)
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "BWI_Uniform_SWE_M90";
_unit addItemToUniform "RH_SFM952V";

_unit addVest "BWI_Vest_UN_BLU";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";

_unit addBackpack "B_Carryall_oli";
_unit addItemToBackpack "RH_peq15b";

_unit addHeadgear "BWI_Helmet_UN_BLU";

_unit addWeapon "hlc_rifle_falosw";
_unit addPrimaryWeaponItem "RH_compM2l";

_unit linkItem "tf_anprc154";
_unit linkItem "tf_microDAGR";

[_unit, "AMMG", "RI", 2010] call BWI_fnc_AddGear;
[_unit, "AMMG"] call BWI_fnc_AddMedical;

_unit addItemToBackpack "UK3CB_BAF_75Rnd_T";
for "_i" from 1 to 2 do {_unit addItemToBackpack "UK3CB_BAF_75Rnd";};
for "_i" from 1 to 6 do {_unit addItemToVest "hlc_20Rnd_762x51_B_fal";}; 
for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_20Rnd_762x51_T_fal";}; 