//LOADOUTS - BWI - Rifleman
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "U_PMC_IndUniformLS_YSYPTB";
for "_i" from 1 to 2 do {_unit addItemToUniform "I_IR_Grenade";};

_unit addVest "V_PlateCarrier1_PMC_coyote";
_unit addItemToVest "SmokeShellRed";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};

_unit addBackpack "B_FieldPack_cbr";
_unit addItemToBackpack "hlc_muzzle_snds_a6AUG";

_unit addHeadgear "H_PilotHelmetHeli_PMC";

_unit addWeapon "hlc_rifle_auga2para_t";
_unit addPrimaryWeaponItem "CUP_optic_MRad";
_unit addWeapon "rhsusf_weap_m9";

_unit linkItem "tf_anprc154";

[_unit, "HEL"] call BWI_fnc_AddGear;
[_unit, "HEL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_25Rnd_9x19mm_M882_AUG";}; 