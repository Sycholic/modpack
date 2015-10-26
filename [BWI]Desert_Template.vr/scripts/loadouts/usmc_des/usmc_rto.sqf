if (!local player) exitWith {};

removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

player forceAddUniform "rhs_uniform_FROG01_d";
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 4 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_IR_Strobe_Item";
for "_i" from 1 to 2 do {player addItemToUniform "Chemlight_green";};
for "_i" from 1 to 2 do {player addItemToUniform "B_IR_Grenade";};
player addVest "rhsusf_spc_marksman";
for "_i" from 1 to 3 do {player addItemToVest "RH_15Rnd_9x19_M9";};
player addBackpack "tf_rt1523g_sage";
player addItemToBackpack "RH_peq15b";
player addItemToBackpack "rhsusf_acc_nt4_black";
player addItemToBackpack "rhsusf_ANPVS_15";
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_quikclot";};
player addItemToBackpack "ACE_morphine";
player addItemToBackpack "ACE_morphine";
player addItemToBackpack "ACE_tourniquet";
player addItemToBackpack "RH_m9qd";
player addItemToBackpack "ACE_epinephrine";
for "_i" from 1 to 2 do {player addItemToBackpack "HandGrenade";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShell";};
player addItemToBackpack "SmokeShellRed";
player addItemToBackpack "SmokeShellGreen";
for "_i" from 1 to 2 do {player addItemToBackpack "Laserbatteries";};
player addHeadgear "rhsusf_lwh_helmet_marpatd_ess";

player addWeapon "rhs_weap_m4a1_carryhandle_grip";
player addPrimaryWeaponItem "RH_SFM952V";
player addPrimaryWeaponItem "RH_compm4s";
player addWeapon "RH_m9";
player addHandgunItem "RH_M6X";
player addWeapon "Laserdesignator";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
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
player addItemToUniform "30Rnd_556x45_Stanag_Tracer_Red";

