// Driver
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

_unit addBackpack "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A";

_unit addHeadgear "UK3CB_BAF_H_Mk7_Camo_CESS_D";

_unit addWeapon "UK3CB_BAF_L85A2_RIS";
_unit addPrimaryWeaponItem "UK3CB_BAF_SUSAT_3D";
_unit addPrimaryWeaponItem "UK3CB_BAF_LLM_IR_Black";

_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "DRV", "RI", 2013] call BWI_fnc_AddGear;
[_unit, "DRV"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "30Rnd_556x45_Stanag";}; 
for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};