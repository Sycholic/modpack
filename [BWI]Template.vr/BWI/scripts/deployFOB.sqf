[20, [], 
{
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
	_posAmmoBox set [0, (_posPlayer select 0) + ( ( _cosineLookDir * -3 ) - ( _sineLookDir * 9 ) )];
	_posAmmoBox set [1, (_posPlayer select 1) + ( ( _sineLookDir * -3 ) + ( _cosineLookDir * 9 ) )];
	_dirAmmoBox = _dirCamoNet;
	
	_posTable = [0,0,0];
	_posTable set [0, (_posPlayer select 0) + ( ( _cosineLookDir * 2 ) - ( _sineLookDir * 9 ) )];
	_posTable set [1, (_posPlayer select 1) + ( ( _sineLookDir * 2 ) + ( _cosineLookDir * 9 ) )];
	_dirTable = _dirCamoNet;
	
	BWI_logistics_FOB_Flag = createVehicle ['Flag_US_F', _posFlag, [], 0, 'CAN_COLLIDE'];
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
	
	BWI_logistics_FOB_AmmoBox = createVehicle ['B_CargoNet_01_ammo_F', _posAmmoBox, [], 0, 'CAN_COLLIDE'];
	BWI_logistics_FOB_AmmoBox setDir _dirAmmoBox;
	BWI_logistics_FOB_AmmoBox enableSimulation false;
	BWI_logistics_FOB_AmmoBox allowDamage false;
	_surfaceNormal = surfaceNormal position BWI_logistics_FOB_AmmoBox;
	BWI_logistics_FOB_AmmoBox setVectorUp _surfaceNormal;
	clearItemCargoGlobal BWI_logistics_FOB_AmmoBox;
	clearWeaponCargoGlobal BWI_logistics_FOB_AmmoBox;
	clearMagazineCargoGlobal BWI_logistics_FOB_AmmoBox;
	BWI_logistics_FOB_AmmoBox addItemCargoGlobal ["30Rnd_556x45_Stanag", 20];
	BWI_logistics_FOB_AmmoBox addItemCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Red", 20];
	BWI_logistics_FOB_AmmoBox addItemCargoGlobal ["ACE_packingBandage", 20];
	BWI_logistics_FOB_AmmoBox addItemCargoGlobal ["ACE_fieldDressing", 20];
	BWI_logistics_FOB_AmmoBox addItemCargoGlobal ["ACE_bloodIV_500", 20];
	BWI_logistics_FOB_AmmoBox addItemCargoGlobal ["ACE_elasticBandage", 20];
	
	BWI_logistics_FOB_Table = createVehicle ['Land_WoodenTable_large_F', _posTable, [], 0, 'CAN_COLLIDE'];
	BWI_logistics_FOB_Table setDir ( _dirTable - 90 );
	BWI_logistics_FOB_Table enableSimulation false;
	BWI_logistics_FOB_Table allowDamage false;
	_surfaceNormal = surfaceNormal position BWI_logistics_FOB_Table;
	BWI_logistics_FOB_Table setVectorUp _surfaceNormal;

	player removeItem "BWI_logistics_fobBox";
	
	publicVariable "BWI_logistics_FOB_Flag";
	BWI_logistics_FOB_Flag addAction ["<t color='#1111ff'>Deconstruct FOB</t>", "BWI\scripts\repackageFOB.sqf", [], 1.5, false, false, "", "('ToolKit' in items _this)"];
	publicVariable "BWI_logistics_FOB_Net";
	publicVariable "BWI_logistics_FOB_AmmoBox";
	publicVariable "BWI_logistics_FOB_Table";
//	[_player, BWI_logistics_FOB_Flag, BWI_logistics_FOB_Net, BWI_logistics_FOB_AmmoBox, BWI_logistics_FOB_Table] remoteExecCall ["BWI_fnc_AddNewFOB"];
}, {}, "Deploying FOB", {true}, []] call ace_common_fnc_progressBar;