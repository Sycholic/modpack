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

_taliban_uniforms = ["CUP_O_TKI_Khet_Partug_01", "CUP_O_TKI_Khet_Partug_02", "CUP_O_TKI_Khet_Partug_08", "CUP_O_TKI_Khet_Partug_06"];
_randomUni = selectRandom _taliban_uniforms;
_unit forceAddUniform _randomUni;

_taliban_vests = ["CUP_V_OI_TKI_Jacket3_01", "CUP_V_OI_TKI_Jacket3_02", "CUP_V_OI_TKI_Jacket3_03", "CUP_V_OI_TKI_Jacket3_04", "CUP_V_OI_TKI_Jacket3_05", "CUP_V_OI_TKI_Jacket3_06"];
_randomVest = selectRandom _taliban_vests;
_unit addVest _randomVest;
for "_i" from 1 to 2 do {_unit addItemToVest "CUP_8Rnd_9x18_Makarov_M";};

_unit addBackpack "B_FieldPack_cbr";
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};

_taliban_turbans = ["CUP_H_TKI_Lungee_Open_01", "CUP_H_TKI_Lungee_Open_02", "CUP_H_TKI_Lungee_Open_03", "CUP_H_TKI_Lungee_Open_04", "CUP_H_TKI_Lungee_Open_05", "CUP_H_TKI_Lungee_Open_06"];
_randomTurban = selectRandom _taliban_turbans;
_unit addHeadgear _randomTurban;

_unit addGoggles "SFG_Tac_BeardD";

_unit addWeapon "rhs_weap_ak74m_npz";
_unit addWeapon "CUP_hgun_Makarov";

_unit linkItem "tf_pnr1000a";

[_unit, "RIF", "TALIBAN"] call BWI_fnc_AddGear;
[_unit, "RIF", "TALIBAN"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_545x39_B_AK";}; 
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30Rnd_545x39_t_ak";};