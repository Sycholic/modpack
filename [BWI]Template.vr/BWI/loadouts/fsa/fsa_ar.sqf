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

_fsa_uniforms = ["LOP_U_UA_Fatigue_02", "LOP_U_UA_Fatigue_03", "LOP_U_UA_Fatigue_04"];
_randomUni = _fsa_uniforms select floor random count _fsa_uniforms;
_unit forceAddUniform _randomUni;

_unit addVest "LOP_V_6Sh92_OLV";
for "_i" from 1 to 2 do {_unit addItemToVest "RH_8Rnd_9x18_Mak";};

_unit addBackpack "B_FieldPack_oli";
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};

_unit addHeadgear "H_Shemag_olive";

_unit addWeapon "hlc_rifle_RPK12";
_unit addWeapon "RH_mak";

_unit linkItem "tf_rf7800str";

[_unit, "AR", "FSA"] call BWI_fnc_AddGear;
[_unit, "AR", "FSA"] call BWI_fnc_AddMedical;

for "_i" from 1 to 8 do {_unit addItemToVest "hlc_45Rnd_545x39_t_rpk";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "hlc_45Rnd_545x39_t_rpk";};