// Squad Leader
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
for "_i" from 1 to 2 do {_unit addItemToUniform "B_IR_Grenade";};

_unit addVest "BWI_Vest_BWI_B16";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
_unit addItemToVest "1Rnd_Smoke_Grenade_shell";
_unit addItemToVest "UGL_FlareWhite_F";

_unit addBackpack "tacs_Backpack_Kitbag_DarkBlack";
for "_i" from 1 to 5 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};

_unit addHeadgear "BWI_Helmet_BWI_B16";
_unit addGoggles "BWA3_G_Combat_Black";

_unit addWeapon "RH_M4sbr_g";
_unit addPrimaryWeaponItem "RH_saker";
_unit addPrimaryWeaponItem "UK3CB_BAF_LLM_Flashlight_Black";
_unit addPrimaryWeaponItem "RH_ta01nsn";
_unit addWeapon "rhs_weap_M320";

_unit linkItem "tf_anprc148jem";
_unit linkItem "ItemWatch";

[_unit, "SQL", "SF", 2018] call BWI_fnc_AddGear;
[_unit, "SQL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "30Rnd_556x45_Stanag";}; 
for "_i" from 1 to 4 do {_unit addItemToBackpack "30Rnd_556x45_Stanag_Tracer_Red";};