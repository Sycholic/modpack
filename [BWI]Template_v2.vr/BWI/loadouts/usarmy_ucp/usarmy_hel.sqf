
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

_unit forceAddUniform "U_B_HeliPilotCoveralls";

_unit addVest "V_HarnessO_gry";
_unit addItemToVest "SmokeShellRed";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_HandFlare_Green";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_HandFlare_Red";};
for "_i" from 1 to 3 do {_unit addItemToVest "RH_15Rnd_9x19_M9";};

_unit addBackpack "B_FieldPack_oli";
_unit addItemToBackpack "RH_peq15b";
_unit addItemToBackpack "RH_m9qd";
_unit addItemToBackpack "RH_tundra";

_unit addHeadgear "rhsusf_hgu56p";

_unit addWeapon "RH_sbr9";
_unit addPrimaryWeaponItem "optic_ACO_grn_smg";
_unit addWeapon "RH_m9";
_unit addHandgunItem "RH_M6X";

_unit linkItem "tf_anprc152";

[_unit, "HEL"] call BWI_fnc_AddGear;
[_unit, "HEL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 3 do {_unit addItemToVest "RH_32Rnd_9mm_M822";}; 