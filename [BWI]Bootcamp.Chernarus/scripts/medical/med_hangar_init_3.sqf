if(isDedicated) exitWith{};

_grp = createGroup west;

_pos3 = getMarkerPos "h2_med_spawn3";


deleteVehicle unit3;
unit3 = _grp createUnit ["rhsusf_usmc_marpat_wd_rifleman", _pos3,[], 0, "NONE"];
unit3 setDir 240;
unit3 removeWeapon "rhs_weap_m16a4_grip_acog_usmc";
for "_i" from 1 to 2 do {unit3 removeItemFromVest "rhs_mag_m67";};
[unit3, true] call ACE_captives_fnc_setHandcuffed; 
