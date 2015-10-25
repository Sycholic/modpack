
if (!local player) exitWith {};

removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;


player forceAddUniform "rhs_uniform_vdv_flora";
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 4 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_IR_Strobe_Item";
for "_i" from 1 to 2 do {player addItemToUniform "Chemlight_green";};
for "_i" from 1 to 2 do {player addItemToUniform "B_IR_Grenade";};
player addVest "rhs_6b13_6sh92_headset_mapcase";
player addItemToBackpack "RH_8Rnd_9x18_Mak";
player addItemToBackpack "RH_8Rnd_9x18_Mak";
player addItemToBackpack "RH_8Rnd_9x18_Mak";
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rgd5";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rdg2_white";};
player addItemToVest "rhs_mag_nspn_red";
player addItemToVest "rhs_mag_nspn_green";
player addBackpack "B_Carryall_oli";
player addItemToBackpack "rhsusf_ANPVS_15";
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_quikclot";};
player addItemToBackpack "ACE_tourniquet";
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_morphine";};
player addItemToBackpack "ACE_epinephrine";
player addHeadgear "rhs_6b26_ess_bala";

player addWeapon "rhs_weap_pkp";
player addPrimaryWeaponItem "rhs_acc_1p78";
player addWeapon "RH_mak";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_pnr1000a";


player addItemToBackpack "rhs_100Rnd_762x54mmR";
player addItemToBackpack "rhs_100Rnd_762x54mmR";
player addItemToBackpack "rhs_100Rnd_762x54mmR";
player addItemToBackpack "rhs_100Rnd_762x54mmR_green";
player addItemToBackpack "rhs_100Rnd_762x54mmR_green";
