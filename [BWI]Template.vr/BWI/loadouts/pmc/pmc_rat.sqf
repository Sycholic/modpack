//LOADOUTS - BWI - Rifleman (AT)
_unit = (_this select 1);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

_pmc_uniforms = ["U_I_G_Story_Protagonist_F", "U_PMC_IndUniformLS_TSTPTB", "U_PMC_IndUniformLS_BSTPTB", "U_PMC_IndUniformLS_TSBPTB", "U_PMC_IndUniformLS_GSYPTB", "U_PMC_IndUniformLS_YSYPTB", "U_PMC_IndUniformLS_YSBPBB", "U_PMC_CombatUniformLS_SSGPSB"];
_randomUni = _pmc_uniforms select floor random count _pmc_uniforms;
_unit forceAddUniform _randomUni;

_unit addVest "V_PlateCarrier1_PMC_blk";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellRed";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "RH_15Rnd_9x19_M9";};

_unit addBackpack "B_AssaultPack_blk";
_unit addItemToBackpack "RH_peq15b";
_unit addItemToBackpack "hlc_muzzle_snds_AUG";
_unit addItemToBackpack "RH_m9qd";

_pmc_headgear = ["H_Cap_pmc", "H_Capbw_pmc", "H_Cap_usblack", "H_Cap_blk"];
_randomHeadgear = _pmc_headgear select floor random count _pmc_headgear;
_unit addHeadgear _randomHeadgear;

_unit addWeapon "hlc_rifle_auga3_b";
_unit addPrimaryWeaponItem "RH_SFM952V";
_unit addPrimaryWeaponItem "UK3CB_BAF_Eotech";
_unit addWeapon "rhs_weap_M136";
_unit addWeapon "RH_m9";
_unit addHandgunItem "RH_M6X";

_unit linkItem "tf_rf7800str";

[_unit, "RAT"] call BWI_fnc_AddGear;
[_unit, "RAT"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_556x45_B_AUG";}; 
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30Rnd_556x45_T_AUG";};