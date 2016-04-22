params ["_display"];

_comboBox = _display displayctrl 2100;
_lblError = _display displayctrl 1002;

_selection = lbCurSel _comboBox;
switch( _selection ) do {
    case 0;
    case 7;
    case 13;
    case 23;
    case 27: {
        _lblError ctrlSetStructuredText parseText "<t color='#ff1111'>Error: Select a group name!</t>";
		[_lblError] spawn {_timer = 10; while { _timer > 0 } do { sleep 1; _timer = _timer - 1;}; (_this select 0) ctrlSetStructuredText parseText ""; };
        
        false
    };
    
    default {
        _groupName = _comboBox lbText _selection;
        group player setGroupIdGlobal [_groupName];
        
        closeDialog 1;
		true
    };
};