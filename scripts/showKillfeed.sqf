params ["_text"];

cutRsc ["killfeed", "PLAIN"];
((uiNamespace getVariable "killfeed") displayCtrl 1000) ctrlSetStructuredText parseText _text;
