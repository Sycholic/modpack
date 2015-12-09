//LOADOUTS - BWI - Rifleman
_unit = (_this select 1);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;


_unit forceAddUniform "U_I_pilotCoveralls";

_unit addVest "V_Chestrig_rgr";
_unit addItemToVest "ACE_HandFlare_Red";
_unit addItemToVest "ACE_HandFlare_Green";
for "_i" from 1 to 3 do {_unit addItemToVest "RH_15Rnd_9x19_M9";};

_unit addBackpack "B_Parachute";

_unit addHeadgear "USAF_SFS_Pilot_H_Down";

_unit addWeapon "RH_m9";

_unit linkItem "rhsusf_ANPVS_15";
_unit linkItem "tf_anprc152";

[_unit, "JET"] call BWI_fnc_AddGear;
[_unit, "JET"] call BWI_fnc_AddMedical;