if(isDedicated) exitWith{};

_grp = createGroup west;


_pos4 = getMarkerPos "h2_med_spawn4";


deleteVehicle unit4;
unit4 = _grp createUnit ["rhsusf_usmc_marpat_wd_rifleman", _pos4,[], 0, "NONE"];
unit4 setDir 240;
unit4 removeWeapon "rhs_weap_m16a4_grip_acog_usmc";
for "_i" from 1 to 2 do {unit4 removeItemFromVest "rhs_mag_m67";};
[unit4, true] call ACE_captives_fnc_setHandcuffed; 
