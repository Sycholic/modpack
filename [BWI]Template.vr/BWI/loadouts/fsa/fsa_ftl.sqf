//LOADOUTS - BWI - SQL/FTL
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

_unit forceAddUniform "rhs_uniform_flora_patchless";

_unit addVest "V_TacVestIR_blk";
for "_i" from 1 to 2 do {_unit addItemToVest "RH_8Rnd_9x18_Mak";};

_unit addBackpack "B_FieldPack_oli";
for "_i" from 1 to 10 do {_unit addItemToBackpack "rhs_VOG25";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};

_unit addHeadgear "rhs_6b28_green";

_unit addWeapon "rhs_weap_ak74m_gp25_npz";
_unit addPrimaryWeaponItem "RH_barska_rds";
_unit addWeapon "RH_mak";

_unit linkItem "tf_anprc148jem";

[_unit, "FTL", "FSA"] call BWI_fnc_AddGear;
[_unit, "FTL", "FSA"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_545x39_B_AK";}; 
for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_30Rnd_545x39_t_ak";};