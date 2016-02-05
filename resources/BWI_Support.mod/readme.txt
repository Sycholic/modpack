BWI Support mod build instructions:

Required programs:
- Blender (free on Steam)
- Arma 3 Toolbox for Blender ( http://www.armaholic.com/page.php?id=20519 )
- GIMP ( free, https://www.gimp.org/downloads/ )
- Arma 3 Tools

\Blender\MedicalTentBox.blend: 3D Project file of the medical tent box for blender.
\Blender\MedicalTentBox.blend: 3D Project file of the FOB box for blender.

\Gimp\fobBox.xcf: Project file for GIMP used for texturizing the 3D model.
\Gimp\fobBox_logo.xcf: Project file for GIMP used for making the Arsenal Icon.
\Gimp\fobBox_uvunwrap.png: File depicting the outlines of the 3D model. The four large boxes are bottom -> top -> side left -> side right
\Gimp\tentBox.xcf: Project file for GIMP used for texturizing the 3D model.
\Gimp\tentBox_logo.xcf: Project file for GIMP used for making the Arsenal Icon.
\Gimp\tentBox_uvunwrap.png: File depicting the outlines of the 3D model. The four large boxes are bottom -> top -> side left -> side right
\Gimp\logo_1024.png: BW International logo
\Gimp\redcross.png: Medical/Redcross
\Gimp\crate0_diffuse.png: Texture used for the crate.
\Gimp\crate0_bump.png: Bumpmap of the crate (currently not used, maybe for future use)
\Gimp\crate0_normal.png: Normalmap for the crate (currently not used, maybe for future use)

BWI_Support\config.cpp: Addon definitions
BWI_Support\model\fobBox.p3d: 3D Arma model of the FOB box
BWI_Support\model\medicalTentBox.p3d: 3D Arma model of the tent box
BWI_Support\pictures\fobBox_logo.paa: Icon of the box in the arsenal
BWI_Support\pictures\medicalTentBox_logo.paa: Icon of the box in the arsenal
BWI_Support\textures\fobBox_co.paa: Color texture of the box. Created from the \Gimp\fobBox.xcf.
BWI_Support\textures\medicalTentBox_co.paa: Color texture of the box. Created from the \Gimp\tentBox.xcf.

1. Setup development environment
Download Arma 3 Tools from Steam and open it.
On the bottom you will find the button "Mount P: drive". Click on it and a new disk will appear on your computer.
Copy the folder "BWI_Support" to the P drive root.
Open Addon Builder:
Addon source directory: P:\BWI_Support
Destination directory: Whereever you want the packed pbo (e.g. D:\Games\Steam\steamapps\common\Arma 3\@BWI_Test\addons)

Check "Clear temp folder", "Binarize" and "Binarize all textures". Signing output pbo is optional.

Click on Options:
List of files to copy directly : *.pac;*.paa;*.rtm;*.sqf;*.sqs;*.tga;*.fsm;*.wss;*.ogg;*.wav;*.fxy;*.csv;*.html;*.lip;*.txt;*.hpp;*.p3d
AddonPrefix : empty (for now, might change)
Signature File: not used
Path to temp folder : <default>
Path to project folder: P:\
Author : BlackwatchInternational
Exclusion pattern list filename : check "use default"

Click on the Tools tab.
Uncheck every tick and choose specific programs for all exe's:
- P:\CfgConvert\CfgConvert.exe
- P:\Binarize\binarize.exe
- P:\FileBank\FileBank.exe
- P:\DSSignFile\DSSignFile.exe

2. Changing the model:
Download Blender (current version 2.76b)
Install the Arma 3 Blender Toolbox.
Open the model in Blender. (NOTE: you will notice that the box is lying on the side. This is because Arma automaticall rotates weapons by 90 degress around the X-axis when you drop them on the ground.)
Go to Edit Mode, hit A, press "r" then "x" type "90" on the numpad and hit "enter". The model should be correctly rotated.
Make changes to vertices or whatever should be changed.
Rotate the box again: Go to Edit Mode, hit A, press "r" then "x" type "90" then hit the "-" key on the numpad and hit "enter".
Export as Arma p3d to P:\BWI_Support\model\(medicalTentBox or fobBox).p3d.
The model needs to be opened and saved with Object Builder once in order to work properly.
Goto Arma 3 Tools -> Object Builder -> open the exported p3d -> hit Save and close Object Builder again.

3. Changing the Item definitions
All definitions are in the config.cpp.

4. Changing the texture
You will find the GIMP project in the folder mentioned above. Open it. Have the the uvunwrap layer visible as a reference for bounding boxes.
Make your changes and make the uv unwrap layer invisible again afterwards. Save the GIMP project and  also hit "Export as". Save the image as PNG in a temporary location.
Go into Arma 3 Tools and open TexView2. Open the exported PNG and click Save As. Select the texture as a .paa at: BWI_Support\textures\(fobBox or medicalTentBox)_co.paa
Always make sure that the exported PNG's dimensions are to the power of 2. 512, 1024, 2048, 4096 (max). 1024x1024 is sufficient for the small box that we have.

5. Changing the icon
To change the Arsenal icon of the medical tent box. Open the GIMP project at \Gimp\(fobBox or tentBox)_logo.xcf. Make your changes and export the image to a PNG at a temporary location.
Go into Arma 3 Tools and open TexView2. Open the exported PNG and click Save As. Select the texture as a .paa at: BWI_Support\pictures\(fobBox or medicalTentBox)_logo.paa.
Always make sure that the exported PNG's dimensions are to the power of 2. We are using 16px x 16px.

6. Making the PBO
If all changes have been made, goto Addon Builder and hit "Pack". The PBO should then appear in the defined output directory.
