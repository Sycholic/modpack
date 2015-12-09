if( AdminAction0 != -1 ) then {
	SpawnVAS removeAction AdminAction0;
	AdminAction0 = -1;
};

if( AdminAction1 != -1 ) then {
	SpawnVAS removeAction AdminAction1;
	AdminAction1 = -1;
};

if( AdminAction2 != -1 ) then {
	SpawnVAS removeAction AdminAction2;
	AdminAction2 = -1;
};

if( AdminAction3 != -1 ) then {
	SpawnVAS removeAction AdminAction3;
	AdminAction3 = -1;
};

if( player in [z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11,z12,z13,z14,z15,z16] ) then {
	AdminAction0 = SpawnVAS addAction[ "---BWI Mission Admin---", "" ];
	AdminAction1 = SpawnVAS addAction[ "BWI Admin: Reclaim AI", "[player] remoteExecCall ['BWI_fnc_ReclaimOwnershipOfAI']" ];
	AdminAction2 = SpawnVAS addAction[ "<t color='#11c311'>BWI Admin: End Mission (Success)</t>", "[true] remoteExecCall ['BWI_fnc_EndMission']" ];
	AdminAction3 = SpawnVAS addAction[ "<t color='#bb1111'>BWI Admin: End Mission (Failure)</t>", "[false] remoteExecCall ['BWI_fnc_EndMission']" ];
};