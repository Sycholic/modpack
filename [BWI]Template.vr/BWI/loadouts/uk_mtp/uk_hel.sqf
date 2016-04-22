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

_unit forceAddUniform "UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve";
for "_i" from 1 to 2 do {_unit addItemToUniform "B_IR_Grenade";};

_unit addVest "UK3CB_BAF_V_Pilot_A";
_unit addItemToVest "SmokeShellGreen";
_unit addItemToVest "ACE_HandFlare_Red";
_unit addItemToVest "ACE_HandFlare_Green";

_unit addBackpack "B_FieldPack_oli";

_unit addHeadgear "UK3CB_BAF_H_PilotHelmetHeli_A";

_unit addWeapon "UK3CB_BAF_L22A2";

_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "HEL", "RI", 2013] call BWI_fnc_AddGear;
[_unit, "HEL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "30Rnd_556x45_Stanag";}; 
