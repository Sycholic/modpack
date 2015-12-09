private ["_newOwner"];
_newOwner = owner (_this select 0);
{
    _x setGroupOwner _newOwner;
} forEach allGroups;
["Reclaimed ownership of AI", "hint", _newOwner, false, true] call BIS_fnc_MP