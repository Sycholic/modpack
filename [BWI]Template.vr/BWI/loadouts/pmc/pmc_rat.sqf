//Rifleman (AT)
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_pmc_uniforms = ["tacs_Uniform_TShirt_JP_BS_TP_BB", "tacs_Uniform_TShirt_JP_LS_LP_BB", "tacs_Uniform_Garment_RS_GS_BP_BB", "tacs_Uniform_Garment_RS_GS_EP_TB", "tacs_Uniform_Garment_RS_BS_GP_BB", "tacs_Uniform_Garment_LS_GS_TP_TB", "tacs_Uniform_Garment_LS_ES_GP_BB", "tacs_Uniform_Garment_LS_GS_BP_BB", "tacs_Uniform_Combat_RS_CLRS_TP_BB", "tacs_Uniform_Combat_RS_CLBS_GP_BB", "tacs_Uniform_Combat_RS_CDBS_GP_TB", "tacs_Uniform_Combat_RS_GS_TP_BB", "tacs_Uniform_Garment_RS_OS_TP_TB", "tacs_Uniform_Polo_TP_LS_TP_TB", "tacs_Uniform_Polo_TP_LS_GP_BB", "tacs_Uniform_Polo_CP_RS_LP_BB", "tacs_Uniform_Polo_CP_LS_TP_OB", "tacs_Uniform_Polo_TP_GS_TP_TB", "tacs_Uniform_Polo_TP_WS_LP_BB", "tacs_Uniform_Polo_CP_BS_TP_BB"];
_randomUni = selectRandom _pmc_uniforms;
_unit forceAddUniform _randomUni;

_unit addVest "tacs_Vest_PlateCarrier_Black";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";

_unit addBackpack "B_AssaultPack_blk";
for "_i" from 1 to 3 do {_unit addItemToBackpack "rhsusf_mag_17Rnd_9x19_JHP";};
_unit addItemToBackpack "BWA3_RGW90_HH";

_pmc_headgear = ["tacs_Cap_Earpiece_BlackLogo", "tacs_Cap_Backwards_BlackLogo", "tacs_Cap_BlackLogo", "H_Cap_blk", "H_Cap_blu", "rhsusf_bowman_cap", "H_MilCap_gry", "H_MilCap_blue", "H_Cap_usblack", "H_Cap_red", "H_Watchcap_blk", "H_Watchcap_cbr", "H_Watchcap_camo", "H_Watchcap_khk"];
_randomHeadgear = selectRandom _pmc_headgear;
_unit addHeadgear _randomHeadgear;

_unit addWeapon "hlc_rifle_auga3_b";
_unit addPrimaryWeaponItem "UK3CB_BAF_LLM_Flashlight_Black";
_unit addPrimaryWeaponItem "UK3CB_BAF_Eotech";
_unit addWeapon "BWA3_RGW90";
_unit addWeapon "rhsusf_weap_glock17g4";

_unit linkItem "tf_anprc154";
_unit linkItem "tf_microDAGR";

[_unit, "RAT", "PM", 2014] call BWI_fnc_AddGear;
[_unit, "RAT"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_556x45_B_AUG";}; 
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30Rnd_556x45_T_AUG";};