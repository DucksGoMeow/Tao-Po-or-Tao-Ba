
if !firsttime && !global.hasitem{
	startDialogue("Want Item")
	firsttime = true
}

else if (global.hasitem == true) && !global.itemfound {
	startDialogue("Give Item")
	amongus = true
	global.itemfound = true
}

else if (amongus == true) && (global.itemfound = true) {
	startDialogue("Has Item")
}

else {
	startDialogue("Wanted Item")
}