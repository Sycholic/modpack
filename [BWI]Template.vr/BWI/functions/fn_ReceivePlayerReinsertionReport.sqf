params ["_playerObj", "_reportType", "_timer"];

_tempArray = [];
_deleteIndex = -1;

if( _reportType == "STARTTIMER" ) then {
	_tempArray pushBack _playerObj;
	_tempArray pushBack (name _playerObj);
	_tempArray pushBack _timer;
	
	waitUntil { !BWI_playerReinsertCriticalSection };
	BWI_playerReinsertCriticalSection = true;
	
	BWI_playerReinsertionQueue pushBack _tempArray;
	
	BWI_playerReinsertCriticalSection = false;
	
	if( count BWI_playerReinsertionQueue == 1 ) then {
		[] spawn {
			_timer = 0;
			while { count BWI_playerReinsertionQueue >= 1 } do {
				sleep 10;
				{
					waitUntil { !BWI_playerReinsertCriticalSection };
					BWI_playerReinsertCriticalSection = true;
					if( (_x select 2) > 0 ) then {
						_timer = (_x select 2) - 10;
						if ( _timer < 0 ) then {
							_timer = 0;
						};
						_x set [2, _timer];
					};
					BWI_playerReinsertCriticalSection = false;
				} forEach BWI_playerReinsertionQueue;
			};
		};
	};
	
} else {
	waitUntil { !BWI_playerReinsertCriticalSection };
	BWI_playerReinsertCriticalSection = true;
	{
		if( (_x select 0) == _playerObj ) then {
			_deleteIndex = _forEachIndex;
		};
	} forEach BWI_playerReinsertionQueue;
	
	if( _deleteIndex != -1 ) then {
		BWI_playerReinsertionQueue deleteAt _deleteIndex;
	};
	
	BWI_playerReinsertCriticalSection = false;
};