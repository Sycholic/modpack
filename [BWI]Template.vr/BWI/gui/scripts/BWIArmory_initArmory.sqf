_display = _this select 0;

_xlistSide = _display displayctrl 1006;
_xlistRoleSelection = _display displayctrl 1009;
_lblSlotPicked = _display displayctrl 1008;
_lblSlotPicked ctrlSetStructuredText parseText BWI_armory_baseSlot;

_xlistSide lbAdd "BLUFOR";
_xlistSide lbAdd "OPFOR";
_xlistSide lbAdd "INDEPENDENT";
_xlistSide lbsetcursel BWI_armory_sideSelected;

_xlistRoleSelection lbAdd "Personal Roles";
_xlistRoleSelection lbAdd "Team Roles";
_xlistRoleSelection lbsetcursel 0;

_fireteamRole   = (str player) select [14,3];

if( _fireteamRole != "ftl" ) then {
	_xlistRoleSelection ctrlShow false;
};