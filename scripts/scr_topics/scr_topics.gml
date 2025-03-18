	global.topics = {};

	// I don't want to write all of my dialogue in one file,
	// and I'll bet you don't want to either!

	// This is one of the few times I name my function
	// the same as the script it is in,
	// so I can easily find it later

	// See how we call both scr_topics_greeting and scr_topics_examples?
	// Each time you make a new file for dialogue, call it here to initialize it!
	scr_topics_sampleDialogues(global.topics);
	scr_topics_extra(global.topics);
	scr_topics_main(global.topics);
