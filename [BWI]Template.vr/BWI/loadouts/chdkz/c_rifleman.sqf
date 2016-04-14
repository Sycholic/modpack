
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "LOP_U_ChDKZ_Fatigue_Bardak";
_unit addItemToUniform "ACE_MapTools";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_CableTie";};
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_DefusalKit";
_unit addItemToUniform "ACE_Flashlight_MX991";
_unit addItemToUniform "ACE_IR_Strobe_Item";
for "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_red";};
for "_i" from 1 to 2 do {_unit addItemToUniform "B_IR_Grenade";};
_unit addVest "LOP_6sh46";
_unit addBackpack "B_FieldPack_khk";
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_elasticBandage";};
_unit addItemToBackpack "ACE_tourniquet";
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_morphine";};
_unit addItemToBackpack "ACE_epinephrine";
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_quikclot";};
_unit addItemToBackpack "ACE_Clacker";
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
_unit addItemToBackpack "SmokeShellRed";
_unit addItemToBackpack "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_9x18_12_57N181S";};
_unit addHeadgear "LOP_H_SSh68Helmet_BLK";

_unit addWeapon "hlc_rifle_ak47";
_unit addWeapon "rhs_weap_makarov_pmm";
_unit addWeapon "Binocular";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "tf_microdagr";
_unit linkItem "tf_pnr1000a";

_unit addItemToVest "hlc_30Rnd_762x39_b_ak";
_unit addItemToVest "hlc_30Rnd_762x39_b_ak";
_unit addItemToVest "hlc_30Rnd_762x39_b_ak";
_unit addItemToVest "hlc_30Rnd_762x39_b_ak";
_unit addItemToVest "hlc_30Rnd_762x39_b_ak";
_unit addItemToVest "hlc_30Rnd_762x39_b_ak";
_unit addItemToVest "hlc_30Rnd_762x39_t_ak";
_unit addItemToVest "hlc_30Rnd_762x39_t_ak";
_unit addItemToVest "hlc_30Rnd_762x39_t_ak";