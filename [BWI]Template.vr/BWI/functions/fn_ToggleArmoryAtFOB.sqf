params ["_state"];

if( _state ) then {
	BWI_logistics_FOB_AmmoBox_AddAction = BWI_logistics_FOB_AmmoBox addAction ["<t color='#d58200'>BWI: Armory</t>", "createDialog 'BWIArmory';"];
} else {
	BWI_logistics_FOB_AmmoBox removeAction BWI_logistics_FOB_AmmoBox_AddAction;
	BWI_logistics_FOB_AmmoBox_AddAction = -1;
};