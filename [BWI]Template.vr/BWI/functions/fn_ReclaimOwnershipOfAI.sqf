private ["_newOwner"];
_newOwner = owner (_this select 0);
{
    _x setGroupOwner _newOwner;
} forEach allGroups;
"Reclaimed ownership of AI" remoteExecCall ["hint", _newOwner, false];