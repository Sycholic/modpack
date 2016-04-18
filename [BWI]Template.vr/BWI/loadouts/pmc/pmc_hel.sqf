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

for "_i" from 1 to 2 do {_unit addItemToUniform "I_IR_Grenade";};

_unit addVest "tacs_Item_Vest_PlateCarrier_Black";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};

_unit addBackpack "B_FieldPack_blk";
_unit addItemToBackpack "hlc_muzzle_snds_a6AUG";

_pmc_headgear = ["tacs_Item_Cap_Earpiece_BlackLogo", "rhsusf_bowman_cap", "H_Watchcap_blk", "H_Watchcap_cbr", "H_Watchcap_camo", "H_Watchcap_khk"];
_randomHeadgear = selectRandom _pmc_headgear;
_unit addHeadgear _randomHeadgear;

_unit addWeapon "hlc_rifle_auga2para_t";
_unit addWeapon "rhsusf_weap_m9";

_unit linkItem "tf_anprc154";

[_unit, "HEL", "SF", 2008] call BWI_fnc_AddGear;
[_unit, "HEL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_25Rnd_9x19mm_M882_AUG";}; 