// Combat Engineer
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

_unit addBackpack "tacs_Backpack_Carryall_DarkBlack";

_unit addHeadgear "tacs_Helmet_Ballistic_DarkBlack";
_unit addGoggles "T_HoodBlkCLR";

_unit addWeapon "rhs_weap_M590_5RD";
_unit addWeapon "RH_m9";
_unit addHandgunItem "RH_m9qd";
_unit addHandgunItem "RH_X300";

_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "ENG", "SF", 2016] call BWI_fnc_AddGear;
[_unit, "ENG"] call BWI_fnc_AddMedical;

for "_i" from 1 to 5 do {_unit addItemToVest "rhsusf_5Rnd_00Buck";}; 
for "_i" from 1 to 5 do {_unit addItemToVest "rhsusf_5Rnd_Slug";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_5Rnd_doomsday_Buck";};