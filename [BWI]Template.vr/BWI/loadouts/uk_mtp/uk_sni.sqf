
_unit = (_this select 1);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

_unit forceAddUniform "U_B_GhillieSuit";

_unit addVest "UK3CB_BAF_V_Osprey_Belt_A";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
_unit addItemToVest "rhs_mag_m18_green";
_unit addItemToVest "rhs_mag_m18_red";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {_unit addItemToVest "RH_12Rnd_45cal_usp";};

_unit addBackpack "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A";
_unit addItemToBackpack "UK3CB_BAF_Silencer_L115A3";
_unit addItemToBackpack "RH_gemtech45";

_unit addHeadgear "UK3CB_BAF_H_Mk7_Camo_CESS_D";

_unit addWeapon "UK3CB_BAF_L115A3_Ghillie";
_unit addPrimaryWeaponItem "UK3CB_BAF_SB31250_Ghillie";
_unit addWeapon "RH_usp";
_unit addHandgunItem "RH_X300";

_unit linkItem "tf_anprc152";

[_unit, "SNI"] call BWI_fnc_AddGear;
[_unit, "SNI"] call BWI_fnc_AddMedical;

for "_i" from 1 to 20 do {_unit addItemToBackpack "UK3CB_BAF_L115A3_Mag";}; 