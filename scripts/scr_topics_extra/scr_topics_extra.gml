function scr_topics_extra(topics){

	topics[$ "Example"] = [
	//TEXT(" ")
	TEXT("Hello World"),
];

	topics[$ "Testing Portrait"] = [
	//TEXT(" ")
	SPEAKER("PENISWENI", spr_sampleportrait , PORTRAIT_SIDE.LEFT),
	CHOICE("Make a <wavy>choicee</wavy>",
		OPTION("Choice one", "One"),
		OPTION("Choice two", "Two"))
];

}