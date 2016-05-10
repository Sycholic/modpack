// Sniper
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "tacs_Uniform_Garment_LS_ES_EP_TB";
_unit addItemToUniform "US_Facepaint";

_unit addVest "tacs_Vest_PlateCarrier_Black";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {_unit addItemToVest "RH_15Rnd_9x19_M9";};

_unit addBackpack "tacs_Backpack_Kitbag_DarkBlack";

_unit addHeadgear "tacs_Helmet_Ballistic_DarkBlack";
_unit addGoggles "T_HoodBlkCLR";

_unit addWeapon "hlc_rifle_PSG1A1_RIS";
_unit addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4";
_unit addPrimaryWeaponItem "RH_TD_ACB_b";
_unit addWeapon "RH_m9";
_unit addHandgunItem "RH_m9qd";
_unit addHandgunItem "RH_X300";

_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "SNI", "SF", 2016] call BWI_fnc_AddGear;
[_unit, "SNI"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToBackpack "hlc_20rnd_762x51_b_G3";}; 
for "_i" from 1 to 4 do {_unit addItemToBackpack "hlc_20rnd_762x51_T_G3";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "hlc_20rnd_762x51_S_G3";};