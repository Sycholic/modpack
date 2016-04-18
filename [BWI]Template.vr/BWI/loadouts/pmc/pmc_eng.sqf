//LOADOUTS - BWI - Rifleman
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_pmc_uniforms = ["tacs_Item_Uniform_TShirt_JP_GS_LP_BB", "tacs_Item_Uniform_TShirt_JP_BS_TP_BB", "tacs_Item_Uniform_TShirt_JP_LS_LP_BB", "tacs_Item_Uniform_Garment_RS_GS_BP_BB", "tacs_Item_Uniform_Garment_RS_GS_EP_TB", "tacs_Item_Uniform_Garment_RS_BS_GP_BB", "tacs_Item_Uniform_Garment_LS_GS_TP_TB", "tacs_Item_Uniform_Garment_LS_ES_GP_BB", "tacs_Item_Uniform_Garment_LS_GS_BP_BB", "tacs_Item_Uniform_Combat_RS_CLRS_TP_BB", "tacs_Item_Uniform_Combat_RS_CLBS_GP_BB", "tacs_Item_Uniform_Combat_RS_CDBS_GP_TB", "tacs_Item_Uniform_Combat_RS_GS_TP_BB", "tacs_Item_Uniform_Garment_RS_OS_TP_TB", "tacs_Item_Uniform_Polo_TP_LS_TP_TB", "tacs_Item_Uniform_Polo_TP_TS_GP_BB", "tacs_Item_Uniform_Polo_TP_LS_GP_BB", "tacs_Item_Uniform_Polo_CP_RS_LP_BB", "tacs_Item_Uniform_Polo_CP_LS_TP_OB"];
_randomUni = selectRandom _pmc_uniforms;
_unit forceAddUniform _randomUni;

_unit addVest "tacs_Item_Vest_PlateCarrier_Black";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};

_unit addBackpack "tacs_Backpack_AssaultExpanded_Black";
_unit addItemToBackpack "hlc_muzzle_snds_AUG";

_pmc_headgear = ["tacs_Item_Cap_Earpiece_BlackLogo", "tacs_Item_Cap_Backwards_BlackLogo", "tacs_Item_Cap_BlackLogo", "H_Cap_blk", "H_Cap_blu", "rhsusf_bowman_cap", "H_MilCap_gry", "H_MilCap_blue", "H_Cap_usblack", "H_Cap_red", "H_Watchcap_blk", "H_Watchcap_cbr", "H_Watchcap_camo", "H_Watchcap_khk"];
_randomHeadgear = selectRandom _pmc_headgear;
_unit addHeadgear _randomHeadgear;

_unit addWeapon "hlc_rifle_auga3_b";
_unit addPrimaryWeaponItem "UK3CB_BAF_LLM_Flashlight_Black";
_unit addPrimaryWeaponItem "UK3CB_BAF_Eotech";
_unit addWeapon "rhsusf_weap_m9";

_unit linkItem "tf_anprc148jem";

[_unit, "ENG", "SF", 2008] call BWI_fnc_AddGear;
[_unit, "ENG"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_556x45_B_AUG";}; 
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30Rnd_556x45_T_AUG";};