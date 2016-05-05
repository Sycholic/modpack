player setVariable ["ace_medical_medicClass", 1];

removeAllItems player;
removeBackpack player;

player addBackpack "B_AssaultPack_rgr";
[player, "CFR"] call BWI_fnc_AddMedical;