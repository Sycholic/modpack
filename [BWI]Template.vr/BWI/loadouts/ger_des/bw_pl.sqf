
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
for "_i" from 1 to 2 do {_unit addItemToUniform "B_IR_Grenade";};

_unit addVest "BWA3_Vest_Leader_Tropen";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
_unit addItemToVest "rhs_mag_m18_green";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_15Rnd_9x19_P8";};

_unit addBackpack "tf_rt1523g_big_bwmod_tropen";
_unit addItemToBackpack "acc_flashlight";
for "_i" from 1 to 4 do {_unit addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 9 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};
_unit addItemToBackpack "1Rnd_Smoke_Grenade_shell";
_unit addItemToBackpack "UGL_FlareWhite_F";

_unit addHeadgear "BWA3_MICH_Tropen";

_unit addWeapon "BWA3_G36K_AG";
_unit addPrimaryWeaponItem "acc_pointer_IR";
_unit addPrimaryWeaponItem "BWA3_optic_ZO4x30";
_unit addWeapon "BWA3_P8";

_unit linkItem "tf_anprc152";

[_unit, "PL"] call BWI_fnc_AddGear;
[_unit, "PL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "BWA3_30Rnd_556x45_G36";}; 
for "_i" from 1 to 3 do {_unit addItemToVest "BWA3_30Rnd_556x45_G36_Tracer";};