// Define an array of weapon classes to choose from
_weaponArray = [
    "arifle_Katiba_F",
    "arifle_MX_F",
    "arifle_MX_Black_F",
    "arifle_TRG21_F",
    "SMG_01_F",
    "SMG_02_F",
    "hgun_P07_F",
    "LMG_Mk200_F",
    "srifle_EBR_F",
	"launch_RPG32_F",
	"hgun_Pistol_Signal_F",
	"launch_RPG7_F",
	"SMG_03_khaki",
	"srifle_LRR_camo_F",
	"srifle_DMR_01_F"
];

// Define an array of marker names where weapons will be spawned
_markerArray = ["marker1", "marker1_1", "marker1_2", "marker1_3", "marker1_4", "marker1_5", "marker1_6", "marker1_7", 
"marker1_8", "marker1_9", "marker1_10", "marker1_11", "marker1_12", "marker1_13", "marker1_14", 
"marker1_15", "marker1_16", "marker1_17", "marker1_18", "marker1_19", "marker1_20", "marker1_21", 
"marker1_22", "marker1_23", "marker1_24", "marker1_25", "marker1_26", "marker1_27", "marker1_28", 
"marker1_29", "marker1_30", "marker1_31", "marker1_32", "marker1_33", "marker1_34", "marker1_35", 
"marker1_36", "marker1_37", "marker1_38", "marker1_39", "marker1_40", "marker1_41", "marker1_42", 
"marker1_43", "marker1_44", "marker1_45", "marker1_46", "marker1_47", "marker1_48", "marker1_49"];

// Iterate through each marker
{
    // Get the marker position
    _pos = getMarkerPos _x;
    
    // Select a random weapon from the array
    _randomWeapon = selectRandom _weaponArray;
    
    // Create the weapon box (ammo crate) at the marker position
    _weaponBox = createVehicle ["VirtualReammoBox_small_F", _pos, [], 0, "NONE"];
    
    // Add the randomly selected weapon to the box
    _weaponBox addWeaponCargoGlobal [_randomWeapon, 1];
    
    // Optionally, you can add some magazines to the box
    _magazines = getArray (configFile >> "CfgWeapons" >> _randomWeapon >> "magazines");
    {
        _weaponBox addMagazineCargoGlobal [_x, 3];
    } forEach _magazines;
    
    // Optionally, you can add some attachments or other items
    _attachments = getArray (configFile >> "CfgWeapons" >> _randomWeapon >> "WeaponSlotsInfo" >> "CowsSlot" >> "compatibleItems");
    {
        _weaponBox addItemCargoGlobal [_x, 1];
    } forEach _attachments;

} forEach _markerArray;
