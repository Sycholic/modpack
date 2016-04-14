_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "U_I_GhillieSuit";

_unit addVest "rhs_6b23_digi_6sh92_headset";

_unit addBackpack "B_Kitbag_sgg";
for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_9x19_17";};
_unit addItemToBackpack "rhs_acc_tgpv";
_unit addItemToBackpack "rhsusf_ANPVS_15";
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
_unit addItemToBackpack "SmokeShellGreen";
_unit addHeadgear "rhs_6b27m_digi_ess";

_unit addWeapon "rhs_weap_svdp";
_unit addPrimaryWeaponItem "rhs_acc_pso1m2";
_unit addWeapon "rhs_weap_pya";
_unit linkItem "tf_fadak";

[_unit, "SNI"] call BWI_fnc_AddGear;
[_unit, "SNI"] call BWI_fnc_AddMedical;

for "_i" from 1 to 15 do {_unit addItemToVest "rhs_10Rnd_762x54mmR_7N1";};
