
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
for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_15Rnd_9x19_P8";};

_unit addBackpack "BWA3_Kitbag_Tropen";
_unit addItemToBackpack "acc_flashlight";
_unit addItemToBackpack "rhs_fgm148_magazine_AT";

_unit addHeadgear "BWA3_MICH_Tropen";

_unit addWeapon "BWA3_G36K";
_unit addPrimaryWeaponItem "acc_pointer_IR";
_unit addPrimaryWeaponItem "BWA3_optic_RSAS";
_unit addWeapon "BWA3_P8";

_unit linkItem "tf_rf7800str";

[_unit, "AHAT"] call BWI_fnc_AddGear;
[_unit, "AHAT"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "BWA3_30Rnd_556x45_G36";}; 
for "_i" from 1 to 3 do {_unit addItemToVest "BWA3_30Rnd_556x45_G36_Tracer";};