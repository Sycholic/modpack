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

_unit forceAddUniform "BWA3_Uniform_Tropen";

_unit addVest "BWA3_Vest_Autorifleman_Tropen";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
_unit addItemToVest "rhs_mag_m18_green";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};

_unit addBackpack "BWA3_Kitbag_Tropen";

_unit addHeadgear "BWA3_MICH_Tropen";

_unit addWeapon "hlc_rifle_G36E1";
_unit addPrimaryWeaponItem "HLC_Optic_G36Dualoptic15x2d";

_unit linkItem "tf_rf7800str";
_unit linkItem "tf_microDAGR";

[_unit, "AAR", "RI", 2010] call BWI_fnc_AddGear;
[_unit, "AAR"] call BWI_fnc_AddMedical;

_unit addItemToBackpack "BWA3_120Rnd_762x51_Tracer";
for "_i" from 1 to 3 do {_unit addItemToBackpack "BWA3_120Rnd_762x51";};
for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30rnd_556x45_EPR_G36";}; 
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30rnd_556x45_SOST_G36";};