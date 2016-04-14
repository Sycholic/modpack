
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "UK3CB_BAF_U_HeliPilotCoveralls_RN";
for "_i" from 1 to 2 do {_unit addItemToUniform "B_IR_Grenade";};

_unit addVest "V_TacVest_blk";
_unit addItemToVest "rhs_mag_m18_green";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_HandFlare_Green";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_HandFlare_Red";};
for "_i" from 1 to 3 do {_unit addItemToVest "BWA3_15Rnd_9x19_P8";};

_unit addBackpack "B_FieldPack_oli";
_unit addItemToBackpack "hlc_muzzle_Tundra";

_unit addHeadgear "rhsusf_hgu56p";

_unit addWeapon "hlc_smg_MP5N";
_unit addPrimaryWeaponItem "UK3CB_BAF_LLM_Flashlight_Black";
_unit addPrimaryWeaponItem "CUP_optic_MRad";
_unit addWeapon "BWA3_P8";

_unit linkItem "tf_anprc152";

[_unit, "HEL"] call BWI_fnc_AddGear;
[_unit, "HEL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30Rnd_9x19_B_MP5";}; 