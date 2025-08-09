class RscTitles
{
    titles[] = {killfeed};
    class killfeed
    {
        idd = -1;
        movingEnable = 1;
        duration = KILLFEED_DURATION;
        fadein = 0;
        fadeout = 0;
        name = "killfeed";
        onLoad = uiNamespace setVariable ["killfeed", _this select 0];
        onUnLoad = uiNamespace setVariable ["killfeed", nil];
        class controls
        {
            class killfeed_txt: RscStructuredText
            {
                idc = 1000;
                text = "";
                x = -0.000156274 * safezoneW + safezoneX;
                y = 0.104 * safezoneH + safezoneY;
                w = 0.721875 * safezoneW;
                h = 0.055 * safezoneH;
            };
        };
    };
};
