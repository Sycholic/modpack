_markerArray = ["tp_compas1", "tp_compas2", "tp_compas3", "tp_compas4", "tp_compas5"];
_pos = getmarkerpos (_markerArray select floor (random (count _markerArray)));

player linkItem "ItemMap";
player linkItem "ItemCompass";
player addBackpack "tf_rt1523g_big_bwmod";
player SetPos _pos;