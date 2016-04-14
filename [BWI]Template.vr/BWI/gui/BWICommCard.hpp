class BWICommCard
{
	idd = 5000;
	movingenable = 0;
	onLoad = "_this call compile preprocessFileLineNumbers 'BWI\gui\scripts\BWICommCard_initCommCard.sqf'";
	
	class ControlsBackground
	{
		class CommCard : RscPicture
		{
			idc = 1200;
			text = "BWI\gui\commCard.paa";
			x = 0.0926562 * safezoneW + safezoneX;
			y = 0.137 * safezoneH + safezoneY;
			w = 0.840469 * safezoneW;
			h = 0.726 * safezoneH;
		};
	};
	
	class Controls
	{
		class lblSlotPicked: RscStructuredText
		{
			idc = 1000;
			x = 0.102969 * safezoneW + safezoneX;
			y = 0.808 * safezoneH + safezoneY;
			w = 0.38 * safezoneW;
			h = 0.033 * safezoneH;
		};
	};
};