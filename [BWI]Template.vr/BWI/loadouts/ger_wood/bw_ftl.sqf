// Fireteam Leader
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

_unit addVest "BWA3_Vest_Leader_Fleck";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
_unit addItemToVest "rhs_mag_m18_green";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 3 do {_unit addItemToVest "BWA3_15Rnd_9x19_P8";};

_unit addBackpack "BWA3_FieldPack_Fleck";
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};
_unit addItemToBackpack "1Rnd_Smoke_Grenade_shell";
_unit addItemToBackpack "UGL_FlareWhite_F";

_unit addHeadgear "BWA3_MICH_Fleck";

_unit addWeapon "hlc_rifle_G36E1AG36";
_unit addPrimaryWeaponItem "HLC_Optic_G36dualoptic35x2d";
_unit addWeapon "BWA3_P8";

_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "FTL", "RI", 2010] call BWI_fnc_AddGear;
[_unit, "FTL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30rnd_556x45_EPR_G36";}; 
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30rnd_556x45_SOST_G36";};