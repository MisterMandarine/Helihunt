private _object1 = poweruporb;
private _object2 = powerupzone;
private _marker = "powerupparkplatz";
private _height = 0;

private _markerPos = getMarkerPos _marker;
private _newPos = [_markerPos select 0, _markerPos select 1, _height];

_object1 setPosATL _newPos;
_object2 setPosATL _newPos;
