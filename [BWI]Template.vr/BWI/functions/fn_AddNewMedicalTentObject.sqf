params ["_creator", "_tentObject"];

_tentObject setVariable ["ace_medical_isMedicalFacility", true];

_squad 			= (str player) select [6,3];
_platoonRole 	= (str player) select [10,3];

if( _squad == "log" && _platoonRole == "eng" ) then {
	_tentObject addAction ["<t color='#1111ff'>Deconstruct Medical Tent</t>", "BWI\scripts\repackageMedicalTent.sqf", [], 1.5, false, false, "", "('ToolKit' in items _this)"];
};