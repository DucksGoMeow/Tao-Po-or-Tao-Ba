for (var i = 0; i < array_length(taskList); i++) {
	draw_text(0, 16 + (20 * i), $"{taskList[i].name}\n{taskList[i].descriptionFunction()}")
	draw_set_color(#935F32);
}


