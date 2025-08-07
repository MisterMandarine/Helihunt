class rsctitles
	{
		titles[] = {killfeed1, killfeed2};
	
		class killfeed1
		{
			idd = -1;
			movingenable = 1;
			duration = 10;
			fadein = 0;
			fadeout = 0;
			name = "killfeed1";
			onLoad = uiNamespace setVariable ["killfeed1", _this select 0];
			onUnLoad = uiNamespace setVariable ["killfeed1", nil];
			
				class controls
				{
						class killfeed_txt: RscText
						{
							idc = 1000;
							text = ""; //--- ToDo: Localize;
							x = -0.000156274 * safezoneW + safezoneX;
							y = 0.104 * safezoneH + safezoneY;
							w = 0.721875 * safezoneW;
							h = 0.055 * safezoneH;
						};		
				};	
		};
		class killfeed2
		{
			idd = -1;
			movingenable = 1;
			duration = 10;
			fadein = 0;
			fadeout = 0;
			name = "killfeed2";
			onLoad = uiNamespace setVariable ["killfeed2", _this select 0];
			onUnLoad = uiNamespace setVariable ["killfeed2", nil];
			
				class controls
				{
						class killfeed_txt: RscText
						{
							idc = 1001;
							text = "2"; //--- ToDo: Localize;
							x = -0.000156274 * safezoneW + safezoneX;
							y = 0.104 * safezoneH + safezoneY;
							w = 0.721875 * safezoneW;
							h = 0.055 * safezoneH;
						};		
				};	
		};
};	