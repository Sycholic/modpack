//LOADOUTS - BWI - ZEUS
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

_unit forceAddUniform "U_PMC_BlckPolo_BluPants";
_unit addBackpack "tf_rt1523g_big_bwmod_tropen";
_unit addHeadgear "UK3CB_BAF_H_Beret_Mer_PRR";
_unit addGoggles "G_Aviator";


_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "tf_microdagr";
_unit linkItem "tf_anprc152";

_unit setFace "WhiteHead_03";
_unit setSpeaker "ACE_NoVoice";