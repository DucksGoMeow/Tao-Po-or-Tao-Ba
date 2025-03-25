function scr_topics_extra(topics){

	topics[$ "Example"] = [
	//TEXT(" ")
	TEXT("Hello World"),
];

	topics[$ "Warning"] = [
	//TEXT(" ")
	SPEAKER("Warning", spr_warning, PORTRAIT_SIDE.LEFT),
	TEXT("Welcome to Tao Po or Tao Ba? [Click enter to continue]"),
	TEXT("This game is in heavy beta, somethings may still be broken"),
	TEXT("Like the camera"),
	TEXT("The controls are WASD for movement, left mouse button for interacting with objects, and the enter key for moving though dialogue"),
	TEXT("We hope you enjoy"),
];


}