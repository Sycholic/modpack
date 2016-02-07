class CfgPatches
{
	class BWI_Support
	{
		units[] = {};
		weapons[] = {"BWI_logistics_fobBox"};
		ammo[]={};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_Structures_F_Items"};
	};
};

class CfgWeapons
{
	class ItemCore;
	class ACE_ItemCore;
	class InventoryItem_Base_F;
	
	class BWI_medical_tentBox : ACE_ItemCore
	{
		scope=2;
		model = "\BWI_Support\model\medicalTentBox.p3d";
		picture="\BWI_Support\pictures\medicalTentBox_logo.paa";
		displayName = "Medical Tent";
		
		class ItemInfo : InventoryItem_Base_F
		{
			mass = 120;
		};
	};
	
	class BWI_logistics_fobBox : ACE_ItemCore
	{
		scope=2;
		model = "\BWI_Support\model\fobBox.p3d";
		picture="\BWI_Support\pictures\fobBox_logo.paa";
		displayName = "FOB";
		
		class ItemInfo : InventoryItem_Base_F
		{
			mass = 120;
		};
	};
};
