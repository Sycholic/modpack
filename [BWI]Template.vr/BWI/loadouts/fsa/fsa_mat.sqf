
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
for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};

_unit addVest "rhs_6sh92_headset";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};

_unit addBackpack "B_Kitbag_mcamo";
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_rpg7_PG7VL_mag";};

_unit addHeadgear "H_Shemag_olive";

_unit addWeapon "rhs_weap_ak74m_npz";
_unit addWeapon "rhs_weap_rpg7";
_unit addSecondaryWeaponItem "rhs_acc_pgo7v";

_unit linkItem "tf_anprc154";

[_unit, "MAT", "IN", 2011] call BWI_fnc_AddGear;
[_unit, "MAT"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_545x39_B_AK";}; 
for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_30Rnd_545x39_t_ak";};
