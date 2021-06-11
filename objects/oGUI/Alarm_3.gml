/// @description Enable player dialog options display
if dialogLevel > 0
{
	optionsDisplay = true;
	switch dialogLevel
	{
		case 1:
			ds_list_clear(optionsDialog);
			optionsDialog[| 0] = "Friendly dialog Lv1.";
			optionsDialog[| 1] = "Aggressive dialog Lv1.";
			optionsDialog[| 2] = "Ask to trade Lv1.";
			break;
		case 2:
			switch dialogBranch
			{
				case "FRIENDLY":
					ds_list_clear(optionsDialog);
					optionsDialog[| 0] = "Friendly dialog Lv2.";
					optionsDialog[| 1] = "Friendly dialog Lv2.";
					optionsDialog[| 2] = "Friendly dialog Lv2.";
					break;
				case "ANGRY":
					ds_list_clear(optionsDialog);
					optionsDialog[| 0] = "Angry dialog Lv2.";
					optionsDialog[| 1] = "Angry dialog Lv2.";
					optionsDialog[| 2] = "Angry dialog Lv2.";
					break;
				case "TRADE":
					ds_list_clear(optionsDialog);
					optionsDialog[| 0] = "Trade dialog Lv2.";
					optionsDialog[| 1] = "Trade dialog Lv2.";
					optionsDialog[| 2] = "Trade dialog Lv2.";
					break;
			}
			break;
		case 3:
			switch dialogBranch
			{
				case "FRIENDLY":
					ds_list_clear(optionsDialog);
					optionsDialog[| 0] = "Friendly dialog Lv3.";
					optionsDialog[| 1] = "Friendly dialog Lv3.";
					optionsDialog[| 2] = "Friendly dialog Lv3.";
					break;
				case "ANGRY":
					ds_list_clear(optionsDialog);
					optionsDialog[| 0] = "Angry dialog Lv3.";
					optionsDialog[| 1] = "Angry dialog Lv3.";
					optionsDialog[| 2] = "Angry dialog Lv3.";
					break;
				case "TRADE":
					ds_list_clear(optionsDialog);
					optionsDialog[| 0] = "Trade dialog Lv3.";
					optionsDialog[| 1] = "Trade dialog Lv3.";
					optionsDialog[| 2] = "Trade dialog Lv3.";
					break;
			}
			break;
	}
}
