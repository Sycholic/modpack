
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve";

_unit addVest "UK3CB_BAF_V_Osprey_MG_B";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
_unit addItemToVest "rhs_mag_m18_green";
for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_mag_17Rnd_9x19_JHP";};

_unit addBackpack "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A";

_unit addHeadgear "UK3CB_BAF_H_Mk7_Camo_CESS_D";

_unit addWeapon "UK3CB_BAF_L110A2";
_unit addPrimaryWeaponItem "UK3CB_BAF_LLM_IR_Black";
_unit addPrimaryWeaponItem "UK3CB_BAF_SpecterLDS_3D";
_unit addWeapon "rhsusf_weap_glock17g4";
_unit addWeapon "Binocular";

_unit linkItem "tf_rf7800str";

[_unit, "AR"] call BWI_fnc_AddGear;
[_unit, "AR"] call BWI_fnc_AddMedical;

_unit addItemToBackpack "UK3CB_BAF_200Rnd_T";
for "_i" from 1 to 2 do {_unit addItemToVest "UK3CB_BAF_200Rnd";};
_unit addItemToBackpack "UK3CB_BAF_200Rnd";