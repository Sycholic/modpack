_nop = [] execVM "scripts\firing_range\fr_init.sqf";

fr_lane1 addAction ["Clear Score","[[player],'bwi_Func_clear_my_score',false,false] spawn BIS_fnc_MP;"];
fr_lane2 addAction ["Clear Score","[[player],'bwi_Func_clear_my_score',false,false] spawn BIS_fnc_MP;"];
fr_lane3 addAction ["Clear Score","[[player],'bwi_Func_clear_my_score',false,false] spawn BIS_fnc_MP;"];
fr_lane4 addAction ["Clear Score","[[player],'bwi_Func_clear_my_score',false,false] spawn BIS_fnc_MP;"];
fr_lane5 addAction ["Clear Score","[[player],'bwi_Func_clear_my_score',false,false] spawn BIS_fnc_MP;"];
fr_lane6 addAction ["Clear Score","[[player],'bwi_Func_clear_my_score',false,false] spawn BIS_fnc_MP;"];
fr_lane7 addAction ["Clear Score","[[player],'bwi_Func_clear_my_score',false,false] spawn BIS_fnc_MP;"];
fr_laptop addAction ["Clear Score","[[player],'bwi_Func_clear_my_score',false,false] spawn BIS_fnc_MP;"];

fr_lane1 addAction ["Score Board","nop = [] spawn bwi_Func_callScoreBoard;",1];
fr_lane2 addAction ["Score Board","nop = [] spawn bwi_Func_callScoreBoard;",1];
fr_lane3 addAction ["Score Board","nop = [] spawn bwi_Func_callScoreBoard;",1];
fr_lane4 addAction ["Score Board","nop = [] spawn bwi_Func_callScoreBoard;",1];
fr_lane5 addAction ["Score Board","nop = [] spawn bwi_Func_callScoreBoard;",1];
fr_lane6 addAction ["Score Board","nop = [] spawn bwi_Func_callScoreBoard;",1];
fr_lane7 addAction ["Score Board","nop = [] spawn bwi_Func_callScoreBoard;",1];
fr_laptop addAction ["Score Board","nop = [] spawn bwi_Func_callScoreBoard;",1];

AdminAction0 = -1;
AdminAction1 = -1;
AdminAction2 = -1;
AdminAction3 = -1;

medInit addAction ["Become Corpsman", "scripts\medical\med_corpsman.sqf"];
medInit addAction ["Become CFR", "scripts\medical\med_cfr.sqf"];