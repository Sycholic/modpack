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

_unit forceAddUniform "BWI_Uniform_FIN_M05L";

_unit addVest "BWI_Vest_FIN_M05L";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";

_unit addBackpack "B_AssaultPack_rgr";

_unit addHeadgear "BWI_Helmet_FIN_M05L";

_unit addWeapon "hlc_rifle_RK62";
_unit addWeapon "UK3CB_BAF_NLAW_Launcher";

_unit linkItem "tf_rf7800str";
_unit linkItem "tf_microDAGR";

[_unit, "RAT", "RI", 2008] call BWI_fnc_AddGear;
[_unit, "RAT"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_762x39_b_ak";}; 
for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_30Rnd_762x39_t_ak";};