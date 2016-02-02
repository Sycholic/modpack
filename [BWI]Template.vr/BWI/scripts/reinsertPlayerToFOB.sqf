_fobPos = getPosATL BWI_logistics_FOB_Flag;

_randomAngle = floor random 360;
_sine = sin(_randomAngle);
_cosine = cos(_randomAngle);

_fobPos set [0, (_fobPos select 0) + (2 * _sine)];
_fobPos set [1, (_fobPos select 1) + (2 * _cosine)];
player setPosATL _fobPos;
BWI_playerCanDeploy = false;
hintSilent "";