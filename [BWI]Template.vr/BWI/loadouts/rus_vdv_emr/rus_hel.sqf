// Rotary Pilot
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "rhs_uniform_df15";
for "_i" from 1 to 2 do {_unit addItemToUniform "O_IR_Grenade";};

_unit addVest "tacs_Vest_Tactical_DarkBlack";

_unit addBackpack "B_FieldPack_blk";
_unit addItemToVest "SmokeShellGreen";
_unit addItemToVest "ACE_HandFlare_Red";
_unit addItemToVest "ACE_HandFlare_Green";

_unit addHeadgear "rhs_zsh7a_mike";

_unit addWeapon "hlc_rifle_aku12";

_unit linkItem "tf_fadak";
_unit linkItem "ItemWatch";

[_unit, "HEL", "RI", 2018] call BWI_fnc_AddGear;
[_unit, "HEL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 2 do {_unit addItemToVest "hlc_30Rnd_545x39_B_AK";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "hlc_30Rnd_545x39_B_AK";};
