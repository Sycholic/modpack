// Designated Marksman
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

_unit addHeadgear "UK3CB_BAF_H_Mk7_Scrim_B";

_unit addWeapon "UK3CB_BAF_L129A1_AFG";
_unit addPrimaryWeaponItem "UK3CB_BAF_LLM_IR_Black";
_unit addPrimaryWeaponItem "optic_SOS";
_unit addWeapon "UK3CB_BAF_L131A1";

_unit linkItem "tf_rf7800str";
_unit linkItem "tf_microDAGR";

[_unit, "DMR", "RI", 2013] call BWI_fnc_AddGear;
[_unit, "DMR"] call BWI_fnc_AddMedical;

_unit addItemToVest "UK3CB_BAF_20Rnd_T";
for "_i" from 1 to 2 do {_unit addItemToVest "UK3CB_BAF_20Rnd";}; 
for "_i" from 1 to 6 do {_unit addItemToBackpack "UK3CB_BAF_20Rnd";}; 
for "_i" from 1 to 3 do {_unit addItemToBackpack "UK3CB_BAF_20Rnd_T";};