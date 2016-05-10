// Combat First Responder
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "BWI_Uniform_DEN_M11";
_unit addItemToUniform "RH_SFM952V";

_unit addVest "BWI_Vest_DEN_M11";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {_unit addItemToVest "RH_15Rnd_9x19_SIG";};

_unit addBackpack "B_Kitbag_mcamo";

_unit addHeadgear "BWI_Helmet_DEN_M11";

_unit addWeapon "RH_M4A1_ris";
_unit addPrimaryWeaponItem "RH_peq15b";
_unit addPrimaryWeaponItem "RH_c79";
_unit addWeapon "RH_p226";

_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "CFR", "RI", 2015] call BWI_fnc_AddGear;
[_unit, "CFR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "30Rnd_556x45_Stanag";}; 
for "_i" from 1 to 3 do {_unit addItemToBackpack "30Rnd_556x45_Stanag_Tracer_Red";}; 