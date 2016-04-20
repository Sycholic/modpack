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

_unit forceAddUniform "BWA3_Uniform_Crew_Tropen";
for "_i" from 1 to 2 do {_unit addItemToUniform "B_IR_Grenade";};

_unit addVest "BWA3_Vest_Tropen";
_unit addItemToVest "SmokeShellGreen";
_unit addItemToVest "ACE_HandFlare_Red";
_unit addItemToVest "ACE_HandFlare_Green";

_unit addBackpack "BWA3_FieldPack_Tropen";

_unit addHeadgear "rhsusf_hgu56p";

_unit addWeapon "hlc_smg_mp5k_PDW";

_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "HEL", "RI", 2010] call BWI_fnc_AddGear;
[_unit, "HEL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_9x19_B_MP5";};
