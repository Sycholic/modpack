
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

_unit forceAddUniform "rhs_uniform_FROG01_m81";
_unit addItemToUniform "ACE_MapTools";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_CableTie";};
_unit addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_green";};
_unit addVest "V_I_G_resistanceLeader_F";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellRed";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 5 do {_unit addItemToVest "30Rnd_556x45_Stanag";};
for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
_unit addBackpack "B_Carryall_khk";
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_epinephrine";};
_unit addItemToBackpack "ACE_surgicalKit";
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_personalAidKit";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_bloodIV_500";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "HandGrenade";};
_unit addHeadgear "rhsusf_ach_helmet_M81";

_unit addWeapon "RH_M16A2";
_unit addWeapon "RH_m9";
_unit addHandgunItem "RH_M6X";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "tf_microdagr";
_unit linkItem "tf_anprc152";

