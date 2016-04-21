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

_syrian_uniforms = ["rhs_chdkz_uniform_5", "rhs_chdkz_uniform_4", "rhs_chdkz_uniform_3", "rhs_chdkz_uniform_2","rhs_chdkz_uniform_1", "tacs_Uniform_TShirt_JP_GS_LP_BB", "tacs_Uniform_TShirt_JP_BS_LP_BB", "tacs_Uniform_Polo_TP_TS_GP_BB"];
_randomUni = selectRandom _syrian_uniforms;
_unit forceAddUniform _randomUni;

_syrian_vests = ["V_TacVest_camo", "V_TacVest_oli", "V_TacVest_khk", "V_I_G_resistanceLeader_F", "rhs_vydra_3m"];
_randomVest = selectRandom _syrian_vests;
_unit addVest _randomVest;

_syrian_backpacks = ["B_FieldPack_cbr", "B_FieldPack_khk", "B_FieldPack_oli"];
_randomBackpack = selectRandom _syrian_backpacks;
_unit addBackpack _randomBackpack;
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};

_syrian_hats = ["rhs_6b28_green", "rhs_6b27m_green", "H_ShemagOpen_khk", "H_Shemag_olive", "H_ShemagOpen_tan"];
_randomHat = selectRandom _syrian_hats;
_unit addHeadgear _randomHat;

if ( _randomHat in ["rhs_6b28_green", "rhs_6b27m_green"] ) then {
	_syrian_beards = ["NONE", "SFG_Tac_BeardD", "SFG_Tac_BeardO", "SFG_Tac_smallBeardD", "SFG_Tac_smallBeardO"];
	_randomBeard = selectRandom _syrian_beards;
	
	if ( _randomBeard != "NONE") then {
		_unit addGoggles _randomBeard;
	};
} else {
	removeGoggles _unit;
};

_syrian_weapons = ["rhs_weap_akms", "rhs_weap_akm", "hlc_rifle_akm", "hlc_rifle_ak47"];
_randomWeapon = selectRandom _syrian_weapons;
_unit addWeapon _randomWeapon;

_unit linkItem "tf_anprc154";
_unit linkItem "tf_microDAGR";

[_unit, "RIF", "IR", 2011] call BWI_fnc_AddGear;
[_unit, "RIF"] call BWI_fnc_AddMedical;

for "_i" from 1 to 4 do {_unit addItemToVest "hlc_30Rnd_762x39_b_ak";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "hlc_30Rnd_762x39_b_ak";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_30Rnd_762x39_t_ak";};