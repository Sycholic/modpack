// Zeus
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

_unit forceAddUniform "BWI_Uniform_BWI_B16";
_unit addBackpack "tf_rt1523g_big_rhs";
_unit addHeadgear "UK3CB_BAF_H_Beret_RAMC_Officer";
_unit addGoggles "G_Aviator";

_unit addItemToUniform "ACE_MapTools";
for "_i" from 1 to 4 do { _unit addItemToUniform "ACE_CableTie"; };
for "_i" from 1 to 2 do { _unit addItemToUniform "Chemlight_green";};
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_Flashlight_MX991";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "tf_microdagr";
_unit linkItem "tf_anprc148jem";

_unit setSpeaker "ACE_NoVoice";