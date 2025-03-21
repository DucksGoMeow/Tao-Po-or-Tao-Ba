 // Testing
if keyboard_check(vk_control) {
    if keyboard_check_pressed(ord("W")) {
        game_end();
    }
    if keyboard_check_pressed(ord("R")) {
        game_restart();
    }
}

// Picking your character's name page
switch (name_state) {
    case NAME_STATES.INPUT_NAME:
        name_index = 0; // Reset name_index to 0
        if keyboard_check_pressed(vk_left) {
            if string_position_x != 0 {
                string_position_x -= 1;
            }
        }
        if keyboard_check_pressed(vk_right) {
            if string_position_x != array_length(ascii_characters[string_position_y]) - 1 {
                string_position_x += 1;
            }
        }
        if keyboard_check_pressed(vk_up) {
            if string_position_y != 0 {
                string_position_y -= 1;
                if string_position_x > array_length(ascii_characters[string_position_y]) - 1 {
                    string_position_x = array_length(ascii_characters[string_position_y]) - 1;
                }
            }
        }
        if keyboard_check_pressed(vk_down) {
            if string_position_y != array_length(ascii_characters) - 1 {
                string_position_y += 1;
                if string_position_y {
                    /////////// THIS NEEDS TO BE FINISHED ^^^^^^^^
                }
                if string_position_x > array_length(ascii_characters[string_position_y]) - 1 {
                    string_position_x = array_length(ascii_characters[string_position_y]) - 1;
                }
            }
        }
        
        if keyboard_check_pressed(vk_backspace) {
            current_string = scr_stringbackspace(current_string);
        }
        
        if confirmation_button_pressed() {
            if string_position_y != array_length(ascii_characters) - 1 {
                if string_length(current_string) < max_string {
                    current_string += ascii_characters[string_position_y, string_position_x];
                    // If your name is the max length, move to "Done"
                    if string_length(current_string) == max_string {
                        string_position_x = 0;
                        string_position_y = array_length(ascii_characters) -1;
                    }
                }
            } else {
                switch (string_position_x) {
                    case 0:
                        on_backspace();
                        break;
                    case 1:
                        on_done();
                        break;
                    default:
                        show_debug_message(string("Unknown string_position_x: {0}", string_position_x));
                        break;
                }
            }
        }
        
        // Manual keyboard strokes
        if keyboard_lastkey != noone {
            if keyboard_lastkey == clamp(keyboard_lastkey, 65, 90) || keyboard_lastkey == clamp(keyboard_lastkey, 97, 122) {
                if string_length(current_string) < max_string {
                    current_string += keyboard_lastchar;
                    // If your name is the max length, move to "Done"
                    if string_length(current_string) == max_string {
                        string_position_x = 0;
                        string_position_y = array_length(ascii_characters) - 1;
                    }
                }
            }
            keyboard_lastkey = noone;
        }
        break;
    case NAME_STATES.PRE_CONFIRMATION:
        is_name_taken = false;
        for(var i = 0; i < array_length(taken_names); ++i) {
            var _name = taken_names[i];
            // Names are not case sensitive
            if string_lower(_name.name) == string_lower(current_string) {
                header_text = _name.message;
                is_name_taken = _name.is_forbidden;
                name_taken_index = i;
                break;
            }
        }
        name_state = NAME_STATES.CONFIRMATION;
        break;
    case NAME_STATES.CONFIRMATION:
        // Name confirmation page
        #region zoom in picking name
		//if name_index < 1 {
           // name_index += name_index_amount;
            //if name_index > 1 {
             //   name_index = 1;
            //}
       // }
		#endregion
		
        if !is_name_taken {
              if keyboard_check_pressed(vk_left) {
                confirmation_index -= 1;
              }
              if keyboard_check_pressed(vk_right) {
                confirmation_index += 1;
              }
              if confirmation_index != clamp(confirmation_index, 0, array_length(confirmation_text) - 1) {
                confirmation_index = clamp(confirmation_index, 0, array_length(confirmation_text) - 1);
              }
        }
        if confirmation_button_pressed() {
            if is_name_taken {
                confirmation_index = 0;
            }
            if confirmation_index == 0 { // No
                confirmation_index = 1;
                name_state = NAME_STATES.INPUT_NAME;
                header_text = "Enter Name";
            } else if confirmation_index == 1 { // Yes
                //If the selected button is the "yes" after pressing the "done" button
				//Everything was good, the name is valid

				//player name into a global variable
				global.player_name = current_string;
				//Load the global variable into the topics
				scr_topics();
				
				//Go into the next room
				room_goto(rm_test1)			
            }
        }
        break;
    default:
        show_debug_message(string("Unknown name state: {0}", name_state));
        break;
}
