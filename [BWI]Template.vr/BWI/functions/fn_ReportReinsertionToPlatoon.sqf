params ["_player", "_reportType", ["_timer", 0]];
private ["_recipients"];

_recipients = [];

if( !isNil "b_pl1_ple_pll" ) then {
	_recipients pushBack b_pl1_ple_pll;
};

if( !isNil "b_pl1_ple_pls" ) then {
	_recipients pushBack b_pl1_ple_pls;
};

if( !isNil "o_pl1_ple_pll" ) then {
	_recipients pushBack o_pl1_ple_pll;
};

if( !isNil "o_pl1_ple_pls" ) then {
	_recipients pushBack o_pl1_ple_pls;
};

if( !isNil "i_pl1_ple_pll" ) then {
	_recipients pushBack i_pl1_ple_pll;
};

if( !isNil "i_pl1_ple_pls" ) then {
	_recipients pushBack i_pl1_ple_pls;
};

[_player, _reportType, _timer] remoteExec ["BWI_fnc_ReceivePlayerReinsertionReport", _recipients, true];
