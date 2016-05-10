// Vehicle Crew
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

_unit addVest "BWI_Vest_SWE_M90K";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};

_unit addBackpack "B_FieldPack_oli";

_unit addHeadgear "rhsusf_cvc_helmet";

_unit addWeapon "hlc_smg_mp5a3";

_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "ARM", "RI", 2010] call BWI_fnc_AddGear;
[_unit, "ARM"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_9x19_B_MP5";};