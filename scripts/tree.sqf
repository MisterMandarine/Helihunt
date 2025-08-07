_civilians = [civ1, civ2, civ3]; // List your civilians

civilian setFriend [civilian, 0];
west setFriend [west, 0];

{
    _x doTarget player_1;
    _x doFire player_1;
    _x setCombatMode "RED";
    _x setSkill 0.6;
} forEach _civilians;
