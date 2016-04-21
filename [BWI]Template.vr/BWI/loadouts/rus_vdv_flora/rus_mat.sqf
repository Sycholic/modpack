// Anti-Tank (MAT)
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "rhs_uniform_vdv_flora";

_unit addVest "rhs_6b23_6sh92_headset";

_unit addBackpack "B_FieldPack_oli";
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
_unit addItemToBackpack "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_rpg7_PG7VL_mag";};
_unit addItemToBackpack "rhs_rpg7_OG7V_mag";

_unit addHeadgear "rhs_6b26_ess";

_unit addWeapon "hlc_rifle_ak74m";
_unit addPrimaryWeaponItem "hlc_optic_kobra";
_unit addWeapon "rhs_weap_rpg7";
_unit addSecondaryWeaponItem "rhs_acc_pgo7v";

_unit linkItem "tf_pnr1000a";
_unit linkItem "tf_microDAGR";

[_unit, "MAT", "RI", 2006] call BWI_fnc_AddGear;
[_unit, "MAT"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_545x39_B_AK";};
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30Rnd_545x39_t_ak";};