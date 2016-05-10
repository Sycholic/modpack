// Automatic Rifleman (MMG)
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
for "_i" from 1 to 3 do {_unit addItemToUniform "rhsusf_mag_7x45acp_MHP";};

_unit addVest "V_I_G_resistanceLeader_F";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";

_unit addBackpack "B_Carryall_oli";

_unit addHeadgear "rhsusf_ach_helmet_M81";

_unit addWeapon "hlc_lmg_m60";
_unit addWeapon "rhsusf_weap_m1911a1";

_unit linkItem "tf_rf7800str";
_unit linkItem "tf_microDAGR";

[_unit, "MMG", "RI", 1986] call BWI_fnc_AddGear;
[_unit, "MMG"] call BWI_fnc_AddMedical;

for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_100Rnd_762x51_B_M60E4";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "hlc_100Rnd_762x51_M_M60E4";};
_unit addItemToBackpack "hlc_100Rnd_762x51_T_M60E4";