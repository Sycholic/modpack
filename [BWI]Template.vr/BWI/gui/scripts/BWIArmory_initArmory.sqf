_display = _this select 0;

_xlistSide = _display displayctrl 1006;
_lblSlotPicked = _display displayctrl 1008;
_lblSlotPicked ctrlSetStructuredText parseText BWI_armory_baseSlot;

_xlistSide lbAdd "BLUFOR";
_xlistSide lbAdd "OPFOR";
_xlistSide lbAdd "INDEPENDENT";
_xlistSide lbsetcursel BWI_armory_sideSelected;