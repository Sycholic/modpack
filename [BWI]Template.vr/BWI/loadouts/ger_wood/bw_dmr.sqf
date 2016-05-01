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

_unit forceAddUniform "BWA3_Uniform_Fleck";

_unit addVest "BWA3_Vest_Marksman_Fleck";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
_unit addItemToVest "rhs_mag_m18_green";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 3 do {_unit addItemToVest "BWA3_15Rnd_9x19_P8";};

_unit addBackpack "BWA3_FieldPack_Fleck";

_unit addHeadgear "BWA3_MICH_Fleck";

_unit addWeapon "BWA3_G27";
_unit addPrimaryWeaponItem "RH_ta648";
_unit addWeapon "BWA3_P8";

_unit linkItem "tf_rf7800str";
_unit linkItem "tf_microDAGR";

[_unit, "DMR", "RI", 2010] call BWI_fnc_AddGear;
[_unit, "DMR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "BWA3_20Rnd_762x51_G28";}; 
for "_i" from 1 to 2 do {_unit addItemToBackpack "BWA3_20Rnd_762x51_G28_Tracer";};
for "_i" from 1 to 1 do {_unit addItemToBackpack "BWA3_20Rnd_762x51_G28_Tracer_Dim";};