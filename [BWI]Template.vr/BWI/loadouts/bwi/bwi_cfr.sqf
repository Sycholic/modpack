// Combat First Responder
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

_unit addWeapon "hlc_smg_mp5sd6";
_unit addPrimaryWeaponItem "RH_barska_rds";
_unit addWeapon "RH_fn57";
_unit addHandgunItem "RH_sfn57";

_unit linkItem "tf_anprc148jem";
_unit linkItem "ItemWatch";

[_unit, "CFR", "SF", 2018] call BWI_fnc_AddGear;
[_unit, "CFR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_9x19_B_MP5";}; 
for "_i" from 1 to 4 do {_unit addItemToBackpack "hlc_30Rnd_9x19_GD_MP5";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "hlc_30Rnd_9x19_SD_MP5";};