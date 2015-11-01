if (!local player) exitWith {};

removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

player forceAddUniform "UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_IR_Strobe_Item";
for "_i" from 1 to 4 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_Flashlight_MX991";
for "_i" from 1 to 2 do {player addItemToUniform "Chemlight_green";};
for "_i" from 1 to 2 do {player addItemToUniform "B_IR_Grenade";};
player addVest "UK3CB_BAF_V_Osprey_SL_D";
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_an_m8hc";};
player addItemToVest "rhs_mag_m18_red";
player addItemToVest "rhs_mag_m18_green";
for "_i" from 1 to 2 do {player addItemToVest "rhsusf_mag_17Rnd_9x19_JHP";};
for "_i" from 1 to 4 do {player addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 9 do {player addItemToVest "1Rnd_HE_Grenade_shell";};
player addItemToVest "1Rnd_Smoke_Grenade_shell";
player addItemToVest "UGL_FlareWhite_F";
player addBackpack "UK3CB_BAF_B_Bergen_MTP_Rifleman_H_B";
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_quikclot";};
player addItemToBackpack "ACE_morphine";
player addItemToBackpack "ACE_tourniquet";
player addItemToBackpack "rhsusf_ANPVS_15";
player addItemToBackpack "UK3CB_BAF_Silencer_L85";
player addItemToBackpack "UK3CB_BAF_LLM_Flashlight_Black";
player addHeadgear "UK3CB_BAF_H_Mk7_Camo_A";


player addWeapon "UK3CB_BAF_L85A2_UGL";
player addPrimaryWeaponItem "UK3CB_BAF_TA648_308";
player addWeapon "rhsusf_weap_glock17g4";
player addWeapon "ACE_Vector";


player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "Itemwatch";
player linkItem "tf_anprc152";
player linkItem "ItemGPS";

player addItemToVest "30Rnd_556x45_Stanag";
player addItemToVest "30Rnd_556x45_Stanag";
player addItemToVest "30Rnd_556x45_Stanag";
player addItemToVest "30Rnd_556x45_Stanag";
player addItemToVest "30Rnd_556x45_Stanag";
player addItemToVest "30Rnd_556x45_Stanag";
player addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";
player addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";
player addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";
