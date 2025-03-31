if (mouse_check_button(mb_left))
{
    if (position_meeting(mouse_x, mouse_y, obj_start)) {
        clickedstart = true;
		room_goto(rm_entrance);
    }
}