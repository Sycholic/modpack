if(isDedicated) exitWith{};

_grp = createGroup west;

_pos1 = getMarkerPos "h2_med_spawn1";



deleteVehicle unit1;
unit1 = _grp createUnit ["rhsusf_usmc_marpat_wd_rifleman", _pos1, [], 0, "NONE"];
unit1 setDir 240;
unit1 removeWeapon "rhs_weap_m16a4_grip_acog_usmc";
for "_i" from 1 to 2 do {unit1 removeItemFromVest "rhs_mag_m67";};
[unit1, true] call ACE_captives_fnc_setHandcuffed;