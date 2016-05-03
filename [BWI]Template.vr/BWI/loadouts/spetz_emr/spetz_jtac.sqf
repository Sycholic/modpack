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

_unit forceAddUniform "rhs_uniform_emr_patchless";
_unit addItemToUniform "Serbian_Facepaint";
_unit addItemToUniform "acc_flashlight";
for "_i" from 1 to 2 do {_unit addItemToUniform "O_IR_Grenade";};

_unit addVest "rhs_6b23_digi_6sh92_headset_spetsnaz";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rgd5";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {_unit addItemToVest "RH_8Rnd_9x18_Mak";};

_unit addBackpack "tf_mr3000_rhs";

_unit addHeadgear "rhs_6b28_green_ess_bala";

_unit addWeapon "hlc_rifle_ak12";
_unit addPrimaryWeaponItem "hlc_muzzle_545SUP_AK";
_unit addPrimaryWeaponItem "RH_peq15b";
_unit addPrimaryWeaponItem "RH_eotech553";
_unit addWeapon "RH_mak";
_unit addHandgunItem "RH_pmsd";
_unit addHandgunItem "RH_pmIR";

_unit linkItem "tf_fadak";
_unit linkItem "ItemWatch";

[_unit, "JTAC", "SF", 2016] call BWI_fnc_AddGear;
[_unit, "JTAC"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToBackpack "hlc_30Rnd_545x39_B_AK";};
for "_i" from 1 to 2 do {_unit addItemToVest "hlc_30Rnd_545x39_t_ak";};