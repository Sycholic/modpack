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

_unit forceAddUniform "AFGH_AFG_S3";

_unit addVest "V_AFGH_6B23_CrewOfficer_bleached";

_unit addBackpack "B_FieldPack_khk";
_unit addItemToVest "rhs_mag_rdg2_black";
_unit addItemToVest "ACE_HandFlare_Red";
_unit addItemToVest "ACE_HandFlare_Green";

_unit addHeadgear "rhs_zsh7a_mike";

_unit addWeapon "hlc_rifle_aks74u";

_unit linkItem "tf_fadak";
_unit linkItem "ItemWatch";

[_unit, "HEL", "RI", 1984] call BWI_fnc_AddGear;
[_unit, "HEL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 2 do {_unit addItemToVest "hlc_30Rnd_545x39_B_AK";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "hlc_30Rnd_545x39_B_AK";};
