// Rifleman (AT)
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "BWI_Uniform_UK_DPM";
_unit addItemToUniform "US_Facepaint";

_unit addVest "BWI_Vest_UK_DPM";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {_unit addItemToVest "RH_15Rnd_9x19_SIG";};

_unit addBackpack "B_Kitbag_rgr";
_unit addItemToBackpack "RH_SFM952V";

_unit addHeadgear "BWI_Helmet_UK_DPM";
_unit addGoggles "rhs_balaclava1_olive";

_unit addWeapon "RH_M16A4";
_unit addPrimaryWeaponItem "RH_spr_mbs";
_unit addPrimaryWeaponItem "RH_peq2";
_unit addPrimaryWeaponItem "RH_ta01nsn";
_unit addWeapon "RH_p226";
_unit addHandgunItem "RH_suppr9";
_unit addHandgunItem "RH_X300";
_unit addWeapon "tf47_at4_HP";

_unit linkItem "tf_rf7800str";
_unit linkItem "tf_microDAGR";

[_unit, "RAT", "SF", 1991] call BWI_fnc_AddGear;
[_unit, "RAT"] call BWI_fnc_AddMedical;

for "_i" from 1 to 4 do {_unit addItemToVest "30Rnd_556x45_Stanag";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "30Rnd_556x45_Stanag";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "30Rnd_556x45_Stanag_Tracer_Green";};