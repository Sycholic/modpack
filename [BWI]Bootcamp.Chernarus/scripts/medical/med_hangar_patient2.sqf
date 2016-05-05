_patient2 = patient2;
_patient2 addAction 
[
    "Bullet Injury", 
    {
        private _bodypart = ["head", "body", "arm_r", "arm_l", "leg_r", "leg_l"];
        [unit2, 0.8,(_bodypart select (floor (random (count _bodypart)))), "bullet"] call ace_medical_fnc_addDamageToUnit;
    }
];
_patient2 addAction 
[
    "Grenade Injury", 
    {
        private _bodypart = ["head", "body", "arm_r", "arm_l", "leg_r", "leg_l"];
        [unit2, 0.8,(_bodypart select (floor (random (count _bodypart)))), "grenade"] call ace_medical_fnc_addDamageToUnit;
    }
];
_patient2 addAction 
[
    "Explosives Injury", 
    {
        private _bodypart = ["head", "body", "arm_r", "arm_l", "leg_r", "leg_l"];
        [unit2, 0.8,(_bodypart select (floor (random (count _bodypart)))), "explosive"] call ace_medical_fnc_addDamageToUnit;
    }
];
_patient2 addAction 
[
    "Shell Injury", 
    {
        private _bodypart = ["head", "body", "arm_r", "arm_l", "leg_r", "leg_l"];
        [unit2, 0.8,(_bodypart select (floor (random (count _bodypart)))), "shell"] call ace_medical_fnc_addDamageToUnit;
    }
];
_patient2 addAction 
[
    "Vehicle Crash Inury", 
    {
        private _bodypart = ["head", "body", "arm_r", "arm_l", "leg_r", "leg_l"];
        [unit2, 0.8,(_bodypart select (floor (random (count _bodypart)))), "vehiclecrash"] call ace_medical_fnc_addDamageToUnit;
    }
];
_patient2 addAction 
[
    "Backblast Injury", 
    {
        private _bodypart = ["head", "body", "arm_r", "arm_l", "leg_r", "leg_l"];
        [unit2, 0.8,(_bodypart select (floor (random (count _bodypart)))), "backblast"] call ace_medical_fnc_addDamageToUnit;
    }
];
_patient2 addAction 
[
    "Stab Injury", 
    {
        private _bodypart = ["head", "body", "arm_r", "arm_l", "leg_r", "leg_l"];
        [unit2, 0.8,(_bodypart select (floor (random (count _bodypart)))), "stab"] call ace_medical_fnc_addDamageToUnit;
    }
];
_patient2 addAction 
[
    "Punch Injury", 
    {
        private _bodypart = ["head", "body", "arm_r", "arm_l", "leg_r", "leg_l"];
        [unit2, 0.8,(_bodypart select (floor (random (count _bodypart)))), "punch"] call ace_medical_fnc_addDamageToUnit;
    }
];
_patient2 addAction 
[
    "Fall Injury", 
    {
        private _bodypart = ["head", "body", "arm_r", "arm_l", "leg_r", "leg_l"];
        [unit2, 0.8,(_bodypart select (floor (random (count _bodypart)))), "falling"] call ace_medical_fnc_addDamageToUnit;
    }
];
_patient2 addAction 
[
    "Rope Burns", 
    {
        private _bodypart = ["head", "body", "arm_r", "arm_l", "leg_r", "leg_l"];
        [unit2, 0.8,(_bodypart select (floor (random (count _bodypart)))), "ropeburn"] call ace_medical_fnc_addDamageToUnit;
    }
];