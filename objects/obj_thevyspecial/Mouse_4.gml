if !firsttime && !hasallitems && !global.haskey && !global.haskey && !global.hascandle && !global.hasapron && !global.hastoolbox
	&& !global.hasreceipts  {
	startDialogue("A Want Item");
	firsttime = true
}

else if (global.haskey == true) && (global.hascandle == true) && (global.hasapron == true) && 
	(global.hastoolbox == true) && (global.hasreceipts == true) && !global.toolboxfound
	&& !global.keyfound && !global.candlefound && !global.apronfound && !global.receiptsfound {
		
	startDialogue("A Gave Items");
	toolbox = true;
	key = true;
	candle = true;
	apron = true;
	stackofpaper = true;

	global.toolboxfound = true;
	global.keyfound = true;
	global.candlefound = true;
	global.apronfound = true;
	global.receiptsfound = true;
}


else if (toolbox == true) && (hasallitems == true) && (key == true) && (candle == true) && (apron == true)
	&& (stackofpaper == true) && (global.toolboxfound == true) && (global.keyfound == true)
	&& (global.candlefound == true) && (global.apronfound == true) && (global.receiptsfound == true) { 
	
	startDialogue("A Has Item");
	
}

else {
	startDialogue("A Wanted Item");
}

