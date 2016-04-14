
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "rhs_uniform_vdv_mflora";
_unit addItemToUniform "rhs_mag_rgd5";
_unit addVest "rhs_6b23_ML_6sh92_headset";
_unit addItemToVest "rhs_mag_rgd5";
_unit addItemToVest "SmokeShell";

_unit addBackpack "BWA3_Carryall_Tropen";
_unit addItemToBackpack "acc_pointer_IR";
_unit addItemToBackpack "rhsusf_ANPVS_15";
_unit addItemToBackpack "SmokeShell";
_unit addItemToBackpack "SmokeShellGreen";

_unit addHeadgear "rhs_6b27m_ML_ess_bala";

_unit addWeapon "hlc_rifle_ak12";
_unit addPrimaryWeaponItem "UK3CB_BAF_LLM_Flashlight_Black";
_unit addPrimaryWeaponItem "rhsusf_acc_eotech_552";
_unit linkItem "tf_fadak";

[_unit, (_this select 1)] call BWI_fnc_AddGear;
[_unit, "ENG"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_545x39_B_AK";};
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30Rnd_545x39_t_ak";};
