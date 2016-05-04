// Grenadier
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
for "_i" from 1 to 2 do {_unit addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToVest "1Rnd_Smoke_Grenade_shell";};
_unit addItemToVest "UGL_FlareWhite_F";

_unit addBackpack "tacs_Backpack_Kitbag_DarkBlack";
for "_i" from 1 to 8 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_m4009";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "rhs_mag_m576";};

_unit addHeadgear "BWI_Helmet_BWI_B16";
_unit addGoggles "BWA3_G_Combat_Black";

_unit addWeapon "RH_sbr9";
_unit addPrimaryWeaponItem "muzzle_snds_L";
_unit addPrimaryWeaponItem "UK3CB_BAF_LLM_Flashlight_Black";
_unit addPrimaryWeaponItem "RH_barska_rds";
_unit addWeapon "rhs_weap_M320";

_unit linkItem "tf_anprc154";
_unit linkItem "tf_microDAGR";

[_unit, "GRE", "SF", 2018] call BWI_fnc_AddGear;
[_unit, "GRE"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "RH_32Rnd_9mm_M822";}; 
for "_i" from 1 to 4 do {_unit addItemToBackpack "RH_32Rnd_9mm_HP";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "RH_32Rnd_9mm_HPSB";};