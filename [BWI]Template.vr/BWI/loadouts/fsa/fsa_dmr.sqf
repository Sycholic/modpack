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

_unit addBackpack "B_FieldPack_oli";
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};

_unit addHeadgear "H_Shemag_olive";

_unit addWeapon "rhs_weap_svdp";
_unit addPrimaryWeaponItem "rhs_acc_pso1m2";
_unit addWeapon "CUP_hgun_Makarov";

_unit linkItem "tf_anprc154";

[_unit, "DMR", "FSA"] call BWI_fnc_AddGear;
[_unit, "DMR", "FSA"] call BWI_fnc_AddMedical;

for "_i" from 1 to 15 do {_unit addItemToVest "rhs_10Rnd_762x54mmR_7N1";};
