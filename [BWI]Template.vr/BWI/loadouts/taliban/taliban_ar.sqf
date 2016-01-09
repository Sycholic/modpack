//LOADOUTS - BWI - AAR (M27)
_unit = (_this select 1);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

_taliban_uniforms = ["LOP_U_AM_Fatigue_01", "LOP_U_AM_Fatigue_02", "LOP_U_AM_Fatigue_03", "LOP_U_AM_Fatigue_04"];
_randomUni = _taliban_uniforms select floor random count _taliban_uniforms;
_unit forceAddUniform _randomUni;

_unit addVest "LOP_6sh46";
for "_i" from 1 to 2 do {_unit addItemToVest "RH_8Rnd_9x18_Mak";};

_unit addBackpack "B_FieldPack_cbr";
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};

_unit addHeadgear "LOP_H_Turban";

_unit addGoggles "SFG_Tac_BeardD";

_unit addWeapon "hlc_rifle_RPK12";
_unit addWeapon "RH_mak";

_unit linkItem "tf_rf7800str";

[_unit, "AR", "TALIBAN"] call BWI_fnc_AddGear;
[_unit, "AR", "TALIBAN"] call BWI_fnc_AddMedical;

for "_i" from 1 to 8 do {_unit addItemToVest "hlc_45Rnd_545x39_t_rpk";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "hlc_45Rnd_545x39_t_rpk";};