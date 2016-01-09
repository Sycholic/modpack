class CfgPatches
{
	class BWI_Cube
	{
		units[] = {};
		weapons[] = {"BWI_medical_tentBox"};
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
		model = "\BWI_medical_tentBox\model\medicalTentBox.p3d";
		picture="\BWI_medical_tentBox\pictures\medicalTentBox_logo.paa";
		displayName = "Medical Tent";
		
		class ItemInfo : InventoryItem_Base_F
		{
			mass = 120;
		};
	};
};
