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

_unit forceAddUniform "BWI_Uniform_UK_DPM";
_unit addItemToUniform "US_Facepaint";

_unit addVest "BWI_Vest_UK_DPM";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {_unit addItemToVest "RH_15Rnd_9x19_SIG";};

_unit addBackpack "B_Kitbag_rgr";
_unit addItemToBackpack "RH_SFM952V";

_unit addHeadgear "H_Booniehat_tan";
_unit addGoggles "rhs_balaclava1_olive";

_unit addWeapon "hlc_rifle_awmagnum_FDE";
_unit addPrimaryWeaponItem "UK3CB_BAF_SB31250";
_unit addWeapon "RH_p226";
_unit addHandgunItem "RH_suppr9";
_unit addHandgunItem "RH_X300";

_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "SNI", "SF", 1991] call BWI_fnc_AddGear;
[_unit, "SNI"] call BWI_fnc_AddMedical;

for "_i" from 1 to 4 do {_unit addItemToVest "hlc_5rnd_300WM_FMJ_AWM";}; 
for "_i" from 1 to 4 do {_unit addItemToBackpack "hlc_5rnd_300WM_FMJ_AWM";}; 
for "_i" from 1 to 4 do {_unit addItemToBackpack "hlc_5rnd_300WM_AP_AWM";}; 
for "_i" from 1 to 2 do {_unit addItemToBackpack "hlc_5rnd_300WM_SBT_AWM";};