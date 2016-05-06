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

_unit forceAddUniform "BWI_Uniform_FIN_M05M";
for "_i" from 1 to 2 do {_unit addItemToUniform "B_IR_Grenade";};

_unit addVest "BWI_Vest_FIN_M05M";
for "_i" from 1 to 4 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 4 do {_unit addItemToVest "SmokeShell";};

_unit addBackpack "B_Kitbag_rgr";
for "_i" from 1 to 3 do {_unit addItemToBackpack "RH_17Rnd_9x19_g17";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellGreen";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellRed";};

_unit addHeadgear "BWI_Helmet_FIN_M05M";

_unit addWeapon "hlc_rifle_RK62";
_unit addWeapon "RH_g17";

_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "SQL", "RI", 2008] call BWI_fnc_AddGear;
[_unit, "SQL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_762x39_b_ak";}; 
for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_30Rnd_762x39_t_ak";};