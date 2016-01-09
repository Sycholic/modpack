_tentObject = _this select 0;

[20, [_tentObject], {
	_tentPosition = position (_this select 0 select 0);
	deleteVehicle (_this select 0 select 0);
	_tentBox = createVehicle ['groundWeaponHolder', _tentPosition, [], 0, 'CAN_COLLIDE'];
	_tentBox addItemCargoGlobal ['BWI_medical_tentBox', 1];
}, {}, "Repackaging Tent", {true}, []] call ace_common_fnc_progressBar;