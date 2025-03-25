inputX = 0; 
inputY = 0;
keyleft = keyboard_check(vk_left) or keyboard_check(ord("A"));
keyright = keyboard_check(vk_right) or keyboard_check(ord("D"));
keyleftreleased = keyboard_check_released(vk_left) or keyboard_check_released(ord("A"));
keyrightreleased = keyboard_check_released(vk_right) or keyboard_check_released(ord("D"));


//left
if keyleft{
    inputX -= 1;
	x -= walkspd;
	sprite_index = spr_playerleft_walking;
	
}


//right
if keyright {
    inputX += 1;
	x += walkspd;
	sprite_index = spr_playerright_walking;
}

//up
//if keyboard_check(ord("W")) {
    //inputY -= 1;
	//sprite_index = spr_playerbehind_walking;
//}

//down
// if keyboard_check(ord("S")) {
    //inputY += 1;
	//sprite_index = spr_playerfront_walking;
//}

moveX = 0;
moveY = 0;
if inputX != 0 or inputY != 0 {
    moveDir = point_direction(0, 0, inputX, inputY);
    moveX = lengthdir_x(spd, moveDir);
    moveY = lengthdir_y(spd, moveDir);
}

move_and_collide(moveX, moveY, obj_collision);