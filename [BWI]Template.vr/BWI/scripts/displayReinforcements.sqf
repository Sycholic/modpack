BWI_displayReinsertionQueue = true;
while { BWI_displayReinsertionQueue } do {
	if( count BWI_playerReinsertionQueue > 0 ) then {
		waitUntil { !BWI_playerReinsertCriticalSection };
		BWI_playerReinsertCriticalSection = true;
		_displayText = "<t color='#FFA805'>Pending reinforcements</t>:";
		{
			_displayText = format ["%1<br/>%2: %3:%4", _displayText, (_x select 1), [floor( (_x select 2) / 60),2] call CBA_fnc_formatNumber, [(_x select 2) % 60,2] call CBA_fnc_formatNumber];
		} forEach BWI_playerReinsertionQueue;
		BWI_playerReinsertCriticalSection = false;
		hintsilent parseText _displayText;
		sleep 3;
	} else {
		hintSilent parseText "<t color='#11ff11'>No reinsertions pending</t>";
		sleep 10;
	};
};
