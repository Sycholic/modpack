// Automatic Rifleman (MMG)
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
_unit addItemToUniform "RH_SFM952V";

_unit addVest "BWI_Vest_UN_BLU";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {_unit addItemToVest "RH_17Rnd_9x19_g17";};

_unit addBackpack "B_Carryall_oli";

_unit addHeadgear "BWI_Helmet_UN_BLU";

_unit addWeapon "UK3CB_BAF_L7A2";
_unit addPrimaryWeaponItem "RH_c79";
_unit addWeapon "RH_g17";

_unit linkItem "tf_anprc154";
_unit linkItem "tf_microDAGR";

[_unit, "MMG", "RI", 2010] call BWI_fnc_AddGear;
[_unit, "MMG"] call BWI_fnc_AddMedical;

for "_i" from 1 to 3 do {_unit addItemToBackpack "UK3CB_BAF_75Rnd";};
_unit addItemToBackpack "UK3CB_BAF_75Rnd_T";