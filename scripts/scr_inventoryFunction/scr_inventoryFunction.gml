function InventorySearch(rootObject, itemType){
	
	for (var i = 0; i < INVENTORY_SLOTS; i += 1){
		if (rootObject.inventory[i] == itemType){
			return(i);
		}
	}
	return(-1);
}

function inventoryRemove(rootObject, itemType){ 
	var _slot = InventorySearch(rootObject, itemType);
	
	if (_slot != -1){
		with(rootObject) inventory[_slot] = -1;
		return true;
	}
	else return false;
}

function inventoryAdd(rootObject, itemType){
	var _slot = InventorySearch(rootObject, -1);
	
	if (_slot != -1){
		with (rootObject) inventory[_slot] = itemType;
		return true;
	}
	else return false;
}