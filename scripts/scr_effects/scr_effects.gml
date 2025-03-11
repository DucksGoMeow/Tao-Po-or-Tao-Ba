global.text_styles = { };
// IMPORTANT NOTE: The standard style below defines the default look of your text.
// Please edit that style to change your text's starting aesthetic.

// All the different kind of text styles can be stored here
// You can put multiple effects into one style, for ease of use.
// Feel free to add new styles!

// for example:

// default settings!
// note how it sets every single different type of parameter at least once
create_style("standard", {
	color: c_white,
	font: fnt_text,
	speed: 0.6,
	wavy: false
});
	
	
// slows down the text and adds a wave offset!
create_style("wavy", {
	speed: 0.2,
	wavy: true
});


// colors can be made this way
create_style("red", {
	color: c_red,
});

//create_style("playername", {
	//playername: global.playersname,
//});

// Used to apply all of the different effects that styles control
// You can add new effects by mimicking the ?? pattern of the existing effects
function apply_effects(effect) {
	draw_set_font(effect[$ "font"] ?? draw_get_font());
	draw_set_color(effect[$ "color"] ?? draw_get_color());
	text_speed = effect[$ "speed"] ?? text_speed;
	wavy = effect[$ "wavy"] ?? wavy;
	//string_replace(effect[$ "playername"] ?? string_replace());
}

// Function to define a new text style
function create_style(name, properties) {
	global.text_styles[$ name] = properties;
}