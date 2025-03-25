if !warning {
	startDialogue("Warning");
	warning = true;
}

else {
	room_goto(rm_entrance);
}