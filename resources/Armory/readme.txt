BWI Medical Armory Instructions:

Required programs:
- GIMP ( free, https://www.gimp.org/downloads/ )
- Arma 3 Tools

ArmoryBgd.xcf: Gimp project for the ingame Armory background

Open the project in GIMP. Make your changes to the image and save the project file again.
Before exporting the image we need to bring the dimensions to the power of 2 (512, 1024, 2048, 4096 (max)).
Click on "image" -> "Scale image". For height and width, click on the chain symbol to ignore proportions.
Enter 2048 for both width and height and click on "Scale". Do NOT save the project file now!
Export the image to a PNG at a temporary location.
Open Arma 3 Tools and click on "TexView2". Open the exported PNG and save it as <GitHubRoot>\blackwatchint\[BWI]Template.vr\BWI\gui\armoryBgd.paa.
The new image will then be deployed by "deployPreset.bat".

NOTE: Arma only accepts images with a proportional dimension to the power of 2. Ingame, the image will be brought into the correct aspect ratio again through the GUI definitions in the BWIArmory.hpp:
class ArmoryBackground: RscPicture
{
	idc = 1000;
	text = "BWI\gui\armoryBgd.paa";
	x = 0.304062 * safezoneW + safezoneX;
	y = 0.159 * safezoneH + safezoneY;
	w = 0.397031 * safezoneW;				<----
	h = 0.66 * safezoneH;					<----
};