if (!local player) exitWith {};

removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

player forceAddUniform "rhs_uniform_cu_ocp";
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 4 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_IR_Strobe_Item";
for "_i" from 1 to 2 do {player addItemToUniform "Chemlight_green";};
for "_i" from 1 to 2 do {player addItemToUniform "B_IR_Grenade";};
player addVest "rhsusf_iotv_ocp_rifleman";
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "SmokeShellRed";
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {player addItemToVest "RH_15Rnd_9x19_M9";};
player addBackpack "rhsusf_assault_eagleaiii_ocp";
player addItemToBackpack "RH_peq15b";
player addItemToBackpack "rhsusf_acc_nt4_black";
for "_i" from 1 to 4 do {this addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 3 do {this addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 3 do {this addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 3 do {this addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 2 do {this addItemToBackpack "ACE_morphine";};
player addItemToBackpack "ACE_tourniquet";
player addItemToBackpack "RH_m9qd";
player addItemToBackpack "ACE_epinephrine";
player addHeadgear "rhsusf_ach_helmet_headset_ess_ocp";

player addWeapon "rhs_weap_m4a1_carryhandle_grip";
player addPrimaryWeaponItem "RH_SFM952V";
player addPrimaryWeaponItem "RH_compm4s";
player addWeapon "rhs_weap_M136";
player addWeapon "RH_m9";
player addHandgunItem "RH_M6X";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_rf7800str";

player addItemToVest "30Rnd_556x45_Stanag";
player addItemToVest "30Rnd_556x45_Stanag";
player addItemToVest "30Rnd_556x45_Stanag";
player addItemToVest "30Rnd_556x45_Stanag";
player addItemToVest "30Rnd_556x45_Stanag";
player addItemToVest "30Rnd_556x45_Stanag";
player addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";
player addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";
player addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";

