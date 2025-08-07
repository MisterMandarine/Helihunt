player addMPEventHandler ["MPKilled", {
	params ["_unit", "_killer", "_instigator", "_useEffects"];
	_weapon = currentWeapon _killer;
	_killedName = name _unit;
	_killerName = name _killer;
	_weaponName = getText (configFile >> "CfgWeapons" >> _weapon >> "displayName");
	_distance = round (_killer distance _unit);
	_killfeed1 = format ["%1 hat sich selbst getötet", _killerName];
	_killfeed2 = format ["%1 killed %2 mit einer %3 von %4 Metern entfernung", _killerName, _killedName, _weaponName, _distance];
	Gkillfeed1 = _killfeed1;
	Gkillfeed2 = _killfeed2;
	KFkiller   = _killer;
	KFunit     = _unit;
	publicVariable "Gkillfeed1";
	publicVariable "Gkillfeed2";
	publicVariable "KFkiller";
	publicVariable "KFunit";
	KillfeedR = true
}];
