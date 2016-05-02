// Driver
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "BWI_Uniform_IDF_OLI";
_unit addItemToUniform "RH_SFM952V";

_unit addVest "BWI_Vest_IDF_OLI";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};

_unit addBackpack "B_AssaultPack_rgr";

_unit addHeadgear "BWI_Helmet_IDF_OLI";

_unit addWeapon "arifle_TRG21_F";
_unit addPrimaryWeaponItem "RH_peq15b";
_unit addPrimaryWeaponItem "optic_Aco";

_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "DRV", "RI", 2016] call BWI_fnc_AddGear;
[_unit, "DRV"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "30Rnd_556x45_Stanag";}; 
for "_i" from 1 to 3 do {_unit addItemToBackpack "30Rnd_556x45_Stanag_Tracer_Green";};