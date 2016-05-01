// Sniper
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "BWI_Uniform_FIN_M05L";

_unit addVest "BWI_Vest_FIN_M05L";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 3 do {_unit addItemToVest "RH_17Rnd_9x19_g17";};

_unit addBackpack "B_Kitbag_rgr";

_unit addHeadgear "H_Booniehat_oli";

_unit addWeapon "UK3CB_BAF_L82A1";
_unit addPrimaryWeaponItem "BWA3_optic_24x72";
_unit addWeapon "RH_g17";

_unit linkItem "tf_anprc148jem";
_unit linkItem "ItemWatch";

[_unit, "SNI", "RI", 2008] call BWI_fnc_AddGear;
[_unit, "SNI"] call BWI_fnc_AddMedical;

for "_i" from 1 to 2 do {_unit addItemToVest "UK3CB_BAF_10Rnd_127x99mm";}; 
for "_i" from 1 to 5 do {_unit addItemToBackpack "UK3CB_BAF_10Rnd_127x99mm";}; 
for "_i" from 1 to 3 do {_unit addItemToBackpack "UK3CB_BAF_10Rnd_127x99mm_SLAP";}; 