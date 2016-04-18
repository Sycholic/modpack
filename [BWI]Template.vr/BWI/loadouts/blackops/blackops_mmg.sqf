//LOADOUTS - BWI - AAR (M27)

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

_unit addVest "V_PlateCarrier1_PMC_blk";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};

_unit addBackpack "PMC_B_Carryall_blk";
_unit addItemToBackpack "rhsusf_acc_nt4_black";

_unit addHeadgear "BWA3_OpsCore_Schwarz_Camera";
_unit addGoggles "PU_shemagh_GryCLR";

_unit addWeapon "rhs_weap_m240B_CAP";
_unit addPrimaryWeaponItem "rhsusf_acc_ELCAN";
_unit addWeapon "rhsusf_weap_m9";

_unit linkItem "tf_rf7800str";

[_unit, "MMG"] call BWI_fnc_AddGear;
[_unit, "MMG"] call BWI_fnc_AddMedical;

for "_i" from 1 to 3 do {_unit addItemToBackpack "rhsusf_100Rnd_762x51";};
_unit addItemToBackpack "rhsusf_100Rnd_762x51_m62_tracer";