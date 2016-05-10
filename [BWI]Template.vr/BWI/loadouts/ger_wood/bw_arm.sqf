// Vehicle Crew
_unit = (_this select 0);
if( !local _unit ) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit forceAddUniform "BWA3_Uniform_Crew_Fleck";

_unit addVest "BWA3_Vest_Fleck";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
_unit addItemToVest "rhs_mag_m18_green";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};

_unit addBackpack "BWA3_AssaultPack_Fleck";

_unit addHeadgear "BWA3_CrewmanKSK_Fleck_Headset";

_unit addWeapon "hlc_smg_mp5k_PDW";

_unit linkItem "tf_anprc152";
_unit linkItem "ItemWatch";

[_unit, "ARM", "RI", 2010] call BWI_fnc_AddGear;
[_unit, "ARM"] call BWI_fnc_AddMedical;

for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30Rnd_9x19_B_MP5";};