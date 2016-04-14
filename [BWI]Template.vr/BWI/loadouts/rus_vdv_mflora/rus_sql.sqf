
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
for "_i" from 1 to 2 do {_unit addItemToUniform "O_IR_Grenade";};

_unit addVest "rhs_6b23_ML_6sh92_headset";

_unit addBackpack "B_Kitbag_mcamo";
for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_9x18_12_57N181S";};
_unit addItemToBackpack "acc_pointer_IR";
_unit addItemToBackpack "hlc_muzzle_545SUP_AK";
for "_i" from 1 to 10 do {_unit addItemToBackpack "hlc_VOG25_AK";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "hlc_GRD_White";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "hlc_GRD_Red";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};
_unit addItemToBackpack "hlc_GRD_green";
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
_unit addItemToBackpack "SmokeShellGreen";

_unit addHeadgear "rhs_6b27m_ML_ess_bala";

_unit addWeapon "hlc_rifle_ak12GL";
_unit addPrimaryWeaponItem "rhsusf_acc_eotech_552";
_unit addPrimaryWeaponItem "UK3CB_BAF_LLM_Flashlight_Black";
_unit addWeapon "ACE_Vector";
_unit addWeapon "rhs_weap_makarov_pmm";

_unit linkItem "tf_fadak";

[_unit, "SQL"] call BWI_fnc_AddGear;
[_unit, "SQL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_545x39_B_AK";};
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30Rnd_545x39_t_ak";};
