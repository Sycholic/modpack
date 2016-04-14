
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
for "_i" from 1 to 2 do {_unit addItemToUniform "B_IR_Grenade";};

_unit addVest "UK3CB_BAF_V_Osprey_Rifleman_B";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
_unit addItemToVest "rhs_mag_m18_green";
for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_mag_17Rnd_9x19_JHP";};

_unit addBackpack "UK3CB_BAF_B_Bergen_MTP_Radio_L_A";
_unit addItemToBackpack "UK3CB_BAF_Silencer_L85";
_unit addItemToBackpack "UK3CB_BAF_LLM_Flashlight_Black";

_unit addHeadgear "UK3CB_BAF_H_Mk7_Camo_B";

_unit addWeapon "UK3CB_BAF_L85A2_RIS";
_unit addPrimaryWeaponItem "UK3CB_BAF_Eotech";
_unit addWeapon "rhsusf_weap_glock17g4";

_unit linkItem "tf_anprc152";

[_unit, "RTO"] call BWI_fnc_AddGear;
[_unit, "RTO"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "30Rnd_556x45_Stanag";}; 
for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};