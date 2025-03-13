//draw_sprite_stretched(spr_inventory, 0, x - 5, y - 5, 
	//12 + rowLength * 69, 
	//12 + (((INVENTORY_SLOTS - 1) div rowLength) + 1) * 69);

if(instance_exists(obj_player)){
	for (var i = 0; i < INVENTORY_SLOTS; i += 1){
	var xx = 1000 + (i mod rowLength) * 69 + 2;
	var yy = y + (i div rowLength) * 69 + 2;
	draw_sprite(spr_slot, 0, xx, yy);
	
		if (inventory[i] != -1){
		draw_sprite(spr_items, inventory[i], xx, yy);

		}
	}
}