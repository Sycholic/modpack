// Rotary Pilot
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_pmc_uniforms = ["tacs_Uniform_TShirt_JP_GS_LP_BB", "tacs_Uniform_TShirt_JP_BS_TP_BB", "tacs_Uniform_TShirt_JP_LS_LP_BB", "tacs_Uniform_Garment_RS_GS_BP_BB", "tacs_Uniform_Garment_RS_GS_EP_TB", "tacs_Uniform_Garment_RS_BS_GP_BB", "tacs_Uniform_Garment_LS_GS_TP_TB", "tacs_Uniform_Garment_LS_ES_GP_BB", "tacs_Uniform_Garment_LS_GS_BP_BB", "tacs_Uniform_Combat_RS_CLRS_TP_BB", "tacs_Uniform_Combat_RS_CLBS_GP_BB", "tacs_Uniform_Combat_RS_CDBS_GP_TB", "tacs_Uniform_Combat_RS_GS_TP_BB", "tacs_Uniform_Garment_RS_OS_TP_TB", "tacs_Uniform_Polo_TP_LS_TP_TB", "tacs_Uniform_Polo_TP_TS_GP_BB", "tacs_Uniform_Polo_TP_LS_GP_BB", "tacs_Uniform_Polo_CP_RS_LP_BB", "tacs_Uniform_Polo_CP_LS_TP_OB"];
_randomUni = selectRandom _pmc_uniforms;
_unit forceAddUniform _randomUni;

for "_i" from 1 to 2 do {_unit addItemToUniform "I_IR_Grenade";};

_unit addVest "tacs_Vest_PlateCarrier_Black";
_unit addItemToVest "SmokeShellGreen";
_unit addItemToVest "ACE_HandFlare_Red";
_unit addItemToVest "ACE_HandFlare_Green";

_unit addBackpack "B_FieldPack_blk";

_pmc_headgear = ["tacs_Cap_Earpiece_BlackLogo", "rhsusf_bowman_cap", "tacs_Cap_Headphones_BlackLogo"];
_randomHeadgear = selectRandom _pmc_headgear;
_unit addHeadgear _randomHeadgear;

_unit addWeapon "hlc_smg_mp5k_PDW";

_unit linkItem "tf_anprc148jem";
_unit linkItem "ItemWatch";

[_unit, "HEL", "PM", 2014] call BWI_fnc_AddGear;
[_unit, "HEL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_9x19_B_MP5";}; 