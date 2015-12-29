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
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.159 * safezoneH + safezoneY;
			w = 0.397031 * safezoneW;
			h = 0.66 * safezoneH;
		};
	};
	
	class Controls
	{
			
		class btnSelect: BWIButton
		{
			idc = 1600;
			text = "Select Loadout"; //--- ToDo: Localize;
			x = 0.597969 * safezoneW + safezoneX;
			y = 0.742 * safezoneH + safezoneY;
			w = 0.0825 * safezoneW;
			h = 0.033 * safezoneH;
			
			onMouseButtonClick = "[ctrlParent (_this select 0)] call BWI_gui_fnc_selectLoadout;";
		};
		
		class btnCancel: BWIButton
		{
			idc = 1601;
			text = "Cancel";
			x = 0.5 * safezoneW + safezoneX;
			y = 0.742 * safezoneH + safezoneY;
			w = 0.0825 * safezoneW;
			h = 0.033 * safezoneH;
			onMouseButtonClick = "closeDialog 2;";
		};
		
		class tvFaction: BWITreeView
		{
			idc = 1001;
			x = 0.36 * safezoneW + safezoneX;
			y = 0.357 * safezoneH + safezoneY;
			w = 0.13 * safezoneW;
			h = 0.352 * safezoneH;
		};
		
		class tvRole: BWITreeView
		{
			idc = 1002;
			x = 0.520 * safezoneW + safezoneX;
			y = 0.35876 * safezoneH + safezoneY;
			w = 0.13 * safezoneW;
			h = 0.351186 * safezoneH;
		};
		
		class lblSide: RscText
		{
			idc = 1003;
			text = "Side:"; //--- ToDo: Localize;
			x = 0.36 * safezoneW + safezoneX;
			y = 0.26 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.055 * safezoneH;
			colorText[] = {1,1,1,1};
		};

		class lblRoles: RscText
		{
			idc = 1004;
			text = "Role:"; //--- ToDo: Localize;
			x = 0.520 * safezoneW + safezoneX;
			y = 0.314852 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.055 * safezoneH;
			colorText[] = {1,1,1,1};
		};
		
		class lblFaction: RscText
		{
			idc = 1005;
			text = "Faction:"; //--- ToDo: Localize;
			x = 0.36 * safezoneW + safezoneX;
			y = 0.313926 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.055 * safezoneH;
			colorText[] = {1,1,1,1};
		};
		
		class xlistSide: BWIXListbox
		{
			idc = 1006;
			x = 0.36 * safezoneW + safezoneX;
			y = 0.302 * safezoneH + safezoneY;
			w = 0.103125 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0.275,0.463,0.694,1};
			
			onLBSelChanged = "[ctrlParent (_this select 0), (_this select 1)] call BWI_gui_fnc_displayTreeViewEntries; true";
		};
		
		class lblError: RscStructuredText
		{
			idc = 1007;
			x = 0.33 * safezoneW + safezoneX;
			y = 0.742 * safezoneH + safezoneY;
			w = 0.16 * safezoneW;
			h = 0.06 * safezoneH;
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,0,0,1};
		};
		
		class lblSlotPicked: RscStructuredText
		{
			idc = 1008;
			x = 0.309724 * safezoneW + safezoneX;
			y = 0.785659 * safezoneH + safezoneY;
			w = 0.38 * safezoneW;
			h = 0.033 * safezoneH;
		};
	};
};
// 