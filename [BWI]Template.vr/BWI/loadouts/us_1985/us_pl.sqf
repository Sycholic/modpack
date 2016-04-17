
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "rhs_uniform_FROG01_m81";
for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
_unit addItemToUniform "SmokeShellGreen";

_unit addVest "V_I_G_resistanceLeader_F";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
_unit addItemToVest "UGL_FlareWhite_F";
for "_i" from 1 to 2 do {_unit addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
_unit addItemToVest "1Rnd_Smoke_Grenade_shell";

_unit addBackpack "tf_rt1523g_green";
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhsusf_mag_15Rnd_9x19_JHP";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};

_unit addHeadgear "rhsusf_ach_helmet_M81";

_unit addWeapon "rhs_weap_m16a4_carryhandle_M203";
_unit addWeapon "rhsusf_weap_m9";

_unit linkItem "tf_anprc152";

[_unit, "PL", "RI", 1985] call BWI_fnc_AddGear;
[_unit, "PL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "30Rnd_556x45_Stanag";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "30Rnd_556x45_Stanag_Tracer_Red";};