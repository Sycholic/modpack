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

_unit forceAddUniform "U_PMC_IndUniformLS_BSBPBB";
for "_i" from 1 to 2 do {_unit addItemToUniform "B_IR_Grenade";};
_unit addItemToUniform "rhsusf_mag_15Rnd_9x19_JHP";
for "_i" from 1 to 3 do {_unit addItemToUniform "1Rnd_HE_Grenade_shell";};

_unit addVest "V_PlateCarrier1_PMC_blk";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
_unit addItemToVest "UGL_FlareWhite_F";
for "_i" from 1 to 4 do {_unit addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
_unit addItemToVest "1Rnd_Smoke_Grenade_shell";
_unit addItemToVest "1Rnd_HE_Grenade_shell";

_unit addBackpack "tf_rt1523g_black";
_unit addItemToBackpack "rhsusf_acc_nt4_black";
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhsusf_mag_15Rnd_9x19_JHP";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};

_unit addHeadgear "BWA3_OpsCore_Schwarz_Camera";
_unit addGoggles "PU_shemagh_GryCLR";

_unit addWeapon "rhs_weap_m4a1_carryhandle_m203";
_unit addPrimaryWeaponItem "UK3CB_BAF_LLM_Flashlight_Black";
_unit addPrimaryWeaponItem "UK3CB_BAF_TA31F";
_unit addWeapon "rhsusf_weap_m9";

_unit linkItem "tf_anprc152";

[_unit, "PL"] call BWI_fnc_AddGear;
[_unit, "PL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "30Rnd_556x45_Stanag";}; 
for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};