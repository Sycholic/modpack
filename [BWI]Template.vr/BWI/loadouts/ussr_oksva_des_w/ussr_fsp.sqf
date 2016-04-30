// Fire Support
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "AFGHAN_GORKA2";

_unit addVest "V_AFGH_6Sh92_Vog_TAN";

_unit addBackpack "B_FieldPack_khk";
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rdg2_white";};
_unit addItemToBackpack "rhs_mag_rdg2_black";

_ussr_hats = ["AFGHAN_PANAMA_R_RY", "AFGHAN_PANAMA_S_RY", "AFGHAN_USHANKA_HAT"];
_randomHat = selectRandom _ussr_hats;
_unit addHeadgear _randomHat;

_unit addWeapon "hlc_rifle_aks74";

_unit linkItem "tf_pnr1000a";
_unit linkItem "tf_microDAGR";

[_unit, "FSP", "RI", 1984] call BWI_fnc_AddGear;
[_unit, "FSP"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_545x39_B_AK";};
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30Rnd_545x39_t_ak";};
