// Combat First Responder
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

_unit addVest "V_PlateCarrier1_blk";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rgd5";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {_unit addItemToVest "RH_20Rnd_32cal_vz61";};

_unit addBackpack "tacs_Backpack_Kitbag_DarkBlack";

_unit addHeadgear "tacs_Helmet_Ballistic_DarkBlack";
_unit addGoggles "G_Balaclava_blk";

_unit addWeapon "rhs_weap_asval_npz";
_unit addPrimaryWeaponItem "RH_reflex";
_unit addWeapon "RH_vz61";

_unit linkItem "tf_fadak";
_unit linkItem "ItemWatch";

[_unit, "CFR", "SF", 2016] call BWI_fnc_AddGear;
[_unit, "CFR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 7 do {_unit addItemToBackpack "rhs_20rnd_9x39mm_SP5";};
for "_i" from 1 to 3 do {_unit addItemToVest "rhs_20rnd_9x39mm_SP6";};