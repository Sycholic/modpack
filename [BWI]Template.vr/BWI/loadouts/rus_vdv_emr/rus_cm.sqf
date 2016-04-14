
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "rhs_uniform_vdv_emr";

_unit addVest "rhs_6b23_digi_6sh92_headset";

_unit addBackpack "B_Kitbag_sgg";
for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_9x19_17";};
_unit addItemToBackpack "acc_pointer_IR";
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
_unit addItemToBackpack "SmokeShellGreen";
_unit addHeadgear "rhs_6b27m_digi_ess";

_unit addWeapon "hlc_rifle_ak12";
_unit addPrimaryWeaponItem "UK3CB_BAF_LLM_Flashlight_Black";
_unit addPrimaryWeaponItem "rhsusf_acc_eotech_552";
_unit addWeapon "rhs_weap_pya";
_unit linkItem "tf_fadak";

[_unit, "CM"] call BWI_fnc_AddGear;
[_unit, "CM"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_545x39_B_AK";};
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30Rnd_545x39_t_ak";};
