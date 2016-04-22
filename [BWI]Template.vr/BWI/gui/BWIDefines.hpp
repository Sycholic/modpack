#define BWI_SIDE_WEST 			0
#define BWI_SIDE_EAST 			1

#define BWI_FACTION_USMC   		0
#define BWI_FACTION_USARMY 		1
#define BWI_FACTION_BLACKOPS 	2
#define BWI_FACTION_UK			3
#define BWI_FACTION_GERBW		4
#define BWI_FACTION_US1985 		5

#define BWI_USMC_DESERT			0
#define BWI_USMC_WOOD			1
#define BWI_USARMY_OCP			0
#define BWI_USARMY_UCP			1
#define BWI_GERBW_DESERT		0
#define BWI_GERBW_WOOD			1

class BWITreeView
{
	access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
	idc = -1;
	type = CT_TREE; // Type
	style = ST_LEFT; // Style
	default = 0; // Control selected by default (only one within a display can be used)
	blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.
	
	x = 0; // Horizontal coordinates
	y = 0; // Vertical coordinates
	w = 0; // Width
	h = 0; // Height

	colorBorder[] = {0.5,0.5,0.5,1}; // Frame color
	colorBackground[] = {0.1,0.1,0.1,1}; // Fill color
	colorSelect[] = {0.275,0.463,0.694,1}; // Selected item fill color (when multiselectEnabled is 0)
	colorMarked[] = {0.275,0.463,0.694,1}; // Selected item fill color (when multiselectEnabled is 0)
	colorText[] = {1,1,1,1}; // Text color
	colorSelectText[] = {1,1,1,1}; // Selected text color (when multiselectEnabled is 0)
	colorMarkedText[] = {1,1,1,1}; // Selected text color (when multiselectEnabled is 1)
	colorMarkedSelected[] = {0.275,0.463,0.694,1}; // Selected item fill color (when multiselectEnabled is 1)

	sizeEx = GUI_GRID_CENTER_H; // Text size
	font = GUI_FONT_NORMAL; // Font from CfgFontFamilies
	shadow = 1; // Shadow (0 - none, 1 - N/A, 2 - black outline)

	multiselectEnabled = 0; // Allow selecting multiple items while holding Ctrl or Shift
	expandOnDoubleclick = 0; // Expand/collapse item upon double-click
	hiddenTexture = "A3\ui_f\data\gui\rsccommon\rsctree\hiddenTexture_ca.paa"; // Expand icon
	expandedTexture = "A3\ui_f\data\gui\rsccommon\rsctree\expandedTexture_ca.paa"; // Collapse icon
	maxHistoryDelay = 1; // Time since last keyboard type search to reset it

	// Scrollbar configuration
	class ScrollBar
	{
		width = 0; // Unknown?
		height = 0; // Unknown?
		scrollSpeed = 0.01; // Unknown?

		arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa"; // Arrow
		arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa"; // Arrow when clicked on
		border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa"; // Slider background (stretched vertically)
		thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa"; // Dragging element (stretched vertically)

		color[] = {1,1,1,1}; // Scrollbar color
	};

	colorDisabled[] = {0,0,0,0}; // Does nothing, but must be present, otherwise an error is shown
	colorArrow[] = {0,0,0,0}; // Does nothing, but must be present, otherwise an error is shown
};

class BWIXListbox
{
	access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
	idc = CT_XLISTBOX; // Control identification (without it, the control won't be displayed)
	type = CT_XLISTBOX; // Type
	style = SL_HORZ + ST_CENTER + LB_TEXTURES; // Style
	default = 0; // Control selected by default (only one within a display can be used)
	blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.

	x = 0; // Horizontal coordinates
	y = 0; // Vertical coordinates
	w = 0; // Width
	h = 0; // Height

	color[] = {1,1,1,1}; // Arrow color
	colorActive[] = {1,1,1,1}; // Selected arrow color

	sizeEx = GUI_GRID_CENTER_H; // Text size
	font = GUI_FONT_NORMAL; // Font from CfgFontFamilies
	shadow = 0; // Shadow (0 - none, 1 - N/A, 2 - black outline)
	colorText[] = {1,1,1,1}; // Text color
	colorSelect[] = {1,1,1,1}; // Selected text color
	colorDisabled[] = {1,1,1,0.5}; // Disabled text color

	arrowEmpty = "\A3\ui_f\data\gui\cfg\slider\arrowEmpty_ca.paa"; // Arrow
	arrowFull = "\A3\ui_f\data\gui\cfg\slider\arrowFull_ca.paa"; // Arrow when clicked on
	border = "\A3\ui_f\data\gui\cfg\slider\border_ca.paa"; // Fill texture

	soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1}; // Sound played when an item is selected
};

class BWIButton: RscButton
{
	blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.
	colorFocused[] = {0.275,0.463,0.694,1};
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.275,0.463,0.694,1};
	colorActive[] = {0.275,0.463,0.694,1};
	colorBackgroundActive[] = {0.6,0.78,1,1};
	period = 0; // Oscillation time between colorBackground and colorFocused when selected
	sizeEx = GUI_GRID_CENTER_H; // Text size
	font = GUI_FONT_NORMAL; // Font from CfgFontFamilies	
};

class BWIComboBox: RscCombo
{
	access = 0;
	type = CT_COMBO;
	style = ST_LEFT + LB_TEXTURES;
	blinkingPeriod = 0;
	
	arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_ca.paa"; // Expand arrow
	arrowFull = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_active_ca.paa"; // Collapse arrow

	wholeHeight = 0.25;
	colorSelect[] = {1,1,1,1};
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.1,0.1,0.1,1};
	colorSelectBackground[] = {0.275,0.463,0.694,1}; // Selected item fill color
	font = GUI_FONT_NORMAL;
	sizeEx = GUI_GRID_CENTER_H;
	soundSelect[] = {"",0.1,1};
	soundExpand[] = {"",0.1,1};
	soundCollapse[] = {"",0.1,1};
	maxHistoryDelay = 1.0;
	shadow = 0;
	
	pictureColor[] = {1,0.5,0,1}; // Picture color
	pictureColorSelect[] = {1,1,1,1}; // Selected picture color
	pictureColorDisabled[] = {1,1,1,0.5}; // Disabled picture color
	
	class ComboScrollBar
	{
		color[] = {0.8,0.8,0.8,1};
		colorActive[] = {0.275,0.463,0.694,1};
		colorDisabled[] = {1,1,1,1};
		arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa"; // Arrow
		arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa"; // Arrow when clicked on
		border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa"; // Slider background (stretched vertically)
		thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa"; // Dragging element (stretched vertically)
		shadow = 0;
	};
};