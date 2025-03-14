function scr_topics_sampleDialogues(topics){

#region SAMPLE DIALOGUE [obj_normal]

	topics[$ "Example"] = [
	//TEXT(" ")
	TEXT("Hello World"),
	TEXT("I sure hope this dialouge system works first try!"),
	TEXT("We should test having a page with lots of words in it, to make sure that the line break feature is working properly.")
];

	topics[$ "Example 2"] = [
	//TEXT(" ")
	SPEAKER("Harley", spr_portrait_harley, PORTRAIT_SIDE.LEFT),
	TEXT("This is a test Dialogue"),
	TEXT("Just to make sure it works"),
	SPEAKER("Cassiopeia", spr_portrait_cass, PORTRAIT_SIDE.RIGHT),
	TEXT("We are switching characters and sides"),
	TEXT("We should also do a really long peice of dialogue to make sure it can handle long text and lore that we might have in the future")
];

#endregion

#region EFFECTS [obj_effects]

	topics[$ "Effects"] = [
	//TEXT(" ")
	SPEAKER("Harley", spr_portrait_harley, PORTRAIT_SIDE.LEFT),
	CHOICE("Make a <wavy>choicee</wavy>",
		OPTION("Choice one", "One"),
		OPTION("Choice two", "Two"))
];

#endregion

#region CHOICES 

	topics[$ "One"] = [
	//TEXT(" ")
	TEXT("Good choice!"),
	GOTO("End of choices")
];

	topics[$ "Two"] = [
	//TEXT(" ")
	TEXT("Good choice!"),
	GOTO("End of choices")
];

	topics[$ "End of choices"] = [
	//TEXT(" ")
	TEXT("Goodbye!")
];

#endregion

#region NEW CONVO STARTS AFTER OLD ONE ENDS [obj_oldconvo]

	topics[$ "New Convo"] = [
	//TEXT(" ")
	SPEAKER("Cassiopeia", spr_portrait_cass, PORTRAIT_SIDE.LEFT),
	TEXT("Hello this is the first time we are talking to eachother"),
];

	topics[$ "Old Convo"] = [
	//TEXT(" ")
	SPEAKER("Cassiopeia", spr_portrait_cass, PORTRAIT_SIDE.LEFT),
	TEXT("We've talked already."),
];

#endregion

#region CHOICES (w/ endings) [Outcomes]
	topics[$ "Red or Blue"] = [
	//TEXT(" ")
	SPEAKER("Harley", spr_portrait_harley, PORTRAIT_SIDE.LEFT),
	CHOICE("Whats your favorite color?",
		OPTION("Red", "Red"),
		OPTION("Blue", "Blue"),
		OPTION("Green", "Green"))
];

	topics[$ "Red"] = [
    TEXT("Yeah red is a good color"),
    CUSTOM(function() { obj_color2.color = "red"; })
];

	topics[$ "Blue"] = [
    TEXT("Yeah blue is a good color"),
    CUSTOM(function() { obj_color2.color = "blue"; })
];

	topics[$ "Green"] = [
    TEXT("Yeah green is a good color"),
    CUSTOM(function() { obj_color2.color = "green"; })
];

	topics[$ "Chosen Red"] = [
	//TEXT(" ")
	SPEAKER("Harley", spr_portrait_harley, PORTRAIT_SIDE.LEFT),
	TEXT("You already told me your favorite colors red"),
];

	topics[$ "Chosen Blue"] = [
	//TEXT(" ")
	SPEAKER("Harley", spr_portrait_harley, PORTRAIT_SIDE.LEFT),
	TEXT("You already told me your favorite colors blue"),
];

	topics[$ "Chosen Blue"] = [
	//TEXT(" ")
	SPEAKER("Harley", spr_portrait_harley, PORTRAIT_SIDE.LEFT),
	TEXT("You already told me your favorite colors blue"),
];

	topics[$ "Chosen Green"] = [
	//TEXT(" ")
	SPEAKER("Harley", spr_portrait_harley, PORTRAIT_SIDE.LEFT),
	TEXT("You already told me your favorite colors green"),
];


	topics[$ "Talk to Harley"] = [
	//TEXT(" ")
	SPEAKER("Cass", spr_portrait_cass, PORTRAIT_SIDE.LEFT),
	TEXT("Harley wants to know your favorite color"),
	TEXT("You should go talk to her"),
];

	topics[$ "Already talked to Harley, red"] = [
	//TEXT(" ")
	SPEAKER("Cass", spr_portrait_cass, PORTRAIT_SIDE.LEFT),
	TEXT("Did you talk to Harley already?"),
	TEXT("You told her your favorite color is red?"),
	TEXT("Good to know"),
];

	topics[$ "Already talked to Harley, blue"] = [
	//TEXT(" ")
	SPEAKER("Cass", spr_portrait_cass, PORTRAIT_SIDE.LEFT),
	TEXT("Did you talk to Harley already?"),
	TEXT("You told her your favorite color is blue?"),
	TEXT("Good to know"),
];

#endregion

#region ENDINGS [Diffrent endings]

	topics[$ "White"] = [
	//TEXT(" ")
	SPEAKER("White", spr_portrait_white, PORTRAIT_SIDE.LEFT),
	TEXT("My name is White"),
	TEXT("You can tell by my color."),
	TEXT("I have a job for you."),
	TEXT("Go talk to the other colors then tell me who you pick, you can pick as much as you want."),
	TEXT("Let me know when your done."),
];

	topics[$ "Are you done"] = [
	//TEXT(" ")
	SPEAKER("White", spr_portrait_white, PORTRAIT_SIDE.LEFT),
	CHOICE("Are you done?",
		OPTION("Yes", "Yes"),
		OPTION("No", "No"))
];

topics[$ "Yes"] = [
	//TEXT(" ")
	SPEAKER("White", spr_portrait_white, PORTRAIT_SIDE.LEFT),
	TEXT("Liar."),
];

topics[$ "No"] = [
	//TEXT(" ")
	SPEAKER("White", spr_portrait_white, PORTRAIT_SIDE.LEFT),
	TEXT("Erm...Ok"),
];

topics[$ "Talk Blue"] = [
	//TEXT(" ")
	SPEAKER("Blue", spr_portrait_blue, PORTRAIT_SIDE.LEFT),
	TEXT("My name is blue!"),
	CHOICE("You should totally pick me!",
		OPTION("Ok", "Ok-Blue"),
		OPTION("No thanks", "No-Blue"))
];

	topics[$ "Ok-Blue"] = [
	SPEAKER("Blue", spr_portrait_blue, PORTRAIT_SIDE.LEFT),
    TEXT("Yippee!!!"),
    CUSTOM(function() { obj_white.color = "blue"; })
];

topics[$ "No-Blue"] = [
	SPEAKER("Blue", spr_portrait_blue, PORTRAIT_SIDE.LEFT),
    TEXT("Alright then!"),
];

topics[$ "Done-Blue"] = [
	SPEAKER("Blue", spr_portrait_blue, PORTRAIT_SIDE.LEFT),
    TEXT("Need something?"),
];


topics[$ "Talk Green"] = [
	//TEXT(" ")
	SPEAKER("Green", spr_portrait_green, PORTRAIT_SIDE.LEFT),
	TEXT("..."),
	CHOICE("...?",
		OPTION("Ok", "Ok-Green"),
		OPTION("No thanks", "No-Green"))
];

topics[$ "Ok-Green"] = [
	SPEAKER("Green", spr_portrait_green, PORTRAIT_SIDE.LEFT),
    TEXT("..."),
    CUSTOM(function() { obj_white.color1 = "green"; })
];

topics[$ "No-Green"] = [
	SPEAKER("Green", spr_portrait_green, PORTRAIT_SIDE.LEFT),
    TEXT("..."),
];

topics[$ "Done-Green"] = [
	SPEAKER("Green", spr_portrait_green, PORTRAIT_SIDE.LEFT),
    TEXT("..."),
];


topics[$ "Talk Red"] = [
	//TEXT(" ")
	SPEAKER("Red", spr_portrait_red, PORTRAIT_SIDE.LEFT),
	TEXT("What."),
	CHOICE("Pick me, or don't I don't care.",
		OPTION("Ok", "Ok-Red"),
		OPTION("No thanks", "No-Red"))
];

topics[$ "Ok-Red"] = [
	SPEAKER("Red", spr_portrait_red, PORTRAIT_SIDE.LEFT),
    TEXT("K."),
    CUSTOM(function() { obj_white.color2 = "red"; })
];

topics[$ "No-Red"] = [
	SPEAKER("Red", spr_portrait_red, PORTRAIT_SIDE.LEFT),
    TEXT("Whatever."),
];

topics[$ "Done-Red"] = [
	SPEAKER("Red", spr_portrait_red, PORTRAIT_SIDE.LEFT),
    TEXT("Go away."),
];

topics[$ "Talk Yellow"] = [
	//TEXT(" ")
	SPEAKER("Yellow", spr_portrait_yellow, PORTRAIT_SIDE.LEFT),
	TEXT("Yo"),
	CHOICE("Pick me I guess, or don't. I don't really mind.",
		OPTION("Ok", "Ok-Yellow"),
		OPTION("No thanks", "No-Yellow"))
];

topics[$ "Ok-Yellow"] = [
	SPEAKER("Yellow", spr_portrait_yellow, PORTRAIT_SIDE.LEFT),
    TEXT("Cool"),
    CUSTOM(function() { obj_white.color3 = "yellow"; })
];

topics[$ "No-Yellow"] = [
	SPEAKER("Yellow", spr_portrait_yellow, PORTRAIT_SIDE.LEFT),
    TEXT("Eh"),
];

topics[$ "Done-Yellow"] = [
	SPEAKER("Yellow", spr_portrait_yellow, PORTRAIT_SIDE.LEFT),
    TEXT("Hm?"),
];

topics[$ "Blue Only"] = [
	//TEXT(" ")
	SPEAKER("White", spr_portrait_white, PORTRAIT_SIDE.LEFT),
	TEXT("You only picked blue, ok"),
];

topics[$ "Green Only"] = [
	//TEXT(" ")
	SPEAKER("White", spr_portrait_white, PORTRAIT_SIDE.LEFT),
	TEXT("You only picked green, ok"),
];

topics[$ "Red Only"] = [
	//TEXT(" ")
	SPEAKER("White", spr_portrait_white, PORTRAIT_SIDE.LEFT),
	TEXT("You only picked red, ok"),
];

topics[$ "Yellow Only"] = [
	//TEXT(" ")
	SPEAKER("White", spr_portrait_white, PORTRAIT_SIDE.LEFT),
	TEXT("You only picked yellow, ok"),
];


topics[$ "All of them"] = [
	//TEXT(" ")
	SPEAKER("White", spr_portrait_white, PORTRAIT_SIDE.LEFT),
	TEXT("You picked all of them"),
];

topics[$ "Blue Green Red"] = [
	//TEXT(" ")
	SPEAKER("White", spr_portrait_white, PORTRAIT_SIDE.LEFT),
	TEXT("Blue Green Red"),
];

topics[$ "Blue Green"] = [
	//TEXT(" ")
	SPEAKER("White", spr_portrait_white, PORTRAIT_SIDE.LEFT),
	TEXT("Blue Green"),
];

#endregion

#region PLAYERS NAME [Name Stuff]

topics[$ "Name"] = [
	//TEXT(" ")
	SPEAKER("Cass", spr_portrait_cass, PORTRAIT_SIDE.LEFT),
	TEXT("Nice to meet you " + string(global.player_name)),
		
];


topics[$ "Said Name"] = [
	//TEXT(" ")
	SPEAKER("Cass", spr_portrait_cass, PORTRAIT_SIDE.LEFT),
	TEXT("You already told me your name."),
	TEXT("It's " + string(global.player_name)), 
	
];

#endregion

#region Items

topics[$ "Want Item"] = [
	//TEXT(" ")
	SPEAKER("PENISWENI", spr_portrait_cass, PORTRAIT_SIDE.LEFT),
	TEXT("Hi, could you bring me a blue amongus?"),
		
];


topics[$ "Wanted Item"] = [
	//TEXT(" ")
	SPEAKER("PENIWENI",  spr_portrait_cass, PORTRAIT_SIDE.LEFT),
	TEXT("A blue amongus please"),
	
];

topics[$ "Give Item"] = [
	//TEXT(" ")
	SPEAKER("PENIWENI",  spr_portrait_cass, PORTRAIT_SIDE.LEFT),
	TEXT("Oh thanks! This sure is blue"),
	
];

topics[$ "Has Item"] = [
	//TEXT(" ")
	SPEAKER("PENIWENI",  spr_portrait_cass_annoyed, PORTRAIT_SIDE.LEFT),
	TEXT("I don't need anymore. Go away"),
	
];
#endregion

#region The Avy Special

topics[$ "A Want Item"] = [
	//TEXT(" ")
	SPEAKER("PENISWENI", spr_portrait_cass, PORTRAIT_SIDE.LEFT),
	TEXT("Hi avy!"),
	TEXT("It's me! Cass!"),
	TEXT("I look like a smiski and my name here is PENISWENI"),
	TEXT("Ok anyway go get me a key, an apron, a toolbox, a candle, and a stack of paper"),
	TEXT("Please and thanks")
		
];


topics[$ "A Wanted Item"] = [
	//TEXT(" ")
	SPEAKER("PENIWENI",  spr_portrait_cass, PORTRAIT_SIDE.LEFT),
	TEXT("Go get the items I asked for"),
	
];

topics[$ "A Gave Items"] = [
	//TEXT(" ")
	SPEAKER("PENIWENI",  spr_portrait_cass, PORTRAIT_SIDE.LEFT),
	TEXT("Oh hey thanks! You got me everything!"),
	
];


topics[$ "A Has Item"] = [
	//TEXT(" ")
	SPEAKER("PENIWENI",  spr_portrait_cass_annoyed, PORTRAIT_SIDE.LEFT),
	TEXT("What?"),
	
];
#endregion

}