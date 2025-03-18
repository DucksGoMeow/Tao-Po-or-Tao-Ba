 //background
//draw_sprite(spr_backgrounddialogue, 0, 1, 1)

// Draw the box
draw_sprite_stretched(sprite_index, 0, x, y, width, height);

// Set starting positions
var draw_x = x;
var draw_y = y;
var draw_width = text_width;

var finished = text_progress == text_length;

// Portrait
if (sprite_exists(portrait_sprite)) {
	// Shrink text width by the width the portrait will take up
	draw_width -= portrait_width + portrait_x + padding;
	var draw_portrait_x = x + portrait_x;
	
	// What side is the portrait on?
	if (portrait_side == PORTRAIT_SIDE.LEFT) {
		// Shift the text over when the portrait is on the left
		draw_x += portrait_width + portrait_x + padding;
	}
	else {
		// Shift the portrait itself over when it is on the right
		draw_portrait_x = x + width - portrait_width - 260;
	}
	
	// Draw portrait backing
	//draw_sprite(spr_portrait, 0, draw_portrait_x, draw_y + portrait_y);
	
	// Animate the portrait when typing
	var subimg = 0;
	if (!finished)
		subimg = (text_progress / text_speed) * (sprite_get_speed(portrait_sprite) / game_get_speed(gamespeed_fps));
		
	draw_sprite_ext(portrait_sprite, subimg,
		draw_portrait_x + portrait_width + 70, draw_y + portrait_y + portrait_height - 145,
		portrait_side == PORTRAIT_SIDE.LEFT ? 1 : -1, 1, 0, c_white, 1);
}

// Speaker
if (speaker_name != "") {
	// Expand the nameplate if the name is wider than the default width
	var w = max(string_width(speaker_name), speaker_width);
	draw_sprite_stretched(spr_name, 0, x + speaker_x, y + speaker_y - speaker_height / 2, w, speaker_height);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(speaker_font);
	draw_set_color(speaker_color);
	draw_text(x + speaker_x + w / 2, y + speaker_y, speaker_name);
}

// Text
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(text_font);
draw_set_color(text_color);
__type(draw_x + text_x - 145, draw_y + text_y, text, text_progress, draw_width);

// Options
if (finished && option_count > 0) {
	draw_set_valign(fa_middle);
	draw_set_color(option_color);
	for (var i = 0; i < option_count; i++) {
		var opt_x = x + option_x + 905;
		var opt_y = y + option_y - (option_count - i - 1) * 50;
		
		// Selected option is indented with an arrow
		if (i == current_option) {
			opt_x += option_selection_indent;
			draw_sprite(spr_arrow, 0, opt_x - 55, opt_y - 19);
		}
		
		draw_sprite_stretched(spr_option, 0, opt_x, opt_y - option_height / 2, option_width, option_height);
		draw_text(opt_x + option_text_x, opt_y, options[i].text);
	}
}