
alterSpieler = _this select 0;
[alterSpieler, [player, "DOF_var_SavedInventory"]] call BIS_fnc_saveInventory; //Speichert das Inventar in der ID
alterSpieler spawn {hideBody _this; sleep 5; deleteVehicle _this};  //Script löscht den toten Körper nach 5 Sekunden und damit auch dessen Waffen
waituntil {sleep 1; alive player};
[player, [player, "DOF_var_SavedInventory"]] call BIS_fnc_loadInventory;