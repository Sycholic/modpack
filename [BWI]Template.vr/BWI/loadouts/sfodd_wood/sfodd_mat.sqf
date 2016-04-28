// Anti-Tank (MAT)
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "rhs_uniform_FROG01_wd";
_unit addItemToUniform "US_Facepaint";

_unit addVest "tacs_Vest_PlateCarrier_Green";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {_unit addItemToVest "RH_15Rnd_9x19_M9";};

_unit addBackpack "B_Kitbag_rgr";
_unit addItemToBackpack "tf47_m3maaws_HEAT";
_unit addItemToBackpack "RH_SFM952V";

_unit addHeadgear "rhsusf_mich_bare_norotos_arc_alt_headset";
_unit addGoggles "T_HoodODCLR";

_unit addWeapon "RH_m4a1_ris_wdl";
_unit addPrimaryWeaponItem "RH_qdss_nt4_wdl";
_unit addPrimaryWeaponItem "RH_peq15b_top";
_unit addPrimaryWeaponItem "RH_compM2";
_unit addWeapon "RH_m9";
_unit addHandgunItem "RH_m9qd";
_unit addHandgunItem "RH_X300";
_unit addWeapon "tf47_m3maaws";
_unit addSecondaryWeaponItem "tf47_optic_m3maaws";

_unit linkItem "tf_rf7800str";
_unit linkItem "tf_microDAGR";

[_unit, "MAT", "SF", 2016] call BWI_fnc_AddGear;
[_unit, "MAT"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "30Rnd_556x45_Stanag";}; 
for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};