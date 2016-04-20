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

_unit forceAddUniform "UK3CB_BAF_U_HeliPilotCoveralls_RAF";
for "_i" from 1 to 2 do {_unit addItemToUniform "B_IR_Grenade";};

_unit addVest "V_TacVest_oli";
_unit addItemToVest "ACE_HandFlare_Red";
_unit addItemToVest "ACE_HandFlare_Green";
for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};

_unit addBackpack "B_Parachute";

_unit addHeadgear "UK3CB_BAF_H_PilotHelmetHeli_A";

_unit addWeapon "UK3CB_BAF_L131A1";

_unit linkItem "rhsusf_ANPVS_15";
_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "JET", "RI", 2013] call BWI_fnc_AddGear;
[_unit, "JET"] call BWI_fnc_AddMedical;