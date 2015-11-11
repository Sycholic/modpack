//LOADOUTS - BWI - AAR (M27)

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
player addItemToVest "SmokeShellRed";
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {player addItemToVest "RH_15Rnd_9x19_M9";};

player addBackpack "PMC_B_Kitbag_blk";
player addItemToBackpack "RH_m9qd";
player addItemToBackpack "RH_qdss_nt4";

player addHeadgear "BWA3_OpsCore_Schwarz";

player addWeapon "hlc_m249_pip1";
player addPrimaryWeaponItem "RH_c79";
player addWeapon "RH_m9";
player addHandgunItem "RH_M6X";

player linkItem "tf_rf7800str";

[player, "AR"] call BWI_fnc_AddGear;
[player, "AR"] call BWI_fnc_AddMedical;

for "_i" from 1 to 3 do {player addItemToBackpack "hlc_200rnd_556x45_M_SAW";};
player addItemToBackpack "hlc_200rnd_556x45_T_SAW";