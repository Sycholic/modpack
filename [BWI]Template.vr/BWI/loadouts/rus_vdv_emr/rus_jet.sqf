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

_unit forceAddUniform "rhs_uniform_df15";
for "_i" from 1 to 2 do {_unit addItemToUniform "O_IR_Grenade";};

_unit addVest "tacs_Vest_Tactical_DarkBlack";
_unit addItemToVest "ACE_HandFlare_Red";
_unit addItemToVest "ACE_HandFlare_Green";
for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_9x19_17";};

_unit addBackpack "B_Parachute";

_unit addHeadgear "rhs_zsh7a";

_unit addWeapon "rhs_weap_pya";

_unit linkItem "rhsusf_ANPVS_15";
_unit linkItem "tf_fadak";
_unit linkItem "ItemWatch";

[_unit, "JET", "RI", 2018] call BWI_fnc_AddGear;
[_unit, "JET"] call BWI_fnc_AddMedical;