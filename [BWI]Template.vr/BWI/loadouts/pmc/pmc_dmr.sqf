//LOADOUTS - BWI - Rifleman

_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_pmc_uniforms = ["U_I_G_Story_Protagonist_F", "U_PMC_IndUniformLS_TSTPTB", "U_PMC_IndUniformLS_BSTPTB", "U_PMC_IndUniformLS_TSBPTB", "U_PMC_IndUniformLS_GSYPTB", "U_PMC_IndUniformLS_YSYPTB", "U_PMC_IndUniformLS_YSBPBB", "U_PMC_CombatUniformLS_SSGPSB"];
_randomUni = selectRandom _pmc_uniforms;
_unit forceAddUniform _randomUni;

_unit addVest "V_PlateCarrier1_PMC_blk";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};

_unit addBackpack "B_AssaultPack_blk";
_unit addItemToBackpack "UK3CB_BAF_LLM_Flashlight_Black_tan";
_unit addItemToBackpack "RH_peq15b";

_pmc_headgear = ["H_Cap_pmc", "H_Capbw_pmc", "H_Cap_usblack", "H_Cap_blk"];
_randomHeadgear = selectRandom _pmc_headgear;
_unit addHeadgear _randomHeadgear;

_unit addWeapon "srifle_EBR_F";
_unit addPrimaryWeaponItem "optic_DMS";
_unit addWeapon "rhsusf_weap_m9";

_unit linkItem "tf_anprc154";

[_unit, "DMR", "SF", 2008] call BWI_fnc_AddGear;
[_unit, "DMR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 7 do {_unit addItemToBackpack "20Rnd_762x51_Mag";}; 
for "_i" from 1 to 3 do {_unit addItemToBackpack "20Rnd_762x51_Mag";};