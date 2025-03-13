 #region Test items
var meettest = false
var meettest2 = false
var meettest3 = false

#region test item 1
if (keyboard_check_pressed(ord("E"))) {
  with (obj_player) //for each object 2
  {
    if place_meeting(x,y, obj_item)  //test if it's meeting an object3. if it is,
      {
        meettest = true //set the toggle variable to true
        break; //stop looking, cuz you've already found a meeting pair
		}
	} //if no object2 meets object3, then meet23 will stay false since no one set it to true
	if meettest = true //if that toggle variable is true
  {
    inventoryAdd(id, obj_item);
	instance_destroy(obj_item)
	}
}
#endregion

#region test item 2
if (keyboard_check_pressed(ord("E"))) {
  with (obj_player) //for each object 2
  {
    if place_meeting(x,y, obj_item2)  //test if it's meeting an object3. if it is,
      {
       meettest2 = true //set the toggle variable to true
        break; //stop looking, cuz you've already found a meeting pair
		}
	} //if no object2 meets object3, then meet23 will stay false since no one set it to true
	if meettest2 = true //if that toggle variable is true
  {
    inventoryAdd(id, obj_item2);
	global.hasitem = true
	instance_destroy(obj_item2)
	}
}

if (global.itemfound = true) {
	inventoryRemove(id, obj_item2)
}
#endregion

#region test item 3
if (keyboard_check_pressed(ord("E"))) {
  with (obj_player) //for each object 2
  {
    if place_meeting(x,y, obj_item2)  //test if it's meeting an object3. if it is,
      {
        meettest3 = true //set the toggle variable to true
        break; //stop looking, cuz you've already found a meeting pair
		}
	} //if no object2 meets object3, then meet23 will stay false since no one set it to true
	if meettest3 = true //if that toggle variable is true
  {
    inventoryAdd(id, obj_item2);
	instance_destroy(obj_item2)
	}
}
#endregion
#endregion

#region torn page
var meettornpage = false 

if (mouse_check_button_pressed(mb_left)) {
  with (obj_player) //for each object 2
  {
    if place_meeting(x, y, obj_tornpage)  //test if it's meeting an object3. if it is,
      {
        meettornpage = true //set the toggle variable to true
        break; //stop looking, cuz you've already found a meeting pair
		}
	} //if no object2 meets object3, then meet23 will stay false since no one set it to true
	if meettornpage = true //if that toggle variable is true
  {
    inventoryAdd(id, obj_tornpage);
	instance_destroy(obj_tornpage);
	}
}
#endregion

#region torn page
var meetbrokenmirror = false 

if (mouse_check_button_pressed(mb_left)) {
  with (obj_player) //for each object 2
  {
    if place_meeting(x, y, obj_brokenmirror)  //test if it's meeting an object3. if it is,
      {
        meetbrokenmirror = true //set the toggle variable to true
        break; //stop looking, cuz you've already found a meeting pair
		}
	} //if no object2 meets object3, then meet23 will stay false since no one set it to true
	if meetbrokenmirror = true //if that toggle variable is true
  {
    inventoryAdd(id, spr_items);
	instance_destroy(obj_brokenmirror);
	}
}
#endregion