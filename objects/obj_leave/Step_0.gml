if (mouse_check_button(mb_left))
{
    if (position_meeting(mouse_x, mouse_y, obj_leave)) {
      	clickedleave = true;
		game_end();
	
    }
}