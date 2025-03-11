if(instance_exists(obj_player)){
	draw_sprite(spr_backstamina, 1, 8, 8);
	draw_sprite_ext(spr_frontstamina, 1, 8, 8, 
	max(0, global.stamina/global.staminamax), 1, 0, c_white, 1);
	
}