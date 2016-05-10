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

_unit forceAddUniform "BWI_Uniform_USA_3CO";
_unit addItemToUniform "US_Facepaint";

_unit addVest "tacs_Vest_PlateCarrier_Black";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {_unit addItemToVest "RH_15Rnd_9x19_M9";};

_unit addBackpack "tacs_Backpack_Kitbag_DarkBlack";

_unit addHeadgear "tacs_Helmet_Ballistic_DarkBlack";
_unit addGoggles "tacs_Goggles_Black";

_unit addWeapon "hlc_rifle_M14_Rail";
_unit addPrimaryWeaponItem "RH_compM2l";
_unit addWeapon "RH_m9";
_unit addHandgunItem "RH_X300";

_unit linkItem "tf_rf7800str";
_unit linkItem "tf_microDAGR";

[_unit, "DMR", "SF", 1993] call BWI_fnc_AddGear;
[_unit, "DMR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 8 do {_unit addItemToBackpack "hlc_20Rnd_762x51_B_M14";}; 
for "_i" from 1 to 4 do {_unit addItemToBackpack "hlc_20Rnd_762x51_T_M14";};