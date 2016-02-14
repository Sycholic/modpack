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
for "_i" from 1 to 3 do {_unit addItemToBackpack "RH_15Rnd_9x19_M9";};
_unit addItemToBackpack "rhsusf_acc_anpeq15side";
_unit addItemToBackpack "RH_SFM952V_tan";
_unit addItemToBackpack "RH_fa762_des";
_unit addItemToBackpack "RH_m9qd";

_unit addHeadgear "BWA3_OpsCore_Schwarz";

_unit addGoggles "G_B_Diving";

_unit addWeapon "srifle_EBR_F";
_unit addPrimaryWeaponItem "optic_DMS";
_unit addWeapon "RH_m9";
_unit addHandgunItem "RH_M6X";

_unit linkItem "tf_rf7800str";

[_unit, "DMR"] call BWI_fnc_AddGear;
[_unit, "DMR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 10 do {_unit addItemToBackpack "20Rnd_762x51_Mag";}; 
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_20Rnd_762x51_Mag_Tracer_Dim";};