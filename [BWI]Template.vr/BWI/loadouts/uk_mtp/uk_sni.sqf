// Sniper
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "UK3CB_BAF_U_CombatUniform_MTP";

_unit addVest "UK3CB_BAF_V_Osprey_Marksman_A";
for "_i" from 1 to 3 do {_unit addItemToVest "UK3CB_BAF_17Rnd_9mm";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
_unit addItemToVest "rhs_mag_m18_green";

_unit addBackpack "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A";
_unit addItemToBackpack "UK3CB_BAF_Silencer_L115A3";

_unit addHeadgear "UK3CB_BAF_H_Mk7_Scrim_C";

_unit addWeapon "hlc_rifle_awmagnum_FDE";
_unit addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4_2";
_unit addWeapon "UK3CB_BAF_L131A1";

_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "SNI", "RI", 2013] call BWI_fnc_AddGear;
[_unit, "SNI"] call BWI_fnc_AddMedical;

_unit addItemToVest "hlc_5rnd_300WM_AP_AWM"; 
for "_i" from 1 to 2 do {_unit addItemToVest "hlc_5rnd_300WM_FMJ_AWM";}; 
for "_i" from 1 to 5 do {_unit addItemToBackpack "hlc_5rnd_300WM_FMJ_AWM";}; 
for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_5rnd_300WM_AP_AWM";}; 