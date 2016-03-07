//LOADOUTS - BWI - Automatic Rifleman (M27)
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
for "_i" from 1 to 2 do {_unit addItemToUniform "I_IR_Grenade";};

_unit addVest "V_PlateCarrier1_PMC_blk";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellRed";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};

_unit addBackpack "B_AssaultPack_blk";
_unit addItemToBackpack "UK3CB_BAF_LLM_IR_Black";
_unit addItemToBackpack "hlc_muzzle_snds_AUG";
for "_i" from 1 to 2 do {_unit addItemToBackpack "HandGrenade";};

_pmc_headgear = ["H_Cap_pmc", "H_Capbw_pmc", "H_Cap_usblack", "H_Cap_blk"];
_randomHeadgear = selectRandom _pmc_headgear;
_unit addHeadgear _randomHeadgear;

_unit addWeapon "hlc_rifle_auga3_b";
_unit addPrimaryWeaponItem "UK3CB_BAF_LLM_Flashlight_Black";
_unit addPrimaryWeaponItem "UK3CB_BAF_Eotech";
_unit addWeapon "rhsusf_weap_m9";

_unit linkItem "tf_anprc154";

[_unit, "AAR"] call BWI_fnc_AddGear;
[_unit, "AAR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToBackpack "hlc_40Rnd_556x45_B_AUG";}; 
for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_556x45_B_AUG";}; 
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30Rnd_556x45_T_AUG";};