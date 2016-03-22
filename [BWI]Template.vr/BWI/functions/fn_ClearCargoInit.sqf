{
	_x addEventHandler ["CuratorObjectPlaced", {[_this select 1] call BWI_fnc_ClearCargoZeus}];
} forEach allCurators;