player setVariable ["ace_medical_medicClass", 2];

removeAllItems player;
removeBackpack player;

player addBackpack "B_Carryall_khk";
[player, "CM"] call BWI_fnc_AddMedical;