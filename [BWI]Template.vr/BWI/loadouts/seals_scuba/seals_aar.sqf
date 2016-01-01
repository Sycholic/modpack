//LOADOUTS - BWI - Automatic Rifleman (M27)
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

_unit forceAddUniform "U_B_Wetsuit";
for "_i" from 1 to 2 do {_unit addItemToUniform "B_IR_Grenade";};

_unit addVest "V_RebreatherB";

_unit addBackpack "PMC_B_Carryall_blk";
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
_unit addItemToBackpack "SmokeShellRed";
_unit addItemToBackpack "SmokeShellGreen";
for "_i" from 1 to 3 do {_unit addItemToBackpack "RH_15Rnd_9x19_M9";};
_unit addItemToBackpack "RH_peq15b";
_unit addItemToBackpack "rhsusf_acc_nt4_black";
for "_i" from 1 to 2 do {_unit addItemToBackpack "HandGrenade";};
_unit addItemToBackpack "RH_m9qd";

_unit addHeadgear "BWA3_OpsCore_Schwarz";

_unit addGoggles "G_B_Diving";

_unit addWeapon "RH_M16A4_m";
_unit addPrimaryWeaponItem "RH_SFM952V";
_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
_unit addWeapon "RH_m9";
_unit addHandgunItem "RH_M6X";

_unit linkItem "tf_rf7800str";

[_unit, "AAR"] call BWI_fnc_AddGear;
[_unit, "AAR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToBackpack "30Rnd_556x45_Stanag";}; 
for "_i" from 1 to 3 do {_unit addItemToBackpack "30Rnd_556x45_Stanag_Tracer_Red";}; 
for "_i" from 1 to 5 do {_unit addItemToBackpack "RH_60Rnd_556x45_M855A1";}; 