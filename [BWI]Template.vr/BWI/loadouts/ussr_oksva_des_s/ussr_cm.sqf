// Corpsman
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "AFGH_AFG_S3";

_unit addVest "V_AFGH_6B23_Medic_bleached";

_unit addBackpack "B_CarryAll_khk";
for "_i" from 1 to 2 do {_unit addItemToBackpack "RH_8Rnd_9x18_Mak";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rdg2_white";};
_unit addItemToBackpack "rhs_mag_rdg2_black";

_ussr_hats = ["AFGHAN_PANAMA_R_BRYR", "AFGHAN_PANAMA_S_BRYR"];
_randomHat = selectRandom _ussr_hats;
_unit addHeadgear _randomHat;

_unit addWeapon "hlc_rifle_aks74";
_unit addWeapon "RH_mak";

_unit linkItem "tf_fadak";
_unit linkItem "ItemWatch";

[_unit, "CM", "RI", 1984] call BWI_fnc_AddGear;
[_unit, "CM"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_545x39_B_AK";};
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30Rnd_545x39_t_ak";};