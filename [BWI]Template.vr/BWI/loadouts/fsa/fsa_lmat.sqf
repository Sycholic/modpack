
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_fsa_uniforms = ["U_BG_leader", "rhs_chdkz_uniform_5", "rhs_chdkz_uniform_4", "rhs_chdkz_uniform_3", "rhs_chdkz_uniform_2", "rhs_chdkz_uniform_1"];
_randomUni = selectRandom _fsa_uniforms;
_unit forceAddUniform _randomUni;

_unit addVest "rhs_6sh92_headset";
for "_i" from 1 to 2 do {_unit addItemToVest "CUP_8Rnd_9x18_Makarov_M";};

_unit addBackpack "B_Carryall_oli";
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellRed";};
_unit addItemToBackpack "SmokeShellGreen";

_unit addHeadgear "rhs_6b27m_ML_ess_bala";

_unit addWeapon "rhs_weap_ak74m_npz";
_unit addPrimaryWeaponItem "UK3CB_BAF_Eotech";
_unit addWeapon "CUP_hgun_Makarov";

_unit linkItem "tf_anprc148jem";

[_unit, "LMAT", "FSA"] call BWI_fnc_AddGear;
[_unit, "LMAT", "FSA"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_545x39_B_AK";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_30Rnd_545x39_t_ak";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_rpg7_PG7VL_mag";};
