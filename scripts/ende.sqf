// randomTeleport.sqf
// Array of markers with manually defined 3D positions (x, y, z set to 5)
_markerArray = [
    ["endespawn", [getMarkerPos "endespawn" select 0, getMarkerPos "endespawn" select 1, 0]]

];

// Select a random marker from the array
_selectedMarker = selectRandom _markerArray;

// Get the position of the selected marker
_targetPos1 = _selectedMarker select 1;

// Teleport the player to the target position
player1 setPosATL _targetPos1;

_player = player;
// Select a random marker from the array
_selectedMarker1 = selectRandom _markerArray;

// Get the position of the selected marker
_targetPos2 = _selectedMarker1 select 1;

// Teleport the player to the target position
player2 setPosATL _targetPos2;

_player = player;
// Select a random marker from the array
_selectedMarker2 = selectRandom _markerArray;

// Get the position of the selected marker
_targetPos3 = _selectedMarker2 select 1;

// Teleport the player to the target position
player3 setPosATL _targetPos3;

_player = player;
// Select a random marker from the array
_selectedMarker3 = selectRandom _markerArray;

// Get the position of the selected marker
_targetPos4 = _selectedMarker3 select 1;

// Teleport the player to the target position
player4 setPosATL _targetPos4;

_player = player;
// Select a random marker from the array
_selectedMarker4 = selectRandom _markerArray;

// Get the position of the selected marker
_targetPos5 = _selectedMarker4 select 1;

// Teleport the player to the target position
hunter1 setPosATL _targetPos5;