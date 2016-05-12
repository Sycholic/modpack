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

_unit forceAddUniform "AFGHAN_WAFG_4";

_unit addVest "V_AFGH_6b23wint";

_unit addBackpack "B_FieldPack_khk";
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rdg2_white";};
_unit addItemToBackpack "rhs_mag_rdg2_black";

_unit addHeadgear "rhs_tsh4";

_unit addWeapon "hlc_rifle_aks74u_MTK";

_unit linkItem "tf_fadak";
_unit linkItem "ItemWatch";

[_unit, "ARM", "RI", 1984] call BWI_fnc_AddGear;
[_unit, "ARM"] call BWI_fnc_AddMedical;

for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30Rnd_545x39_B_AK";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_30Rnd_545x39_B_AK";};