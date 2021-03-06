// Squad Leader
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "BWI_Uniform_SWE_M90";
for "_i" from 1 to 2 do {_unit addItemToUniform "B_IR_Grenade";};
_unit addItemToUniform "RH_SFM952V";

_unit addVest "BWI_Vest_SWE_M90";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
_unit addItemToVest "UGL_FlareWhite_F";
for "_i" from 1 to 2 do {_unit addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
_unit addItemToVest "1Rnd_Smoke_Grenade_shell";

_unit addBackpack "B_Kitbag_sgg";
_unit addItemToBackpack "RH_peq15b";
for "_i" from 1 to 3 do {_unit addItemToBackpack "RH_17Rnd_9x19_g17";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};

_unit addHeadgear "BWI_Helmet_SWE_M90";

_unit addWeapon "hlc_rifle_osw_GL";
_unit addPrimaryWeaponItem "RH_ta31rco";
_unit addWeapon "RH_g17";

_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "SQL", "RI", 2010] call BWI_fnc_AddGear;
[_unit, "SQL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_20Rnd_762x51_B_fal";}; 
for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_20Rnd_762x51_T_fal";};