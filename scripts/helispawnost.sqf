if (!isNil "heli1") then {
        deleteVehicle heli1;
    };
	sleep 1;
_helispawnsecond = getMarkerPos "helispawnsecond";    
_helispawnmain = getMarkerPos "helispawnmain";    
_dirVector = _helispawnmain vectorDiff _helispawnsecond;    
_height = (_helispawnsecond select 2) + 16;    
_vehicle = createVehicle ["O_Heli_Light_02_dynamicLoadout_F", _helispawnsecond, [], 0, "NONE"];  
heli1 = _vehicle;  
_vehicle setVectorDirAndUp [_dirVector, [0,0,1]];    
_vehicle setPos [_helispawnsecond select 0, _helispawnsecond select 1, _height];
execVM "scripts\heli65mm.sqf";