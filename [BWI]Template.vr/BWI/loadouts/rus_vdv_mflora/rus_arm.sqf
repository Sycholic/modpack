// Vehicle Crew
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

_unit addVest "rhs_6b23_digi_crew";

_unit addBackpack "B_FieldPack_khk";
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
_unit addItemToBackpack "SmokeShellGreen";

_unit addHeadgear "rhs_tsh4";

_unit addWeapon "hlc_rifle_aks74u";

_unit linkItem "tf_fadak";
_unit linkItem "ItemWatch";

[_unit, "ARM", "RI", 2006] call BWI_fnc_AddGear;
[_unit, "ARM"] call BWI_fnc_AddMedical;

for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30Rnd_545x39_B_AK";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_30Rnd_545x39_B_AK";};