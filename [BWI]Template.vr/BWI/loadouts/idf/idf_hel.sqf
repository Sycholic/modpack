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

_unit forceAddUniform "tacs_Uniform_Garment_LS_ES_EP_TB";
for "_i" from 1 to 2 do {_unit addItemToUniform "B_IR_Grenade";};

_unit addVest "V_TacVest_blk";
_unit addItemToVest "SmokeShellGreen";
_unit addItemToVest "ACE_HandFlare_Red";
_unit addItemToVest "ACE_HandFlare_Green";

_unit addBackpack "B_FieldPack_blk";

_unit addHeadgear "H_PilotHelmetHeli_B";

_unit addWeapon "arifle_TRG20_F";

_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "HEL", "RI", 2016] call BWI_fnc_AddGear;
[_unit, "HEL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "30Rnd_556x45_Stanag";};