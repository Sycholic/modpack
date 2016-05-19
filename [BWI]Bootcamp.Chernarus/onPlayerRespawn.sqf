/*
 * Add Bootcamp actions
 */
if( player in [z1,z2,z3,z4] ) then { 
	AdminAction4 = h1_billboard2 addAction ["Column Formation", "scripts\tex_swap\h1_column.sqf"];
	AdminAction5 = h1_billboard2 addAction ["Line Formation", "scripts\tex_swap\h1_line.sqf"];
	AdminAction6 = h1_billboard2 addAction ["Wedge Formation", "scripts\tex_swap\h1_wedge.sqf"];
	AdminAction7 = h1_billboard2 addAction ["Echelon Formation", "scripts\tex_swap\h1_echelon.sqf"];
	AdminAction8 = h1_billboard2 addAction ["Staggered Column Formation", "scripts\tex_swap\h1_staggered.sqf"];
	AdminAction9 = h1_billboard2 addAction ["Spacing", "scripts\tex_swap\h1_spacing.sqf"];

	AdminAction10 = h2_billboard2 addAction ["Bandage Chart", "scripts\tex_swap\h2_bandage.sqf"];
	AdminAction11 = h2_billboard2 addAction ["Vitals", "scripts\tex_swap\h2_vitals.sqf"];
	AdminAction12 = h2_billboard2 addAction ["Medicaments", "scripts\tex_swap\h2_medicaments.sqf"];

	AdminAction13 = h3_billboard2 addAction ["Convoy Hold Formation", "scripts\tex_swap\h3_holding.sqf"];
	AdminAction14 = h3_billboard2 addAction ["Convoy Driving Formation", "scripts\tex_swap\h3_driving.sqf"];

	AdminAction15 = h4_billboard2 addAction ["SR Radio Buttons", "scripts\tex_swap\h4_radio_button.sqf"];
	AdminAction16 = h4_billboard2 addAction ["LR Radio Buttons", "scripts\tex_swap\h4_lr_radio.sqf"];
	AdminAction17 = h4_billboard2 addAction ["Radio Frequencies", "scripts\tex_swap\h4_radio_freq.sqf"];
	AdminAction18 = h4_billboard2 addAction ["Radio Terminology 1", "scripts\tex_swap\h4_radio_term1.sqf"];
	AdminAction19 = h4_billboard2 addAction ["Radio Terminology 2", "scripts\tex_swap\h4_radio_term2.sqf"];
	AdminAction20 = h4_billboard2 addAction ["Radio Conversation Example", "scripts\tex_swap\h4_radio_ex.sqf"];
	AdminAction21 = h4_billboard2 addAction ["GPS Grid", "scripts\tex_swap\h4_grid.sqf"];
	
	AdminAction22 = medInit addAction ["Spawn Test Subjects", "scripts\medical\med_hangar_init.sqf"];
	AdminAction23 = medInit addAction ["Delete Test Subjects", "scripts\medical\med_hangar_del.sqf"];
};


/**
*
*	Add Zeus actions to the SpawnVAS
*
*/
if( AdminAction0 != -1 ) then {
	SpawnVAS removeAction AdminAction0;
	AdminAction0 = -1;
};

if( AdminAction1 != -1 ) then {
	SpawnVAS removeAction AdminAction1;
	AdminAction1 = -1;
};

if( AdminAction2 != -1 ) then {
	SpawnVAS removeAction AdminAction2;
	AdminAction2 = -1;
};

if( player in [z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11,z12] ) then { 
	AdminAction0 = SpawnVAS addAction[ "---BWI Mission Admin---", "" ];
	AdminAction1 = SpawnVAS addAction[ "BWI Admin: Disable FOB", "BWI_logistics_FOB_enabled = false; publicVariable ""BWI_logistics_FOB_enabled"";", nil, 1.5, true, true, "", "BWI_logistics_FOB_enabled" ];
	AdminAction2 = SpawnVAS addAction[ "BWI Admin: Enable FOB", "BWI_logistics_FOB_enabled = true; publicVariable ""BWI_logistics_FOB_enabled"";", nil, 1.5, true, true, "", "!BWI_logistics_FOB_enabled" ];
};

/**
*
*	CommCard action
*
*/
player addAction ["BWI: CommCard", "createDialog 'BWICommCard';", nil, -10, false, false];

/**
*
*	Add actions to player objects when they initially spawn or respawn
*
*/
_platoonRole    = (str player) select [10,3];

if( _platoonRole == "pls" || _platoonRole == "pll" ) then {
	player addAction ["Display reinforcements list", "BWI\scripts\displayReinforcements.sqf", nil, 1.5, false, false, "", "BWI_logistics_FOB_enabled && !BWI_displayReinsertionQueue"];
	player addAction ["Hide reinforcements list", "BWI_displayReinsertionQueue = false; hint """";", nil, 1.5, false, false, "", "BWI_logistics_FOB_enabled && BWI_displayReinsertionQueue"];
};

/**
*
*	Handle reinsertion timer
*
*/
if( BWI_playerGotKilled ) then {

    if( BWI_logistics_FOB_enabled ) then {
        _timerScript = [] spawn {
            _timer = 120 + (BWI_playerKillCount - 1) * 180;
            
            [player, "STARTTIMER", _timer] call BWI_fnc_ReportReinsertionToPlatoon;
            
            while { _timer > 0 && !BWI_playerCanDeploy && (player distance2D SpawnVAS) < 50 } do {
                hintSilent parseText format ["<t color='#ff1111'>Waiting for reinsertion</t><br/>Wait til the timer has finished!<br/>%1:%2 remaining.", [floor(_timer / 60),2] call CBA_fnc_formatNumber, [_timer % 60,2] call CBA_fnc_formatNumber];
                sleep 1;
                _timer = _timer - 1;
            };
            
            if( ( player distance2D SpawnVAS ) >= 50) then {
                hint "";
                [player, "DEPLOYED"] call BWI_fnc_ReportReinsertionToPlatoon;
            } else {
                BWI_playerCanDeploy = true;
                
                while { isNull BWI_logistics_FOB_Flag && ( player distance2D SpawnVAS ) < 50 } do {
                    hintSilent parseText "<t color='#FFA805'>FOB not placed</t><br/>You have to wait until the FOB has been placed by the PL/APL to reinsert.";
                    sleep 2;
                };
                
                if( ( player distance2D SpawnVAS ) >= 50) then {
                    hint "";
                    [player, "DEPLOYED"] call BWI_fnc_ReportReinsertionToPlatoon;
                } else {
                    hintSilent parseText "<t color='#11ff11'>REINSERTION READY!</t><br/>Use the teleporter flag pole!";
                };
            };
        };
    } else {
        hintSilent parseText "<t color='#11ff11'>FOB not used for this mission!</t><br/>Please reinsert via teleporter flag pole or wait for reinsertion!";
    };
	
};