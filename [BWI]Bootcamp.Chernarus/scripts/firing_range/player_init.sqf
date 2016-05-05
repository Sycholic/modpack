
player setVariable ["bwiRangeShotCount", 0,true];

bwi_Func_addShotCount = {

	_startCount = player getVariable "bwiRangeShotCount";
	player setVariable ["bwiRangeShotCount",_startCount + 1,true];
	
};



player addEventHandler ["Fired", {_this call bwi_Func_checkAmmo;_this call bwi_Func_addShotCount;}];


bwi_Func_callScoreBoard = {

	_ShowDialog = {
	sleep 0.01;
	_ok = createDialog "bwi_scoreBoard_main_dlg";
	waitUntil { !dialog };
	};
 
	_void = [] call _ShowDialog;

};

bwi_Func_loadScoreBoard = {

	disableSerialization;
	_display = (uiNamespace getVariable "bwi_scoreBoard_main_dlg");
	_lb = _display displayCtrl 1500;
	lbClear 1500;
	
	{

	_name = name _x;
	
	_hits = score _x;
	_roundsFired = _x getVariable "bwiRangeShotCount";
	_hitPerc = str (( _hits / _roundsFired) * 100);
	
	_index = _lb lnbAddRow ["",_name,(str _hits),(str _roundsFired),_hitPerc];
	
	// Stuff for possable future inclusion
	//_index = _lb lbAdd _text;
	//_lb lbSetValue [_index, _count];
	//_lb lbSetPicture [_index, _pic];
	//lnbSetPicture [1500,[_index,0],_pic];
	//_lb lbSetValue [_index, _count];

	} forEach playableUnits;

};

