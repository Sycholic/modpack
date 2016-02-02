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
_randomUni = _pmc_uniforms select floor random count _pmc_uniforms;
_unit forceAddUniform _randomUni;
for "_i" from 1 to 2 do {_unit addItemToUniform "I_IR_Grenade";};

_unit addVest "V_PlateCarrier1_PMC_blk";
_unit addItemToVest "SmokeShellRed";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 3 do {_unit addItemToVest "RH_15Rnd_9x19_M9";};

_unit addBackpack "B_AssaultPack_blk";
_unit addItemToBackpack "rhsusf_acc_anpeq15side";
_unit addItemToBackpack "RH_SFM952V_tan";
_unit addItemToBackpack "RH_fa762_des";
_unit addItemToBackpack "RH_m9qd";

_pmc_headgear = ["H_Cap_pmc", "H_Capbw_pmc", "H_Cap_usblack", "H_Cap_blk"];
_randomHeadgear = _pmc_headgear select floor random count _pmc_headgear;
_unit addHeadgear _randomHeadgear;

_unit addWeapon "srifle_EBR_F";
_unit addPrimaryWeaponItem "optic_DMS";
_unit addWeapon "RH_m9";
_unit addHandgunItem "RH_M6X";

_unit linkItem "tf_anprc154";

[_unit, "DMR"] call BWI_fnc_AddGear;
[_unit, "DMR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 10 do {_unit addItemToBackpack "20Rnd_762x51_Mag";}; 
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_20Rnd_762x51_Mag_Tracer_Dim";};