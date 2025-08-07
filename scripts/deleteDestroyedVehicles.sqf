{
    if (!alive _x) then {
        deleteVehicle _x;
    };
} forEach vehicles;
hint "Müll ist weg.";
