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

_unit forceAddUniform "BWI_Uniform_NOR_M98";

_unit addVest "BWI_Vest_NOR_M98";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 3 do {_unit addItemToVest "RH_17Rnd_9x19_g17";};

_unit addBackpack "B_Kitbag_rgr";

_unit addHeadgear "H_Booniehat_oli";

_unit addWeapon "hlc_rifle_awmagnum";
_unit addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4_2";
_unit addWeapon "RH_g17";

_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "SNI", "RI", 2006] call BWI_fnc_AddGear;
[_unit, "SNI"] call BWI_fnc_AddMedical;

for "_i" from 1 to 2 do {_unit addItemToVest "hlc_5rnd_300WM_FMJ_AWM";}; 
for "_i" from 1 to 5 do {_unit addItemToBackpack "hlc_5rnd_300WM_FMJ_AWM";}; 
for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_5rnd_300WM_AP_AWM";}; 