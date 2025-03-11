 if (active) {
	if (keyboard_check_pressed(vk_space)) {
		active = false;
		startDialogue("Effects", activate);
	}
}