inputX = 0; 
inputY = 0;

//left
if keyboard_check(ord("A")) {
    inputX -= 1;
	x -= walkspd;
	sprite_index = spr_playerleft_walking;
}

//right
if keyboard_check(ord("D")) {
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

//sprint
if(keyboard_check(vk_shift)) && (global.stamina > 0){
	global.stamina -= 1;
	spd = sprintspd;
} else {
	spd = walkspd;
}

//left sprint
if keyboard_check(ord("A")) && (keyboard_check(vk_shift)){
   sprite_index = spr_playerleft_running;
}

//right sprint
if keyboard_check(ord("D")) && (keyboard_check(vk_shift)){
   sprite_index = spr_playerright_running;
}

//recharging stamina
if!(keyboard_check(vk_shift)){
	global.stamina += 0.35;
}

if(global.stamina > 100){
	global.stamina = 100;
}

if(global.stamina < 0){
	global.stamina = 0;
}

moveX = 0;
moveY = 0;
if inputX != 0 or inputY != 0 {
    moveDir = point_direction(0, 0, inputX, inputY);
    moveX = lengthdir_x(spd, moveDir);
    moveY = lengthdir_y(spd, moveDir);
}

move_and_collide(moveX, moveY, obj_collision);