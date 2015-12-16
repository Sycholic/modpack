_display = _this select 0;

_xlistSide = _display displayctrl 1006;

_xlistSide lbAdd "BLUFOR";
_xlistSide lbAdd "OPFOR";
if( side player == west ) then {
	_xlistSide lbsetcursel 0;
} else {
	_xlistSide lbsetcursel 1; // this triggers
};