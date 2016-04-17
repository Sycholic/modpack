//LOADOUTS - BWI - SQL/FTL
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "rhs_uniform_flora_patchless";
for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};

_unit addVest "V_TacVestIR_blk";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_9x18_12_57N181S";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};

_unit addBackpack "B_FieldPack_oli";
for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_VOG25";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};

_unit addHeadgear "rhs_6b28_green";

_unit addWeapon "rhs_weap_ak74m_gp25_npz";
_unit addPrimaryWeaponItem "UK3CB_BAF_Eotech";
_unit addWeapon "rhs_weap_makarov_pmm";

_unit linkItem "tf_anprc148jem";

[_unit, "FTL", "IN", 2011] call BWI_fnc_AddGear;
[_unit, "FTL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_545x39_B_AK";}; 
for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_30Rnd_545x39_t_ak";};