_heliweg = false;
if (!isNil "heli1" and _heliweg == false) then {
        deleteVehicle heli1;
		_heliweg = true;
		sleep 1;
		} else {
		_heliweg = true;
		hint "penis";
    };