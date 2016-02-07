[20, [], 
{
	_flagObject = "";
	_playerLookDir = -(getDir player);
	_cosineLookDir = cos(_playerLookDir);
	_sineLookDir = sin(_playerLookDir);
	_posPlayer = getPosATL player;
	
	_posFlag = [0,0,0];
	_posFlag set [0, (_posPlayer select 0) + ( ( _cosineLookDir * 0 ) - ( _sineLookDir * 4 ) )];
	_posFlag set [1, (_posPlayer select 1) + ( ( _sineLookDir * 0 ) + ( _cosineLookDir * 4 ) )];
	_dirFlag = [getPos player, _posFlag] call BIS_fnc_dirTo;
	
	_posCamoNet = [0,0,0];
	_posCamoNet set [0, (_posPlayer select 0) + ( ( _cosineLookDir * 0 ) - ( _sineLookDir * 10 ) )];
	_posCamoNet set [1, (_posPlayer select 1) + ( ( _sineLookDir * 0 ) + ( _cosineLookDir * 10 ) )];
	_dirCamoNet = [getPos player, _posCamoNet] call BIS_fnc_dirTo;
	
	_posAmmoBox = [0,0,0];
	_posAmmoBox set [0, (_posPlayer select 0) + ( ( _cosineLookDir * -3 ) - ( _sineLookDir * 7 ) )];
	_posAmmoBox set [1, (_posPlayer select 1) + ( ( _sineLookDir * -3 ) + ( _cosineLookDir * 7 ) )];
	_dirAmmoBox = _dirCamoNet;
	
	_posTable1 = [0,0,0];
	_posTable1 set [0, (_posPlayer select 0) + ( ( _cosineLookDir * 3 ) - ( _sineLookDir * 9 ) )];
	_posTable1 set [1, (_posPlayer select 1) + ( ( _sineLookDir * 3 ) + ( _cosineLookDir * 9 ) )];
	_dirTable1 = _dirCamoNet;
	
	_posTable2 = [0,0,0];
	_posTable2 set [0, (_posPlayer select 0) + ( ( _cosineLookDir * 1.35 ) - ( _sineLookDir * 9.5 ) )];
	_posTable2 set [1, (_posPlayer select 1) + ( ( _sineLookDir * 1.35 ) + ( _cosineLookDir * 9.5 ) )];
	_dirTable2 = _dirCamoNet;
	
	_posBoard = [0,0,0];
	_posBoard set [0, (_posPlayer select 0) + ( ( _cosineLookDir * -3 ) - ( _sineLookDir * 10 ) )];
	_posBoard set [1, (_posPlayer select 1) + ( ( _sineLookDir * -3 ) + ( _cosineLookDir * 10 ) )];
	_dirBoard = _dirCamoNet - 90;
	
	switch ( uniform player ) do {
	
		case "U_PMC_IndUniformLS_BSBPBB"		: { _flagObject = "Flag_US_F"; };
		case "BWA3_Uniform2_Tropen"     		: { _flagObject = "BWA3_Flag_Ger_F"; };
		case "BWA3_Uniform2_Fleck"      		: { _flagObject = "BWA3_Flag_Ger_F"; };
		case "rhs_uniform_vdv_emr"      		: { _flagObject = "rhs_Flag_Russia_F"; };
		case "rhs_uniform_flora_patchless"      : { _flagObject = "rhs_Flag_Russia_F"; };
		case "rhs_uniform_vdv_mflora"      		: { _flagObject = "rhs_Flag_Russia_F"; };
		case "U_B_Wetsuit"      				: { _flagObject = "Flag_US_F"; };
		case "UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve"    : { _flagObject = "Flag_UK_F"; };
		case "rhs_uniform_FROG01_m81"			: { _flagObject = "Flag_US_F"; };
		case "rhs_uniform_cu_ocp"				: { _flagObject = "Flag_US_F"; };
		case "rhs_uniform_cu_ucp"				: { _flagObject = "Flag_US_F"; };
		case "rhs_uniform_FROG01_d"				: { _flagObject = "Flag_US_F"; };
		case "rhs_uniform_FROG01_wd"			: { _flagObject = "Flag_US_F"; };
		default {
			if( side player == "west" ) then {
				_flagObject = "Flag_Blue_F";
			};
			
			if( side player == "east" ) then {
				_flagObject = "Flag_Red_F";
			};
			
			if( side player == "independent" ) then {
				_flagObject = "Flag_Green_F";
			};
		};
	};
	
	
	BWI_logistics_FOB_Flag = createVehicle [ _flagObject, _posFlag, [], 0, 'CAN_COLLIDE'];
	BWI_logistics_FOB_Flag setDir _dirFlag;
	BWI_logistics_FOB_Flag allowDamage false;
	_surfaceNormal = surfaceNormal position BWI_logistics_FOB_Flag;
	BWI_logistics_FOB_Flag setVectorUp _surfaceNormal;
	
	BWI_logistics_FOB_Net = createVehicle ['CamoNet_BLUFOR_open_Curator_F', _posCamoNet, [], 0, 'CAN_COLLIDE'];
	BWI_logistics_FOB_Net setDir _dirCamoNet;
	BWI_logistics_FOB_Net enableSimulation false;
	BWI_logistics_FOB_Net allowDamage false;
	_surfaceNormal = surfaceNormal position BWI_logistics_FOB_Net;
	BWI_logistics_FOB_Net setVectorUp _surfaceNormal;
	
	BWI_logistics_FOB_AmmoBox = createVehicle ['Land_PaperBox_open_full_F', _posAmmoBox, [], 0, 'CAN_COLLIDE'];
	BWI_logistics_FOB_AmmoBox setDir _dirAmmoBox;
	BWI_logistics_FOB_AmmoBox enableSimulation false;
	BWI_logistics_FOB_AmmoBox allowDamage false;
	_surfaceNormal = surfaceNormal position BWI_logistics_FOB_AmmoBox;
	BWI_logistics_FOB_AmmoBox setVectorUp _surfaceNormal;
	
	BWI_logistics_FOB_Table1 = createVehicle ['Land_WoodenTable_large_F', _posTable1, [], 0, 'CAN_COLLIDE'];
	BWI_logistics_FOB_Table1 setDir ( _dirTable1 - 90 );
	BWI_logistics_FOB_Table1 enableSimulation false;
	BWI_logistics_FOB_Table1 allowDamage false;
	_surfaceNormal = surfaceNormal position BWI_logistics_FOB_Table1;
	BWI_logistics_FOB_Table1 setVectorUp _surfaceNormal;
	
	BWI_logistics_FOB_Table2 = createVehicle ['Land_WoodenTable_large_F', _posTable2, [], 0, 'CAN_COLLIDE'];
	BWI_logistics_FOB_Table2 setDir ( _dirTable2 );
	BWI_logistics_FOB_Table2 enableSimulation false;
	BWI_logistics_FOB_Table2 allowDamage false;
	_surfaceNormal = surfaceNormal position BWI_logistics_FOB_Table2;
	BWI_logistics_FOB_Table2 setVectorUp _surfaceNormal;
	
	BWI_logistics_FOB_Board = createVehicle ['MapBoard_seismic_F', _posBoard, [], 0, 'CAN_COLLIDE'];
	BWI_logistics_FOB_Board setDir ( _dirBoard );
	BWI_logistics_FOB_Board enableSimulation false;
	BWI_logistics_FOB_Board allowDamage false;
	_surfaceNormal = surfaceNormal position BWI_logistics_FOB_Board;
	BWI_logistics_FOB_Board setVectorUp _surfaceNormal;

	player removeItem "BWI_logistics_fobBox";
	
	publicVariable "BWI_logistics_FOB_Flag";
	BWI_logistics_FOB_Flag addAction ["<t color='#1111ff'>Deconstruct FOB</t>", "BWI\scripts\repackageFOB.sqf", [], 1.5, false, false, "", "('ToolKit' in items _this)"];
	publicVariable "BWI_logistics_FOB_Net";
	publicVariable "BWI_logistics_FOB_AmmoBox";
	publicVariable "BWI_logistics_FOB_Table1";
	publicVariable "BWI_logistics_FOB_Table2";
	publicVariable "BWI_logistics_FOB_Board";
//	[_player, BWI_logistics_FOB_Flag, BWI_logistics_FOB_Net, BWI_logistics_FOB_AmmoBox, BWI_logistics_FOB_Table] remoteExecCall ["BWI_fnc_AddNewFOB"];
}, {}, "Deploying FOB", {true}, []] call ace_common_fnc_progressBar;