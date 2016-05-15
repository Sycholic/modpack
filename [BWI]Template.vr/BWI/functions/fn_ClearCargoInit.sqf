if( player in [z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11,z12] ) then { 
	waitUntil { !isNull getAssignedCuratorLogic player; };
	_curatorObj = getAssignedCuratorLogic player;
	_curatorObj addEventHandler ["CuratorObjectPlaced", {[_this select 1] call BWI_fnc_ClearCargoZeus}];
};