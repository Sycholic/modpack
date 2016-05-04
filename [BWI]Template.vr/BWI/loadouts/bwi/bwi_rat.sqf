// Rifleman (AT)
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "BWI_Uniform_BWI_B16";
_unit addItemToUniform "US_Facepaint";

_unit addVest "BWI_Vest_BWI_B16";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {_unit addItemToVest "RH_20Rnd_57x28_FN";};

_unit addBackpack "tacs_Backpack_Kitbag_DarkBlack";

_unit addHeadgear "BWI_Helmet_BWI_B16";
_unit addGoggles "BWA3_G_Combat_Black";

_unit addWeapon "RH_hb_b";
_unit addPrimaryWeaponItem "RH_hbsd";
_unit addPrimaryWeaponItem "RH_barska_rds";
_unit addWeapon "RH_fn57";
_unit addHandgunItem "RH_sfn57";
_unit addWeapon "tf47_at4_HEDP";

_unit linkItem "tf_anprc154";
_unit linkItem "tf_microDAGR";

[_unit, "RAT", "SF", 2018] call BWI_fnc_AddGear;
[_unit, "RAT"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "RH_30Rnd_762x35_FMJ";}; 
for "_i" from 1 to 3 do {_unit addItemToBackpack "RH_30Rnd_762x35_MSB";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "RH_30Rnd_762x35_Match";};