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

_unit forceAddUniform "BWI_Uniform_SWE_M90K";
_unit addItemToUniform "RH_SFM952V";

_unit addVest "BWI_Vest_SWE_M90K";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {_unit addItemToVest "RH_17Rnd_9x19_g17";};

_unit addBackpack "B_Kitbag_cbr";
_unit addItemToBackpack "RH_peq15b";

_unit addHeadgear "BWI_Helmet_SWE_M90K";

_unit addWeapon "hlc_rifle_falosw";
_unit addPrimaryWeaponItem "RH_compM2l";
_unit addWeapon "RH_g17";

_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "CFR", "RI", 2010] call BWI_fnc_AddGear;
[_unit, "CFR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_20Rnd_762x51_B_fal";}; 
for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_20Rnd_762x51_T_fal";}; 