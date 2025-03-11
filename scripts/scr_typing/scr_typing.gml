

function TextGroup(_text, styles) constructor {
	effects = {};
	for (var i = 0; i < array_length(styles); i++) {
		var names = variable_struct_get_names(styles[i]);
		for (var j = 0; j < array_length(names); j++)
			effects[$ names[j]] = styles[i][$ names[j]];
	}
	
	text = _text;
	length = string_length(text);
}

// Parses a text into effect groups so that it can be drawn by __type
function __parse(text) {
	var styles = [global.text_styles[$ "standard"]];
	var groups = [];
	
	var start = 1;
	var prev_char = "";
	for (var i = 1; i <= string_length(text); i++) {
		var char = string_char_at(text, i);
		if (char == "<" && prev_char != "\\") {
			array_push(groups, new TextGroup(string_copy(text, start, i - start), styles));
			
			// what effect is this?
			var style_name = "";
			// skip past <
			while (i <= string_length(text)) {
				// We need to increase progress as we advance past the effect symbol
				// To prevent pauses in typing
				i++;
				char = string_char_at(text, i);
				if (char == ">")
					break;
				
				style_name += char;
			}
			
			if (string_char_at(style_name, 1) == "/") {
				if (array_length(styles) <= 0)
					show_message("Cannot pop the default style!");
				else
					array_pop(styles);
			}
			else if (variable_struct_exists(global.text_styles, style_name)) {
				array_push(styles, global.text_styles[$ style_name]);
			}
			else {
				show_message("No style named " + style_name + " exists!");
			}
			
			start = i + 1;
		}
		prev_char = char;
	}
	array_push(groups, new TextGroup(string_copy(text, start, i - start + 1), styles));
	return groups;
}

// Used to type out text typewriter style
// As well as handle any text effects present
function __type(x, y, text_groups, progress, width) {
	var draw_x = 0;
	var draw_y = 0;
	var current = 0;
	var current_group = text_groups[current];
	apply_effects(current_group.effects);
	
	for (var i = 1; i <= progress; i++) {
		if (i > current_group.length) {
			current++;
			
			if (current >= array_length(text_groups))
				break;
				
			current_group = text_groups[current];
			progress -= i - 1;
			i = 1;
			apply_effects(current_group.effects);
		}
		
		var char = string_char_at(current_group.text, i);
		
		// Handle normal line breaks
		if (char == "\n") {
			draw_x = 0;
			draw_y += string_height("A");
		}
		
		// If we're starting a new word, we can line break
		else if (char == " ") {
			draw_x += string_width(char);
			
			var word_width = 0;
			var ii = i + 1;
			while (ii <= current_group.length) {
				var word_char = string_char_at(current_group.text, ii);
				
				// If we reached the end of the word, stop checking
				if (word_char == "\n" || word_char == " ")
					break;
				
				// If the current word extends past the width boundary,
				// then move it to the next line
				word_width += string_width(word_char);
				if (draw_x + word_width > width) {
					draw_x = 0;
					draw_y += string_height("A");
					break;
				}
				
				ii++;
			}
		}
		
		else {
			// Draw the letter
			draw_character(x + draw_x, y + draw_y, char, i);
			draw_x += string_width(char);
		}
	}
}

// Any effects that change letters individually (like a wave effect) can do their modifications here
function draw_character(x, y, char, position) {
	// Our specially defined wavy property changes where text draws!
	if (wavy) {
		static AMPLITUDE = 3;
		static PERIOD = 0.7;
		static OFFSET = 0.2;
		y += AMPLITUDE * sin(((current_time / (1000 * PERIOD)) + position * OFFSET) * 2 * pi);
	}
	draw_text(x, y, char);
}