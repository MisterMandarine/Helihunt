while {true} do
				{
					waituntil {KillfeedR};
					if (KFkiller == KFunit) then {
					cutrsc ["killfeed1","PLAIN"];
					((uiNamespace getVariable "killfeed1") displayCtrl 1000) ctrlSetText Format["%1",Gkillfeed1];
						} else {
					cutrsc ["killfeed2","PLAIN"];
					((uiNamespace getVariable "killfeed2") displayCtrl 1001) ctrlSetText Format["%1",Gkillfeed2];
					};
					KillfeedR = false;
				};