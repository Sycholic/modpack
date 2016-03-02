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

_unit addVest "V_RebreatherB";

_unit addBackpack "PMC_B_Carryall_blk";
for "_i" from 1 to 2 do {_unit addItemToBackpack "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
_unit addItemToBackpack "SmokeShellRed";
_unit addItemToBackpack "SmokeShellGreen";
_unit addItemToBackpack "UGL_FlareWhite_F";
for "_i" from 1 to 4 do {_unit addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
_unit addItemToBackpack "1Rnd_Smoke_Grenade_shell";
_unit addItemToBackpack "UK3CB_BAF_LLM_IR_Black";
_unit addItemToBackpack "muzzle_snds_L";
for "_i" from 1 to 3 do {_unit addItemToBackpack "rhsusf_mag_15Rnd_9x19_JHP";};
for "_i" from 1 to 9 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};

_unit addHeadgear "BWA3_OpsCore_Schwarz";

_unit addGoggles "G_B_Diving";

_unit addWeapon "hlc_smg_9mmar";
_unit addPrimaryWeaponItem "UK3CB_BAF_LLM_Flashlight_Black";
_unit addPrimaryWeaponItem "CUP_optic_MRad";
_unit addWeapon "rhsusf_weap_m9";

_unit linkItem "tf_anprc152";

[_unit, "SQL"] call BWI_fnc_AddGear;
[_unit, "SQL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToBackpack "hlc_30Rnd_9x19_B_MP5";}; 
for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_30Rnd_9x19_B_MP5";};