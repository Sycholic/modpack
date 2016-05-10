// Squad Leader
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_afghan_uniforms = ["U_Afghan01NH", "U_Afghan02NH", "U_Afghan03NH", "U_Afghan06NH"];
_randomUni = selectRandom _afghan_uniforms;
_unit forceAddUniform _randomUni;

_afghan_vests = ["V_BandollierB_blk", "V_BandollierB_rgr", "V_BandollierB_oli", "V_BandollierB_cbr", "V_BandollierB_khk"];
_randomVest = selectRandom _afghan_vests;
_unit addVest _randomVest;
for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_9x18_12_57N181S";};

_afghan_backpacks = ["B_FieldPack_cbr", "B_FieldPack_khk", "B_FieldPack_oli"];
_randomBackpack = selectRandom _afghan_backpacks;
_unit addBackpack _randomBackpack;
for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_VOG25";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};

_afghan_turbans = ["Afghan_01Hat", "Afghan_02Hat", "Afghan_03Hat", "Afghan_04Hat", "Afghan_05Hat", "Afghan_06Hat", "H_ShemagOpen_khk", "H_Shemag_olive", "H_ShemagOpen_tan"];
_randomTurban = selectRandom _afghan_turbans;
_unit addHeadgear _randomTurban;

if ( _randomTurban in ["Afghan_01Hat", "Afghan_02Hat", "Afghan_03Hat", "Afghan_04Hat", "Afghan_05Hat", "Afghan_06Hat"] ) then {
	_afghan_beards = ["SFG_Tac_BeardD", "SFG_Tac_BeardO", "SFG_Tac_smallBeardD", "SFG_Tac_smallBeardO"];
	_randomBeard = selectRandom _afghan_beards;
	_unit addGoggles _randomBeard;
} else {
	removeGoggles _unit;
};

_afghan_weapons = ["rhs_weap_akms_gp25", "rhs_weap_akm_gp25", "hlc_rifle_akmgl"];
_randomWeapon = selectRandom _afghan_weapons;
_unit addWeapon _randomWeapon;
_unit addWeapon "rhs_weap_makarov_pmm";

_unit linkItem "tf_anprc148jem";
_unit linkItem "ItemWatch";

[_unit, "SQL", "IN", 2001] call BWI_fnc_AddGear;
[_unit, "SQL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 4 do {_unit addItemToVest "hlc_30Rnd_762x39_b_ak";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "hlc_30Rnd_762x39_b_ak";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_30Rnd_762x39_t_ak";};