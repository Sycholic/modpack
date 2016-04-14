class BWIGroupIDMenu
{
	idd = 7000;
	movingenable = 0;
	onLoad = "_this call compile preprocessFileLineNumbers 'BWI\gui\scripts\BWIGroupIDMenu_initGroupIDMenu.sqf'";
	
	class ControlsBackground
	{
		class bgdBackground: RscText
		{
			idc = 1000;
			x = 0.5 * GUI_GRID_W + GUI_GRID_X;
			y = 8 * GUI_GRID_H + GUI_GRID_Y;
			w = 39.5 * GUI_GRID_W;
			h = 6 * GUI_GRID_H;
			colorBackground[] = {0.3,0.3,0.3,1};
		};
		class bgdHeader: RscText
		{
			idc = 1001;
			x = 0.5 * GUI_GRID_W + GUI_GRID_X;
			y = 8 * GUI_GRID_H + GUI_GRID_Y;
			w = 39.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0.275,0.463,0.694,1};
		};
	};
	
	class Controls
	{
		class comboGroupIDList: BWIComboBox
		{
			idc = 2100;
			x = 1.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 27.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class btnSave: BWIButton
		{
			idc = 1600;
			text = "Save"; //--- ToDo: Localize;
			x = 30.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10.29 * GUI_GRID_H + GUI_GRID_Y;
			w = 8 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class lblError: RscStructuredText
		{
			idc = 1002;
			x = 1.5 * GUI_GRID_W + GUI_GRID_X;
			y = 12.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 26 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {1,1,1,-1};
		};
	};	
};
