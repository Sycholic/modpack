// Squad Leader
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "tacs_Uniform_Garment_LS_ES_BP_BB";
_unit addItemToUniform "Serbian_Facepaint";
_unit addItemToUniform "acc_flashlight";
for "_i" from 1 to 2 do {_unit addItemToUniform "O_IR_Grenade";};

_unit addVest "V_PlateCarrier1_blk";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rgd5";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_GRD40_Red";};
_unit addItemToVest "rhs_GRD40_White";
for "_i" from 1 to 3 do {_unit addItemToVest "RH_20Rnd_32cal_vz61";};

_unit addBackpack "tacs_Backpack_Kitbag_DarkBlack";
for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_VOG25";};

_unit addHeadgear "tacs_Helmet_Ballistic_DarkBlack";
_unit addGoggles "G_Balaclava_blk";

_unit addWeapon "rhs_weap_ak103_gp25_npz";
_unit addPrimaryWeaponItem "rhs_acc_dtk4screws";
_unit addPrimaryWeaponItem "RH_peq15b";
_unit addPrimaryWeaponItem "RH_LTdocterl";
_unit addWeapon "RH_vz61";

_unit linkItem "tf_fadak";
_unit linkItem "ItemWatch";

[_unit, "SQL", "SF", 2016] call BWI_fnc_AddGear;
[_unit, "SQL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToBackpack "hlc_30Rnd_762x39_b_ak";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "hlc_30Rnd_762x39_t_ak";};
for "_i" from 1 to 2 do {_unit addItemToVest "hlc_30Rnd_762x39_s_ak";};