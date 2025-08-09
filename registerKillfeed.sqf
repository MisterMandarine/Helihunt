#include "killfeed_config.hpp"

if (!hasInterface) exitWith {};

player addMPEventHandler ["MPKilled", {
    params ["_unit", "_killer"];

    private _weapon     = currentWeapon _killer;
    private _killedName = name _unit;
    private _killerName = name _killer;
    private _weaponName = getText (configFile >> "CfgWeapons" >> _weapon >> "displayName");
    private _distance   = round (_killer distance _unit);

    private _text = if (_killer isEqualTo _unit) then {
        format ["<t color='%1'>%2</t>", KF_COLOR_SELF, format ["%1 hat sich selbst getötet", _killerName]]
    } else {
        format ["<t color='%1'>%2</t>", KF_COLOR_KILL, format ["%1 killed %2 mit einer %3 von %4 Metern Entfernung", _killerName, _killedName, _weaponName, _distance]]
    };

    [_text] execVM "scripts/showKillfeed.sqf";
}];
