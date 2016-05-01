// Combat Engineer
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "rhs_uniform_FROG01_d";
_unit addItemToUniform "US_Facepaint";

_unit addVest "tacs_Vest_PlateCarrier_Coyote";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {_unit addItemToVest "RH_15Rnd_9x19_M9";};

_unit addBackpack "B_Carryall_cbr";
_unit addItemToBackpack "RH_SFM952V_tan";

_unit addHeadgear "rhsusf_mich_bare_norotos_arc_alt_tan_headset";
_unit addGoggles "T_HoodTanCLR";

_unit addWeapon "RH_m4a1_ris_des";
_unit addPrimaryWeaponItem "RH_qdss_nt4_des";
_unit addPrimaryWeaponItem "RH_peq15_top";
_unit addPrimaryWeaponItem "RH_compM2_tan";
_unit addWeapon "RH_m9";
_unit addHandgunItem "RH_m9qd";
_unit addHandgunItem "RH_X300";

_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "ENG", "SF", 2016] call BWI_fnc_AddGear;
[_unit, "ENG"] call BWI_fnc_AddMedical;

for "_i" from 1 to 8 do {_unit addItemToVest "30Rnd_556x45_Stanag";}; 
for "_i" from 1 to 2 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {_unit addItemToUniform "30Rnd_556x45_Stanag_Tracer_Red";};