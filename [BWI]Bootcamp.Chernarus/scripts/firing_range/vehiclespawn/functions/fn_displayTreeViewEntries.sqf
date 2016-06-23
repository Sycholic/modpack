params ["_display", "_sideNr"];

tvClear 1001;
tvClear 1002;

_tvRole    = _display displayctrl 1002;


_tvRole tvAdd [[],"American"];
_tvRole tvAdd [[],"Russian"];
_tvRole tvAdd [[],"Rest"];


_tvRole tvAdd [[0],"M1 Abrams"];
_tvRole tvAdd [[0],"M2A3 Bradley"];
_tvRole tvAdd [[0],"MK19 Humvee"];
_tvRole tvAdd [[0],"M2 Humvee"];

_tvRole tvAdd [[1],"BTR 60"];
_tvRole tvAdd [[1],"BTR 70"];
_tvRole tvAdd [[1],"BTR 80"];

_tvRole tvAdd [[2],"Israeli futuristic gun"];
_tvRole tvAdd [[2],"Shitty afghan tank"];



_tvRole tvSetCurSel vehiclespawn_VehicleSelected;