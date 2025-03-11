/// @description METHODS
/// Feather disable GM2016


/**
 * @function confirmation_button_pressed
 * @returns {Bool}
 */
confirmation_button_pressed = function() {
    for(var i = 0; i < array_length(confirmation_buttons); ++i) {
        if keyboard_check_pressed(confirmation_buttons[i]) {
            return true;
        }
    }
    return false;
}

/**
 * @function add_name
 * @param {String} _name
 * @param {String} _message
 * @param {Bool} [_is_forbidden=false]
 * @returns {Id.Instance}
 */
add_name = function(_name, _message, _is_forbidden=false) {
    if !is_string(_name) {
        throw(string("{0}.add_name() \"name\" expected a string, received {1}.", object_get_name(object_index), typeof(_name)));
    }
    if !is_string(_message) {
        throw(string("{0}.add_name() \"message\" expected a string, received {1}.", object_get_name(object_index), typeof(_message)));
    }
    if !is_bool(_is_forbidden) {
        throw(string("{0}.add_name() \"is_forbidden\" expected a boolean, received {1}.", object_get_name(object_index), typeof(_is_forbidden)));
    }
    array_push(taken_names, {
        name: _name,
        message: _message,
        is_forbidden: _is_forbidden
    });
    return id;
}

/**
 * Hook to run when the "Quit" action is triggered
 * @function on_quit
 * @returns {Id.Instance}
 */
on_quit = function() {
    room_goto_previous();
    return id;
}

/**
 * Hook to run when the "Backspace" action is triggered
 * @function on_backspace
 * @returns {Id.Instance}
 */
on_backspace = function() {
    current_string = scr_stringbackspace(current_string);
    return id;
}

/**
 * Hook to run when the "Done" action is triggered
 * @function on_done
 * @returns {Id.Instance}
 */
on_done = function() {
    if string_length(current_string) > 0 {
        name_state = NAME_STATES.PRE_CONFIRMATION;
    }
    return id;
}

/**
 * You can clear out this function and add your own names here
 * @function add_taken_names
 * @returns {Id.Instance}
 */
add_taken_names = function() {
    // My Name!
    add_name("Brent", "Hey! Thats my name!", true);

    // Forbidden Names (Not allowed)
	add_name("DucksGoMeow", "Haha, nice try", true);

    // Custom Responses (Allowed)
    add_name("Frisk", "WARNING: This name will make your life hell. Proceed anyway?");
	add_name("YahBoiCrazy", "hey cutie <33");
	add_name("YahBoyCrazy", "hey cutie <33");

    return id;
}
