// Joint Terminal Attack Controller
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "BWI_Uniform_FIN_M05M";
for "_i" from 1 to 2 do {_unit addItemToUniform "B_IR_Grenade";};

_unit addVest "BWI_Vest_UN_BLU";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};

_unit addBackpack "tf_anprc155";

_unit addHeadgear "BWI_Helmet_UN_BLU";

_unit addWeapon "hlc_rifle_RK62";

_unit linkItem "tf_anprc148jem";
_unit linkItem "ItemWatch";

[_unit, "JTAC", "RI", 2008] call BWI_fnc_AddGear;
[_unit, "JTAC"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_762x39_b_ak";}; 
for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_30Rnd_762x39_t_ak";};