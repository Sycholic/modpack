// Automatic Rifleman
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "tacs_Uniform_Garment_LS_ES_BP_BB";
_unit addItemToUniform "Serbian_Facepaint";
_unit addItemToUniform "acc_flashlight";

_unit addVest "V_PlateCarrier1_blk";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rgd5";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {_unit addItemToVest "RH_20Rnd_32cal_vz61";};

_unit addBackpack "tacs_Backpack_Kitbag_DarkBlack";

_unit addHeadgear "tacs_Helmet_Ballistic_DarkBlack";
_unit addGoggles "G_Balaclava_blk";

_unit addWeapon "hlc_rifle_RPK12";
_unit addPrimaryWeaponItem "hlc_muzzle_545SUP_AK";
_unit addPrimaryWeaponItem "RH_reflexmag";
_unit addPrimaryWeaponItem "RH_peq15b";
_unit addWeapon "RH_vz61";

_unit linkItem "tf_pnr1000a";
_unit linkItem "tf_microDAGR";

[_unit, "AR", "SF", 2016] call BWI_fnc_AddGear;
[_unit, "AR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 12 do {_unit addItemToBackpack "hlc_60Rnd_545x39_t_rpk";}; 
for "_i" from 1 to 2 do {_unit addItemToVest "hlc_60Rnd_545x39_t_rpk";};