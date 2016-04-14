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
for "_i" from 1 to 2 do {_unit addItemToVest "CUP_8Rnd_9x18_Makarov_M";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};

_unit addBackpack "tf_anprc155";
for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_VOG25";};
_unit addItemToBackpack "SmokeShellRed";
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};

_unit addHeadgear "rhs_6b28_green";

_unit addWeapon "rhs_weap_ak74m_gp25_npz";
_unit addPrimaryWeaponItem "UK3CB_BAF_Eotech";
_unit addWeapon "CUP_hgun_Makarov";

_unit linkItem "tf_anprc148jem";

[_unit, "PL", "FSA"] call BWI_fnc_AddGear;
[_unit, "PL", "FSA"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_545x39_B_AK";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_30Rnd_545x39_t_ak";};