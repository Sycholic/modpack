// Automatic Rifleman (MMG)
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
for "_i" from 1 to 3 do {_unit addItemToVest "RH_10Rnd_22LR_mk2";};

_afghan_backpacks = ["B_CarryAll_cbr", "B_CarryAll_khk", "B_CarryAll_oli"];
_randomBackpack = selectRandom _afghan_backpacks;
_unit addBackpack _randomBackpack;
_unit addItemToBackpack "SmokeShell";
_unit addItemToBackpack "rhs_mag_rgd5";

_afghan_turbans = ["Afghan_01Hat", "Afghan_02Hat", "Afghan_03Hat", "Afghan_04Hat", "Afghan_05Hat", "Afghan_06Hat"];
_randomTurban = selectRandom _afghan_turbans;
_unit addHeadgear _randomTurban;

if ( _randomTurban in ["Afghan_01Hat", "Afghan_02Hat", "Afghan_03Hat", "Afghan_04Hat", "Afghan_05Hat", "Afghan_06Hat"] ) then {
	_afghan_beards = ["SFG_Tac_BeardD", "SFG_Tac_BeardO", "SFG_Tac_smallBeardD", "SFG_Tac_smallBeardO"];
	_randomBeard = selectRandom _afghan_beards;
	_unit addGoggles _randomBeard;
} else {
	removeGoggles _unit;
};

_unit addWeapon "rhs_weap_pkm";
_unit addWeapon "RH_mk2";

[_unit, "MMG", "IN", 1984] call BWI_fnc_AddGear;
[_unit, "MMG"] call BWI_fnc_AddMedical;

for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_100Rnd_762x54mmR";};
_unit addItemToBackpack "rhs_100Rnd_762x54mmR_green";