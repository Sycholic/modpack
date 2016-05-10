// Assistant Automatic Rifleman (MMG)
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "BWI_Uniform_USA_3CO";
_unit addItemToUniform "US_Facepaint";

_unit addVest "tacs_Vest_PlateCarrier_Black";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {_unit addItemToVest "RH_15Rnd_9x19_M9";};

_unit addBackpack "tacs_Backpack_Kitbag_DarkBlack";
_unit addItemToBackpack "RH_peq2";
_unit addItemToBackpack "RH_qdss_nt4";

_unit addHeadgear "tacs_Helmet_Ballistic_DarkBlack";
_unit addGoggles "tacs_Goggles_Black";

_unit addWeapon "rhs_weap_m16a4_carryhandle";
_unit addPrimaryWeaponItem "RH_SFM952V";
_unit addPrimaryWeaponItem "RH_compM2";
_unit addWeapon "RH_m9";
_unit addHandgunItem "RH_X300";

_unit linkItem "tf_rf7800str";
_unit linkItem "tf_microDAGR";

[_unit, "AMMG", "SF", 1993] call BWI_fnc_AddGear;
[_unit, "AMMG"] call BWI_fnc_AddMedical;

_unit addItemToBackpack "rhsusf_100Rnd_762x51_m62_tracer";
for "_i" from 1 to 3 do {_unit addItemToBackpack "rhsusf_100Rnd_762x51";}; 
for "_i" from 1 to 6 do {_unit addItemToVest "30Rnd_556x45_Stanag";}; 
for "_i" from 1 to 2 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
_unit addItemToUniform "30Rnd_556x45_Stanag_Tracer_Red";