if(isServer)then{
_pos=	(_this select 0);
_pos0=	(_pos select 0);
_pos1=	(_pos select 1);
_pos2=	(_pos select 2);


	_BARREL = createVehicle ["Land_BarrelEmpty_F",[_pos0,_pos1,_pos2+0.1], [], 0, "can_Collide"];
		sleep 0.5;
		_holder = createVehicle ["groundweaponholder",[_pos0,_pos1,(getposATL _BARREL select 2)], [], 0, "can_Collide"];
			deletevehicle _BARREL;
			
_type=floor (random 2);


						
// Spawn Weapon
 if (_type == 0) 
		then {
	_weapon= weaponsLoot call bis_fnc_selectRandom; 
	
		_magazines = getArray (configFile / "CfgWeapons" / _weapon / "magazines");
		_magazineClass = _magazines call bis_fnc_selectRandom; 

	_holder addWeaponCargoGlobal [_weapon, 1];
	 _holder addMagazineCargoGlobal [_magazineClass, 5];
				};
					
					
// Spawn Items
 if (_type == 1) 
		then {
	_item= itemsLoot call bis_fnc_selectRandom;
	 _holder addItemCargoGlobal [_item, 1];

				};	
};//IsServer 