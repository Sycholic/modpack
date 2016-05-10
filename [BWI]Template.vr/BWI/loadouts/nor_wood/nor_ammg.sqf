// Assistant Automatic Rifleman (MMG)
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
_unit addItemToUniform "RH_SFM952V";

_unit addVest "BWI_Vest_NOR_M98";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";

_unit addBackpack "B_Carryall_khk";

_unit addHeadgear "BWI_Helmet_NOR_M98";

_unit addWeapon "hlc_rifle_g3ka4";
_unit addPrimaryWeaponItem "RH_peq15b";
_unit addPrimaryWeaponItem "RH_compm4s";

_unit linkItem "tf_rf7800str";
_unit linkItem "tf_microDAGR";

[_unit, "AMMG", "RI", 2006] call BWI_fnc_AddGear;
[_unit, "AMMG"] call BWI_fnc_AddMedical;

_unit addItemToBackpack "BWA3_120Rnd_762x51_Tracer";
for "_i" from 1 to 4 do {_unit addItemToBackpack "BWA3_120Rnd_762x51";};
for "_i" from 1 to 6 do {_unit addItemToVest "hlc_20rnd_762x51_b_G3";}; 
for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_20rnd_762x51_T_G3";}; 