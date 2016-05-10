// Fixed-Wing Pilot
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "tacs_Uniform_Garment_RS_ES_EP_TB";

_unit addVest "V_TacVest_blk";
_unit addItemToVest "ACE_HandFlare_Red";
_unit addItemToVest "ACE_HandFlare_Green";
for "_i" from 1 to 3 do {_unit addItemToVest "RH_8Rnd_9x18_Mak";};

_unit addBackpack "B_Parachute";

_unit addHeadgear "rhs_zsh7a";

_unit addWeapon "RH_mak";

_unit linkItem "ACE_NVG_Gen1";
_unit linkItem "tf_fadak";
_unit linkItem "ItemWatch";

[_unit, "JET", "RI", 1984] call BWI_fnc_AddGear;
[_unit, "JET"] call BWI_fnc_AddMedical;