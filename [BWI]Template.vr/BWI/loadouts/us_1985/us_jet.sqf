// Fixed Wing Pilot
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "tacs_Uniform_Garment_LS_GS_GP_BB";
for "_i" from 1 to 3 do {_unit addItemToUniform "rhsusf_mag_7x45acp_MHP";};

_unit addVest "V_TacVest_oli";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_HandFlare_Red";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_HandFlare_Green";};

_unit addBackpack "B_Parachute";

_unit addHeadgear "UK3CB_BAF_H_PilotHelmetHeli_A";

_unit addWeapon "rhsusf_weap_m1911a1";

_unit linkItem "ACE_NVG_Gen2";
_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "JET", "RI", 2008] call BWI_fnc_AddGear;
[_unit, "JET"] call BWI_fnc_AddMedical;