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

_unit forceAddUniform "tacs_Uniform_Garment_LS_ES_EP_TB";
_unit addItemToUniform "US_Facepaint";

_unit addVest "tacs_Vest_PlateCarrier_Black";
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

_unit addHeadgear "tacs_Helmet_Ballistic_DarkBlack";
_unit addGoggles "T_HoodBlkCLR";

_unit addWeapon "hlc_smg_MP5N";
_unit addPrimaryWeaponItem "hlc_muzzle_Tundra";
_unit addPrimaryWeaponItem "UK3CB_BAF_LLM_IR_Black";
_unit addPrimaryWeaponItem "RH_barska_rds";
_unit addWeapon "rhs_weap_M320";

_unit linkItem "tf_rf7800str";
_unit linkItem "tf_microDAGR";

[_unit, "GRE", "SF", 2016] call BWI_fnc_AddGear;
[_unit, "GRE"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_9x19_B_MP5";}; 
for "_i" from 1 to 4 do {_unit addItemToBackpack "hlc_30Rnd_9x19_GD_MP5";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "hlc_30Rnd_9x19_SD_MP5";};