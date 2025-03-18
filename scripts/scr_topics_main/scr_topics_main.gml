function scr_topics_main(topics){

	topics[$ "Example"] = [
	//TEXT(" ")
	TEXT("Hello World"),
];

topics[$ "Clarita 1"] = [
	//TEXT(" ")
	SPEAKER("Clarita", spr_claritaportrait_neutral, PORTRAIT_SIDE.LEFT),
	TEXT("Huwag ka sanang sagabal sa mga trabaho rito at siguraduhin mong may maiaambag ka rito."),
	SPEAKER("Oyo", spr_oyoportrait_neutral, PORTRAIT_SIDE.LEFT),
	TEXT("..."),
];

topics[$ "Clarita 2"] = [
	//TEXT(" ")
	SPEAKER("Clarita", spr_claritaportrait_neutral, PORTRAIT_SIDE.LEFT),
	TEXT("Ano?"),
	SPEAKER("Oyo", spr_oyoportrait_neutral, PORTRAIT_SIDE.LEFT),
	TEXT("..."),
];

}