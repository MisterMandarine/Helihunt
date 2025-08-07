private _object1 = poweruporb;
private _object2 = powerupzone;
private _marker = "powerupparkplatz";
private _height = 0;

if (isServer) then {
    [_object2, [_object1, [0, 0, 0]]] remoteExec ["attachTo", 0, true];

    private _markerPos = getMarkerPos _marker;
    private _newPos = [_markerPos select 0, _markerPos select 1, _height];

    [_object1, _newPos] remoteExec ["setPosATL", 0, true];
};
