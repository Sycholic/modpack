class BWIArmory
{
	
	idd = 6000;
	movingenable = 0;
	onLoad = "_this call compile preprocessFileLineNumbers 'BWI\gui\scripts\BWIArmory_initArmory.sqf'";
	
	class ControlsBackground
	{
		class ArmoryBackground: RscPicture
		{
			idc = 1000;
			text = "BWI\gui\armoryBgd.paa";
			x = 1 * GUI_GRID_W + GUI_GRID_X;
			y = -3 * GUI_GRID_H + GUI_GRID_Y;
			w = 38.5 * GUI_GRID_W;
			h = 30 * GUI_GRID_H;
		};
	};
	
	class Controls
	{
		class btnSelect: BWIButton
		{
			idc = 1600;
			text = "Select Loadout"; //--- ToDo: Localize;
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 23.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 8 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
			
			onMouseButtonClick = "[ctrlParent (_this select 0)] call BWI_gui_fnc_selectLoadout;";
		};
		
		class btnCancel: BWIButton
		{
			idc = 1601;
			text = "Cancel";
			x = 20 * GUI_GRID_W + GUI_GRID_X;
			y = 23.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 8 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
			onMouseButtonClick = "closeDialog 2;";
		};
		
		class tvFaction: BWITreeView
		{
			idc = 1001;
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13.5 * GUI_GRID_W;
			h = 16 * GUI_GRID_H;
		};
		
		class tvRole: BWITreeView
		{
			idc = 1002;
			x = 22 * GUI_GRID_W + GUI_GRID_X;
			y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13.5 * GUI_GRID_W;
			h = 15.963 * GUI_GRID_H;
		};
		
		class lblSide: RscText
		{
			idc = 1003;
			text = "Side:"; //--- ToDo: Localize;
			x = 5 * GUI_GRID_W + GUI_GRID_X;
			y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
		};

		class lblRoles: RscText
		{
			idc = 1004;
			text = "Role:"; //--- ToDo: Localize;
			x = 21.94 * GUI_GRID_W + GUI_GRID_X;
			y = 4.08 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
		};
		
		class lblFaction: RscText
		{
			idc = 1005;
			text = "Faction:"; //--- ToDo: Localize;
			x = 5 * GUI_GRID_W + GUI_GRID_X;
			y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
		};
		
		class xlistSide: BWIXListbox
		{
			idc = 1006;
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10.7879 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0.275,0.463,0.694,1};
			
			onLBSelChanged = "[ctrlParent (_this select 0)] call BWI_gui_fnc_displayTreeViewEntries; true";
		};
		
		class lblError: RscStructuredText
		{
			idc = 1007;
			x = 3.52 * GUI_GRID_W + GUI_GRID_X;
			y = 23.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 15.5152 * GUI_GRID_W;
			h = 2.72727 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,0,0,1};
		};
		
		class lblSlotPicked: RscStructuredText
		{
			idc = 1008;
			x = 1.55 * GUI_GRID_W + GUI_GRID_X;
			y = 25.48 * GUI_GRID_H + GUI_GRID_Y;
			w = 36.8485 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		
		class xlistRoleSelection: BWIXListbox
		{
			idc = 1009;
			x = 25.5 * GUI_GRID_W + GUI_GRID_X;
			y = 5 * GUI_GRID_H + GUI_GRID_Y;
			w = 12 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0.275,0.463,0.694,1};
			
			onLBSelChanged = "[ctrlParent (_this select 0)] call BWI_gui_fnc_displayTreeViewEntries; true";
		};
	};
};
// 