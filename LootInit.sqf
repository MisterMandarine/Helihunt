if(isServer)then{

// Set probability of loot spawning 1-100%
_probability=50;


// Set Weapon loot: Primary weapons, secondary weapons, Sidearms.
weaponsLoot=	["LMG_Mk200_F","srifle_DMR_01_F","srifle_LRR_camo_F","launch_RPG7_F","srifle_EBR_F","arifle_MX_F","arifle_Katiba_F","arifle_Mk20_F","arifle_MXM_F","arifle_MXC_F","arifle_SDAR_F","arifle_TRG20_F","arifle_TRG21_F"];
// Set items: Weapon attachments, first-aid, Binoculars
itemsLoot=		["Rangefinder","Binocular","optic_Arco","optic_Aco","optic_Holosight","optic_Nightstalker","optic_Yorris","optic_tws","FirstAidKit"];

// Exclude buildings from loot spawn. Use 'TYPEOF' to find building name
_exclusionList=	["Land_Pier_F","Land_Pier_small_F","Land_NavigLight","Land_LampHarbour_F"];

private ["_distance"];
	_mkr=(_this select 0);
	_mkr setmarkerAlpha 0;
	_pos=markerpos _mkr;
		_mkrY= getmarkerSize _mkr select 0;
		_mkrX= getmarkerSize _mkr select 1;

 _distance=_mkrX;
	if (_mkrY > _mkrX) 
			then {
			_distance=_mkrY;
			};

 _houseList= _pos nearObjects ["House",_distance];
						
		{
	_house=_X;

	if (!(typeOf _house in _exclusionList)) 
			then {

		
 for "_n" from 0 to 50 do {
 
	_buildingPos=_house buildingpos _n;
		if (str _buildingPos == "[0,0,0]") exitwith {};
					
				if (_probability > random 100) 
					then {
				null=[_buildingPos] execVM "spawnloot.sqf";
						};	
					};
				};				
	}foreach _houseList;
	
};//ISSERVER