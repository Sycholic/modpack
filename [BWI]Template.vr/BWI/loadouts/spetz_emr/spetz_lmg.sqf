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

_unit forceAddUniform "rhs_uniform_emr_patchless";
_unit addItemToUniform "Serbian_Facepaint";
_unit addItemToUniform "acc_flashlight";

_unit addVest "rhs_6b23_digi_6sh92_headset_spetsnaz";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rgd5";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {_unit addItemToVest "RH_8Rnd_9x18_Mak";};

_unit addBackpack "B_Kitbag_rgr";

_unit addHeadgear "rhs_6b28_green_ess_bala";

_unit addWeapon "hlc_rifle_RPK12";
_unit addPrimaryWeaponItem "hlc_muzzle_545SUP_AK";
_unit addPrimaryWeaponItem "RH_eotech553mag";
_unit addPrimaryWeaponItem "RH_peq15b";
_unit addWeapon "RH_mak";
_unit addHandgunItem "RH_pmsd";
_unit addHandgunItem "RH_pmIR";

_unit linkItem "tf_pnr1000a";
_unit linkItem "tf_microDAGR";

[_unit, "AR", "SF", 2016] call BWI_fnc_AddGear;
[_unit, "AR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 12 do {_unit addItemToBackpack "hlc_60Rnd_545x39_t_rpk";}; 
for "_i" from 1 to 2 do {_unit addItemToVest "hlc_60Rnd_545x39_t_rpk";};