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

_unit forceAddUniform "rhs_uniform_vdv_mflora";
for "_i" from 1 to 2 do {_unit addItemToUniform "O_IR_Grenade";};

_unit addVest "rhs_6b23_ML_6sh92_headset";

_unit addBackpack "tf_mr3000_rhs";
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
_unit addItemToBackpack "SmokeShellGreen";

_unit addHeadgear "rhs_6b27m_ml_ess";

_unit addWeapon "rhs_weap_ak74m_npz";
_unit addPrimaryWeaponItem "optic_ACO_grn";

_unit linkItem "tf_fadak";
_unit linkItem "ItemWatch";

[_unit, "JTAC", "RI", 2006] call BWI_fnc_AddGear;
[_unit, "JTAC"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_545x39_B_AK";};
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30Rnd_545x39_t_ak";};