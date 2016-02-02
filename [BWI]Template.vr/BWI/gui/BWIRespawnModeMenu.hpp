class showRespawnModeMenu
{
	idd = 7000;
	movingenable = 0;
	onLoad = "_this call compile preprocessFileLineNumbers 'BWI\gui\scripts\BWIRepawnModeMenu_initRespawnModeMenu.sqf'";
	
	
	class ControlsBackground
	{
		class bgdSelectRespawnMode : RscText
		{
			idc = 1200;
			x = 5 * GUI_GRID_W + GUI_GRID_X;
			y = 8 * GUI_GRID_H + GUI_GRID_Y;
			w = 32 * GUI_GRID_W;
			h = 7.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,1};
		};
	};
	
	class Controls
	{
		class btnOk: BWIButton
		{
			idc = 1600;
			text = "Save"; //--- ToDo: Localize;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 9 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
			
			onMouseButtonClick = "[ctrlParent (_this select 0)] call BWI_gui_fnc_saveRespawnMode;";
		};
		
		class btnCancel: BWIButton
		{
			idc = 1601;
			text = "Cancel"; //--- ToDo: Localize;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 13 * GUI_GRID_H + GUI_GRID_Y;
			w = 9 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
			
			onMouseButtonClick = "closeDialog 2;";
		};
		
		class lblHeader: RscText
		{
			idc = 1001;
			x = 5 * GUI_GRID_W + GUI_GRID_X;
			y = 8 * GUI_GRID_H + GUI_GRID_Y;
			w = 32 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0.275,0.463,0.694,1};
		};
		
		class listRespawnMode: RscListbox
		{
			idc = 1500;
			x = 13.5 * GUI_GRID_W + GUI_GRID_X;
			y = 11 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
		};
	};	
};
