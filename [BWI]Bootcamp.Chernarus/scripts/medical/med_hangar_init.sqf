if(isDedicated) exitWith{};

_grp = createGroup west;

_pos1 = getMarkerPos "h2_med_spawn1";
_pos2 = getMarkerPos "h2_med_spawn2";
_pos3 = getMarkerPos "h2_med_spawn3";
_pos4 = getMarkerPos "h2_med_spawn4";

unit1 = _grp createUnit ["rhsusf_usmc_marpat_wd_rifleman", _pos1, [], 0, "NONE"];
unit1 setDir 240;
unit1 removeWeapon "rhs_weap_m16a4_grip_acog_usmc";
for "_i" from 1 to 2 do {unit1 removeItemFromVest "rhs_mag_m67";};
[unit1, true] call ACE_captives_fnc_setHandcuffed;


unit2 = _grp createUnit ["rhsusf_usmc_marpat_wd_rifleman", _pos2,[], 0, "NONE"];
unit2 setDir 240;
unit2 removeWeapon "rhs_weap_m16a4_grip_acog_usmc";
for "_i" from 1 to 2 do {unit2 removeItemFromVest "rhs_mag_m67";};
[unit2, true] call ACE_captives_fnc_setHandcuffed; 

unit3 = _grp createUnit ["rhsusf_usmc_marpat_wd_rifleman", _pos3,[], 0, "NONE"];
unit3 setDir 240;
unit3 removeWeapon "rhs_weap_m16a4_grip_acog_usmc";
for "_i" from 1 to 2 do {unit3 removeItemFromVest "rhs_mag_m67";};
[unit3, true] call ACE_captives_fnc_setHandcuffed; 

unit4 = _grp createUnit ["rhsusf_usmc_marpat_wd_rifleman", _pos4,[], 0, "NONE"];
unit4 setDir 240;
unit4 removeWeapon "rhs_weap_m16a4_grip_acog_usmc";
for "_i" from 1 to 2 do {unit4 removeItemFromVest "rhs_mag_m67";};
[unit4, true] call ACE_captives_fnc_setHandcuffed; 
