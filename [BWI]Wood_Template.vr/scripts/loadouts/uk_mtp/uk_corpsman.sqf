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
player addVest "UK3CB_BAF_V_Osprey_Medic_C";
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_an_m8hc";};
player addItemToVest "rhs_mag_m18_red";
player addItemToVest "rhs_mag_m18_green";
for "_i" from 1 to 2 do {player addItemToVest "rhsusf_mag_17Rnd_9x19_JHP";};
player addBackpack "UK3CB_BAF_B_Bergen_MTP_Medic_L_A";
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
player addItemToBackpack "ACE_surgicalKit";
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_personalAidKit";};
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_bloodIV_500";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_bodyBag";};
player addItemToBackpack "UK3CB_BAF_Silencer_L85";
player addItemToBackpack "rhsusf_ANPVS_15";
player addHeadgear "UK3CB_BAF_H_Mk7_Camo_B";
player addItemToBackpack "UK3CB_BAF_LLM_Flashlight_Black";


player addWeapon "UK3CB_BAF_L85A2_RIS";
player addPrimaryWeaponItem "UK3CB_BAF_Eotech";
player addWeapon "rhsusf_weap_glock17g4";
player addWeapon "Binocular";


player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "Itemwatch";
player linkItem "ItemGPS";
player linkItem "tf_anprc152";

player addItemToVest "30Rnd_556x45_Stanag";
player addItemToVest "30Rnd_556x45_Stanag";
player addItemToVest "30Rnd_556x45_Stanag";
player addItemToVest "30Rnd_556x45_Stanag";
player addItemToVest "30Rnd_556x45_Stanag";
player addItemToVest "30Rnd_556x45_Stanag";
player addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";
player addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";
player addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";
