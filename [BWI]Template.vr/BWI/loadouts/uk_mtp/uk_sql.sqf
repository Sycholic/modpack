// Squad Leader
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
for "_i" from 1 to 2 do {_unit addItemToUniform "B_IR_Grenade";};

_unit addVest "UK3CB_BAF_V_Osprey_SL_D";
for "_i" from 1 to 3 do {_unit addItemToVest "UK3CB_BAF_17Rnd_9mm";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
_unit addItemToVest "rhs_mag_m18_green";
for "_i" from 1 to 2 do {_unit addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
_unit addItemToVest "1Rnd_Smoke_Grenade_shell";
_unit addItemToVest "UGL_FlareWhite_F";

_unit addBackpack "UK3CB_BAF_B_Bergen_MTP_Rifleman_H_A";
for "_i" from 1 to 5 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};

_unit addHeadgear "UK3CB_BAF_H_Mk7_Scrim_B";

_unit addWeapon "UK3CB_BAF_L85A2_UGL";
_unit addPrimaryWeaponItem "UK3CB_BAF_TA31F_3D";
_unit addPrimaryWeaponItem "UK3CB_BAF_LLM_IR_Black";
_unit addWeapon "UK3CB_BAF_L131A1";

_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "SQL", "RI", 2013] call BWI_fnc_AddGear;
[_unit, "SQL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "30Rnd_556x45_Stanag";}; 
for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};