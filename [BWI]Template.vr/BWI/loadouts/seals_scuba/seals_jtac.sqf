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

_unit forceAddUniform "U_B_Wetsuit";
_unit addItemToUniform "B_IR_Grenade";
_unit addItemToUniform "HandGrenade";
_unit addItemToUniform "SmokeShell";
_unit addItemToUniform "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToUniform "RH_15Rnd_9x19_M9";};

_unit addVest "V_RebreatherB";

_unit addBackpack "tf_rt1523g_black";

_unit addGoggles "G_B_Diving";

_unit addWeapon "RH_Hk416s";
_unit addPrimaryWeaponItem "rhsusf_acc_nt4_black";
_unit addPrimaryWeaponItem "UK3CB_BAF_LLM_Flashlight_Black";
_unit addPrimaryWeaponItem "RH_barska_rds";
_unit addWeapon "RH_m9";
_unit addHandgunItem "RH_m9qd";
_unit addHandgunItem "RH_X300";

_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "JTAC", "SF", 2016] call BWI_fnc_AddGear;
[_unit, "JTAC"] call BWI_fnc_AddMedical;

for "_i" from 1 to 4 do {_unit addItemToUniform "30Rnd_556x45_Stanag";}; 
for "_i" from 1 to 2 do {_unit addItemToBackpack "30Rnd_556x45_Stanag";}; 
for "_i" from 1 to 3 do {_unit addItemToBackpack "30Rnd_556x45_Stanag_Tracer_Red";};