//LOADOUTS - BWI - Rifleman (AT)
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_taliban_uniforms = ["U_Afghan01NH", "U_Afghan02NH", "U_Afghan03NH", "U_Afghan06NH"];
_randomUni = selectRandom _taliban_uniforms;
_unit forceAddUniform _randomUni;

_taliban_vests = ["V_BandollierB_blk", "V_BandollierB_rgr", "V_BandollierB_oli", "V_BandollierB_cbr", "V_BandollierB_khk", "rhs_vydra_3m"];
_randomVest = selectRandom _taliban_vests;
_unit addVest _randomVest;

_unit addBackpack "B_Kitbag_cbr";
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_rpg7_PG7VL_mag";};

_taliban_turbans = ["Afghan_01Hat", "Afghan_02Hat", "Afghan_03Hat", "Afghan_04Hat", "Afghan_05Hat", "Afghan_06Hat"];
_randomTurban = selectRandom _taliban_turbans;
_unit addHeadgear _randomTurban;

_unit addGoggles "SFG_Tac_BeardD";

_unit addWeapon "rhs_weap_ak74m_npz";
_unit addWeapon "rhs_weap_rpg7";

_unit linkItem "tf_pnr1000a";

[_unit, "MAT", "IN", 2001] call BWI_fnc_AddGear;
[_unit, "MAT"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_545x39_B_AK";}; 
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30Rnd_545x39_t_ak";};