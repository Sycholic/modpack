//LOADOUTS - BWI - AAR (M27)

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

_unit forceAddUniform "U_PMC_IndUniformLS_BSBPBB";

_unit addVest "V_PlateCarrier1_PMC_blk";
_unit addItemToVest "SmokeShellRed";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {_unit addItemToVest "RH_15Rnd_9x19_M9";};

_unit addBackpack "PMC_B_Kitbag_blk";
_unit addItemToBackpack "RH_m9qd";
_unit addItemToBackpack "RH_qdss_nt4";

_unit addHeadgear "BWA3_CrewmanKSK_Schwarz_Headset";
_unit addGoggles "PU_shemagh_GryCLR";

_unit addWeapon "hlc_m249_pip1";
_unit addPrimaryWeaponItem "RH_c79";
_unit addWeapon "RH_m9";
_unit addHandgunItem "RH_M6X";

_unit linkItem "tf_rf7800str";
_unit linkItem "ACE_Altimeter";

[_unit, "AR"] call BWI_fnc_AddGear;
[_unit, "AR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_200rnd_556x45_M_SAW";};
_unit addItemToBackpack "hlc_200rnd_556x45_T_SAW";