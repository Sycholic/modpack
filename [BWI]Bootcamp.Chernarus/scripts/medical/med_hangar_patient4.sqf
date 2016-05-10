_patient4 = patient4;
_patient4 addAction 
[
    "Bullet Injury", 
    {
        private _bodypart = ["head", "body", "arm_r", "arm_l", "leg_r", "leg_l"];
        [unit4, 0.8,(_bodypart select (floor (random (count _bodypart)))), "bullet"] call ace_medical_fnc_addDamageToUnit;
    }
];
_patient4 addAction 
[
    "Grenade Injury", 
    {
        private _bodypart = ["head", "body", "arm_r", "arm_l", "leg_r", "leg_l"];
        [unit4, 0.8,(_bodypart select (floor (random (count _bodypart)))), "grenade"] call ace_medical_fnc_addDamageToUnit;
    }
];
_patient4 addAction 
[
    "Explosives Injury", 
    {
        private _bodypart = ["head", "body", "arm_r", "arm_l", "leg_r", "leg_l"];
        [unit4, 0.8,(_bodypart select (floor (random (count _bodypart)))), "explosive"] call ace_medical_fnc_addDamageToUnit;
    }
];
_patient4 addAction 
[
    "Shell Injury", 
    {
        private _bodypart = ["head", "body", "arm_r", "arm_l", "leg_r", "leg_l"];
        [unit4, 0.8,(_bodypart select (floor (random (count _bodypart)))), "shell"] call ace_medical_fnc_addDamageToUnit;
    }
];
_patient4 addAction 
[
    "Vehicle Crash Inury", 
    {
        private _bodypart = ["head", "body", "arm_r", "arm_l", "leg_r", "leg_l"];
        [unit4, 0.8,(_bodypart select (floor (random (count _bodypart)))), "vehiclecrash"] call ace_medical_fnc_addDamageToUnit;
    }
];
_patient4 addAction 
[
    "Backblast Injury", 
    {
        private _bodypart = ["head", "body", "arm_r", "arm_l", "leg_r", "leg_l"];
        [unit4, 0.8,(_bodypart select (floor (random (count _bodypart)))), "backblast"] call ace_medical_fnc_addDamageToUnit;
    }
];
_patient4 addAction 
[
    "Stab Injury", 
    {
        private _bodypart = ["head", "body", "arm_r", "arm_l", "leg_r", "leg_l"];
        [unit4, 0.8,(_bodypart select (floor (random (count _bodypart)))), "stab"] call ace_medical_fnc_addDamageToUnit;
    }
];
_patient4 addAction 
[
    "Punch Injury", 
    {
        private _bodypart = ["head", "body", "arm_r", "arm_l", "leg_r", "leg_l"];
        [unit4, 0.8,(_bodypart select (floor (random (count _bodypart)))), "punch"] call ace_medical_fnc_addDamageToUnit;
    }
];
_patient4 addAction 
[
    "Fall Injury", 
    {
        private _bodypart = ["head", "body", "arm_r", "arm_l", "leg_r", "leg_l"];
        [unit4, 0.8,(_bodypart select (floor (random (count _bodypart)))), "falling"] call ace_medical_fnc_addDamageToUnit;
    }
];
_patient4 addAction 
[
    "Rope Burns", 
    {
        private _bodypart = ["head", "body", "arm_r", "arm_l", "leg_r", "leg_l"];
        [unit4, 0.8,(_bodypart select (floor (random (count _bodypart)))), "ropeburn"] call ace_medical_fnc_addDamageToUnit;
    }
];