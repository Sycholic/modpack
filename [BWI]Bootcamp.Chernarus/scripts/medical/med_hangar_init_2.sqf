if(isDedicated) exitWith{};

_grp = createGroup west;

_pos2 = getMarkerPos "h2_med_spawn2";



deleteVehicle unit2;
unit2 = _grp createUnit ["rhsusf_usmc_marpat_wd_rifleman", _pos2,[], 0, "NONE"];
unit2 setDir 240;
unit2 removeWeapon "rhs_weap_m16a4_grip_acog_usmc";
for "_i" from 1 to 2 do {unit2 removeItemFromVest "rhs_mag_m67";};
[unit2, true] call ACE_captives_fnc_setHandcuffed; 
