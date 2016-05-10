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

_unit forceAddUniform "tacs_Uniform_Garment_LS_BS_BP_BB";
_unit addItemToUniform "US_Facepaint";

_unit addVest "tacs_Vest_PlateCarrier_Black";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {_unit addItemToVest "RH_15Rnd_9x19_M9";};

_unit addBackpack "tacs_Backpack_Kitbag_DarkBlack";
_unit addItemToBackpack "RH_SFM952V";

_unit addHeadgear "tacs_Helmet_Ballistic_DarkBlack";
_unit addGoggles "T_HoodBlkCLR";

_unit addWeapon "RH_M27IAR";
_unit addPrimaryWeaponItem "RH_qdss_nt4";
_unit addPrimaryWeaponItem "RH_m145";
_unit addPrimaryWeaponItem "RH_peq15b_top";
_unit addPrimaryWeaponItem "RH_HBLM";
_unit addWeapon "RH_m9";
_unit addHandgunItem "RH_m9qd";
_unit addHandgunItem "RH_X300";

_unit linkItem "tf_rf7800str";
_unit linkItem "tf_microDAGR";

[_unit, "AR", "SF", 2016] call BWI_fnc_AddGear;
[_unit, "AR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 16 do {_unit addItemToBackpack "30Rnd_556x45_Stanag";}; 
for "_i" from 1 to 8 do {_unit addItemToBackpack "30Rnd_556x45_Stanag_Tracer_Red";};