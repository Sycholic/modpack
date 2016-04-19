// Designated Marksman
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "rhs_uniform_FROG01_d";

_unit addVest "rhsusf_spc_marksman";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};

_unit addBackpack "rhsusf_assault_eagleaiii_coy";

_unit addHeadgear "rhsusf_lwh_helmet_marpatd_headset";

_unit addWeapon "hlc_rifle_m14dmr";
_unit addPrimaryWeaponItem "hlc_optic_LRT_m14";
_unit addWeapon "rhsusf_weap_m9";

_unit linkItem "tf_rf7800str";
_unit linkItem "tf_microDAGR";

[_unit, "DMR"] call BWI_fnc_AddGear;
[_unit, "DMR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 2 do {_unit addItemToVest "hlc_20Rnd_762x51_B_M14";}; 
for "_i" from 1 to 4 do {_unit addItemToBackpack "hlc_20Rnd_762x51_B_M14";}; 
for "_i" from 1 to 2 do {_unit addItemToBackpack "hlc_20Rnd_762x51_T_M14";};