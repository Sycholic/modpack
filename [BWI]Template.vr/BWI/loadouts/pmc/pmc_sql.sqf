//LOADOUTS - BWI - SQL/FTL
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
for "_i" from 1 to 3 do {_unit addItemToUniform "1Rnd_HE_Grenade_shell";};

_unit addVest "V_PlateCarrier1_PMC_blk";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellRed";
_unit addItemToVest "SmokeShellGreen";
_unit addItemToVest "UGL_FlareWhite_F";
for "_i" from 1 to 4 do {_unit addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
_unit addItemToVest "1Rnd_Smoke_Grenade_shell";
for "_i" from 1 to 4 do {_unit addItemToVest "1Rnd_HE_Grenade_shell";};

_unit addBackpack "PMC_AssaultPack_Blk";
_unit addItemToBackpack "UK3CB_BAF_LLM_IR_Black";
_unit addItemToBackpack "hlc_muzzle_snds_AUG";
for "_i" from 1 to 3 do {_unit addItemToBackpack "rhsusf_mag_15Rnd_9x19_JHP";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};

_pmc_headgear = ["H_MilCap_gry", "H_Cap_pmc_headphones", "H_Cap_headphones", "H_Cap_oli_hs", "rhsusf_bowman_cap"];
_randomHeadgear = selectRandom _pmc_headgear;
_unit addHeadgear _randomHeadgear;

_unit addWeapon "hlc_rifle_auga3_GL_B";
_unit addPrimaryWeaponItem "UK3CB_BAF_LLM_Flashlight_Black";
_unit addPrimaryWeaponItem "UK3CB_BAF_TA31F_3D";
_unit addWeapon "rhsusf_weap_m9";

_unit linkItem "tf_anprc148jem";

[_unit, "SQL"] call BWI_fnc_AddGear;
[_unit, "SQL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_556x45_B_AUG";}; 
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30Rnd_556x45_T_AUG";};