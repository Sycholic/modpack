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

_unit forceAddUniform "U_B_Wetsuit";
for "_i" from 1 to 2 do {_unit addItemToUniform "B_IR_Grenade";};

_unit addVest "V_RebreatherB";

_unit addBackpack "PMC_B_Carryall_blk";
_unit addItemToBackpack "SmokeShellRed";
_unit addItemToBackpack "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "HandGrenade";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "rhsusf_mag_15Rnd_9x19_JHP";};
_unit addItemToBackpack "muzzle_snds_L";

_unit addHeadgear "BWA3_OpsCore_Schwarz";

_unit addGoggles "G_B_Diving";

_unit addWeapon "hlc_smg_MP5N";
_unit addPrimaryWeaponItem "UK3CB_BAF_LLM_Flashlight_Black";
_unit addPrimaryWeaponItem "RH_barska_rds";
_unit addWeapon "rhsusf_weap_m9";

_unit linkItem "tf_rf7800str";

[_unit, "RIF", "SF", 2011] call BWI_fnc_AddGear;
[_unit, "RIF"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToBackpack "hlc_30Rnd_9x19_B_MP5";}; 
for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_30Rnd_9x19_B_MP5";};