// Rotary Pilot
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "tacs_Uniform_Garment_LS_GS_GP_BB";

_unit addVest "V_TacVest_oli";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_HandFlare_Red";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_HandFlare_Green";};

_unit addBackpack "B_FieldPack_oli";
_unit addItemToBackpack "ACE_NVG_Gen2"; // Special case not covered by AddGear.

_unit addHeadgear "UK3CB_BAF_H_PilotHelmetHeli_A";

_unit addWeapon "hlc_smg_mp5a2";

_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "HEL", "RI", 1986] call BWI_fnc_AddGear;
[_unit, "HEL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_9x19_B_MP5";};