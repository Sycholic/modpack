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

_unit forceAddUniform "U_B_Wetsuit";
for "_i" from 1 to 2 do {_unit addItemToUniform "B_IR_Grenade";};
_unit addItemToUniform "UGL_FlareWhite_F";
_unit addItemToUniform "1Rnd_SmokeRed_Grenade_shell";
_unit addItemToUniform "1Rnd_Smoke_Grenade_shell";
_unit addItemToUniform "SmokeShell";
_unit addItemToUniform "HandGrenade";
_unit addItemToUniform "SmokeShellGreen";
_unit addItemToBackpack "1Rnd_HE_Grenade_shell";

_unit addVest "V_RebreatherB";

_unit addBackpack "tf_rt1523g_black";
_unit addItemToBackpack "muzzle_snds_L";
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhsusf_mag_15Rnd_9x19_JHP";};

_unit addHeadgear "BWA3_OpsCore_Schwarz";

_unit addGoggles "G_B_Diving";

_unit addWeapon "hlc_smg_9mmar";
_unit addPrimaryWeaponItem "UK3CB_BAF_LLM_Flashlight_Black";
_unit addPrimaryWeaponItem "RH_barska_rds";
_unit addWeapon "rhsusf_weap_m9";

_unit linkItem "tf_anprc152";

[_unit, "PL"] call BWI_fnc_AddGear;
[_unit, "PL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 2 do {_unit addItemToUniform "hlc_30Rnd_9x19_B_MP5";}; 
for "_i" from 1 to 2 do {_unit addItemToBackpack "hlc_30Rnd_9x19_B_MP5";};