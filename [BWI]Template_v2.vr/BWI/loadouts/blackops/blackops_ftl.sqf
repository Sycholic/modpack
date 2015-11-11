//LOADOUTS - BWI - SQL/FTL

removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

player forceAddUniform "U_PMC_IndUniformRS_BSBPBB";

player addVest "V_PlateCarrier2_blk";
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "SmokeShellRed";
player addItemToVest "SmokeShellGreen";
player addItemToVest "UGL_FlareWhite_F";
for "_i" from 1 to 4 do {player addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
player addItemToVest "1Rnd_Smoke_Grenade_shell";

player addBackpack "PMC_B_Kitbag_blk";
player addItemToBackpack "RH_peq15b";
player addItemToBackpack "rhsusf_acc_nt4_black";
player addItemToBackpack "RH_m9qd";
for "_i" from 1 to 3 do {player addItemToBackpack "RH_15Rnd_9x19_M9";};
for "_i" from 1 to 9 do {player addItemToBackpack "1Rnd_HE_Grenade_shell";};

player addHeadgear "BWA3_OpsCore_Schwarz";

player addWeapon "rhs_weap_m4a1_carryhandle_m203";
player addPrimaryWeaponItem "RH_SFM952V";
player addPrimaryWeaponItem "RH_ta31rmr"	;
player addWeapon "RH_m9";
player addHandgunItem "RH_M6X";

player linkItem "tf_anprc152";

[player, "FTL"] call BWI_fnc_AddGear;
[player, "FTL"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {player addItemToVest "30Rnd_556x45_Stanag";}; 
for "_i" from 1 to 3 do {player addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};