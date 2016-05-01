// Automatic Rifleman
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "BWI_Uniform_NOR_M98";

_unit addVest "BWI_Vest_NOR_M98";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {_unit addItemToVest "RH_17Rnd_9x19_g17";};

_unit addBackpack "B_Carryall_khk";

_unit addHeadgear "BWI_Helmet_NOR_M98";

_unit addWeapon "hlc_lmg_minimi_railed";
_unit addPrimaryWeaponItem "RH_c79";
_unit addWeapon "RH_g17";

_unit linkItem "tf_rf7800str";
_unit linkItem "tf_microDAGR";

[_unit, "AR", "RI", 2006] call BWI_fnc_AddGear;
[_unit, "AR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_200rnd_556x45_M_SAW";};
_unit addItemToBackpack "hlc_200rnd_556x45_T_SAW";