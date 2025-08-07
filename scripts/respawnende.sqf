    deleteMarker "respawn_east";
    deleteMarker "respawn_east_1";
    deleteMarker "respawn_east_2";
    deleteMarker "respawn_east_3";

sleep 2;
_spl1Pos = getMarkerPos "endespawn";
_newMarker = createMarker ["respawn_east", _spl1Pos];
_newMarker setMarkerType "Empty";