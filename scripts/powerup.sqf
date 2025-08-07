for "_i" from 1 to 30 do {
sleep 40;
private _powerupspawnpunkte = ["powerup_1", "powerup_2", "powerup_3", "powerup_4", "powerup_5", "powerup_6", "powerup_7", "powerup_8", "powerup_9", "powerup_10", "powerup_11", "powerup_12", "powerup_13", "powerup_14", "powerup_15", "powerup_16", "powerup_17", "powerup_18", "powerup_19", "powerup_20"];
private _object1 = poweruporb;
private _object2 = powerupzone;
private _marker = selectRandom _powerupspawnpunkte;
private _height = 30;

private _markerPos = getMarkerPos _marker;
private _newPos = [_markerPos select 0, _markerPos select 1, _height];

_object1 setPosATL _newPos;
_object2 setPosATL _newPos;
};