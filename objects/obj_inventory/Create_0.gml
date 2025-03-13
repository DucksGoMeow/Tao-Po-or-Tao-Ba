 //how many slots in an inventory
#macro INVENTORY_SLOTS 5

//slots per row
rowLength = 5;

//creates inventory 
inventory = array_create(INVENTORY_SLOTS, -1);
randomize();
//inventory[0] = 0;



//show_debug_message(InventorySearch(id, 1) != -1);
//inventoryRemove(id, 1);
//inventoryAdd(id, irandom(1));