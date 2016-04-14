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

_unit forceAddUniform "U_O_GhillieSuit";

_unit addVest "rhsusf_spc_marksman";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};

_unit addBackpack "B_Carryall_khk";
_unit addItemToBackpack "rhsusf_acc_M2010S";

_unit addHeadgear "rhsusf_mich_helmet_marpatwd_norotos";

_unit addWeapon "rhs_weap_XM2010_d";
_unit addPrimaryWeaponItem "UK3CB_BAF_LLM_IR_Black";
_unit addPrimaryWeaponItem "UK3CB_BAF_SB31250_Desert";
_unit addPrimaryWeaponItem "bipod_02_F_hex";
_unit addWeapon "rhsusf_weap_m9";

_unit linkItem "tf_anprc152";

[_unit, "SNI"] call BWI_fnc_AddGear;
[_unit, "SNI"] call BWI_fnc_AddMedical;

for "_i" from 1 to 18 do {_unit addItemToBackpack "rhsusf_5Rnd_300winmag_xm2010";}; 
for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_5Rnd_300winmag_xm2010";}; 