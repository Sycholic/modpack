
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "BWA3_Uniform_Crew_Tropen";
for "_i" from 1 to 2 do {_unit addItemToUniform "B_IR_Grenade";};

_unit addVest "LOP_V_6B23_6Sh92_UN";
for "_i" from 1 to 2 do {_unit addItemToVest "RH_12Rnd_45cal_usp";};

_unit addBackpack "BWA3_AssaultPack_Tropen";
_unit addItemToBackpack "acc_flashlight";
_unit addItemToBackpack "BWA3_muzzle_snds_G36";
_unit addItemToBackpack "RH_gemtech45";
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_an_m8hc";};
_unit addItemToBackpack "rhs_mag_m18_green";
_unit addItemToBackpack "rhs_mag_m18_red";
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m67";};

_unit addHeadgear "BWA3_CrewmanKSK_Tropen_Headset";

_unit addWeapon "BWA3_G36K";
_unit addPrimaryWeaponItem "acc_pointer_IR";
_unit addPrimaryWeaponItem "BWA3_optic_RSAS";
_unit addWeapon "RH_usp";
_unit addHandgunItem "RH_X300";

_unit linkItem "tf_anprc152";

[_unit, "ARM"] call BWI_fnc_AddGear;
[_unit, "ARM"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "BWA3_30Rnd_556x45_G36";}; 
for "_i" from 1 to 3 do {_unit addItemToVest "BWA3_30Rnd_556x45_G36_Tracer";};