private _object = cheat;
private _marker = "cheat1";
private _height = 14.7; // Desired height in meters

private _markerPos = getMarkerPos _marker;
private _newPos = [_markerPos select 0, _markerPos select 1, _height];

_object setPosATL _newPos;