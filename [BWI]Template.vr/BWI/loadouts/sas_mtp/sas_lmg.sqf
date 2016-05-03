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

_unit forceAddUniform "UK3CB_BAF_U_CombatUniform_MTP";
_unit addItemToUniform "US_Facepaint";

_unit addVest "tacs_Vest_PlateCarrier_Khaki";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {_unit addItemToVest "RH_15Rnd_9x19_M9";};

_unit addBackpack "B_Kitbag_mcamo";
_unit addItemToBackpack "RH_SFM952V";

_unit addHeadgear "rhsusf_mich_bare_norotos_arc_semi_headset";
_unit addGoggles "T_HoodTanBlk";

_unit addWeapon "rhs_weap_m249_pip_S_para";
_unit addPrimaryWeaponItem "RH_m145";
_unit addPrimaryWeaponItem "RH_peq15b_top";
_unit addWeapon "RH_p226";
_unit addHandgunItem "RH_suppr9";
_unit addHandgunItem "RH_X300";

_unit linkItem "tf_rf7800str";
_unit linkItem "tf_microDAGR";

[_unit, "AR", "SF", 2016] call BWI_fnc_AddGear;
[_unit, "AR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_200rnd_556x45_M_SAW";};
_unit addItemToVest "rhs_200rnd_556x45_M_SAW";