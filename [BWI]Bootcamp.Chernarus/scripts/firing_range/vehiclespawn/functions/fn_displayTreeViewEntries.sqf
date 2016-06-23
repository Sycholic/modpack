params ["_display", "_sideNr"];

tvClear 1001;
tvClear 1002;

_tvRole    = _display displayctrl 1002;


_tvRole tvAdd [[],"Blufor"];
_tvRole tvAdd [[],"Opfor"];

_tvRole tvAdd [[0],"M1 Abrams"];
_tvRole tvAdd [[0],"MBT Leopard"];
_tvRole tvAdd [[0],"M2A3 Bradley"];
_tvRole tvAdd [[0],"MK19 Humvee"];
_tvRole tvAdd [[0],"M2 Humvee"];

_tvRole tvAdd [[1],"BTR 70"];
_tvRole tvAdd [[1],"BMP 2"];
_tvRole tvAdd [[1],"BMP 3"];
_tvRole tvAdd [[1],"BRM 1K"];
_tvRole tvAdd [[1],"T-72B 1985"];
_tvRole tvAdd [[1],"T-80"];
_tvRole tvAdd [[1],"T-90"];
_tvRole tvAdd [[1],"Shilka"];


_tvRole tvSetCurSel vehiclespawn_VehicleSelected;