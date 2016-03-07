params ["_player", "_reportType", ["_timer", 0]];
private ["_recipients"];

_recipients = [];

if( !isNil "b_pl1_ple_pl" ) then {
	_recipients pushBack b_pl1_ple_pl;
};

if( !isNil "b_pl1_ple_apl" ) then {
	_recipients pushBack b_pl1_ple_apl;
};

if( !isNil "o_pl1_ple_pl" ) then {
	_recipients pushBack o_pl1_ple_pl;
};

if( !isNil "o_pl1_ple_apl" ) then {
	_recipients pushBack o_pl1_ple_apl;
};

if( !isNil "i_pl1_ple_pl" ) then {
	_recipients pushBack i_pl1_ple_pl;
};

if( !isNil "i_pl1_ple_apl" ) then {
	_recipients pushBack i_pl1_ple_apl;
};

[_player, _reportType, _timer] remoteExec ["BWI_fnc_ReceivePlayerReinsertionReport", _recipients, true];