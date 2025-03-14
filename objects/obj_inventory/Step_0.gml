 #region Test items
var meettest = false
var meettest2 = false

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

#endregion
 
 #region pen
var meetpen = false 


if (mouse_check_button_pressed(mb_left)) {
  with (obj_player) //for each object 2
  {
    if place_meeting(x, y, obj_pen)  //test if it's meeting an object3. if it is,
      {
        meetpen = true //set the toggle variable to true
        break; //stop looking, cuz you've already found a meeting pair
		}
	} //if no object2 meets object3, then meet23 will stay false since no one set it to true
	if meetpen = true //if that toggle variable is true
  {
		inventoryAdd(id, 0);
		global.haspen = true
		instance_destroy(obj_pen);
	}

	if (global.penfound = true) {
		inventoryRemove(id, 0)
	}
}
#endregion
 
 #region key
var meetkey = false

if (mouse_check_button_pressed(mb_left)) {
  with (obj_player) //for each object 2
  {
    if place_meeting(x, y, obj_rustyroomkey)  //test if it's meeting an object3. if it is,
      {
        meetkey = true //set the toggle variable to true
        break; //stop looking, cuz you've already found a meeting pair
		}
	} //if no object2 meets object3, then meet23 will stay false since no one set it to true
	if meetkey = true //if that toggle variable is true
  {
		inventoryAdd(id, 1);
		global.haskey = true
		instance_destroy(obj_rustyroomkey);
	}
	if (global.keyfound = true) {
		inventoryRemove(id, 1)
	}
}
#endregion
 
#region receipts
var meetreceits = false 


if (mouse_check_button_pressed(mb_left)) {
  with (obj_player) //for each object 2
  {
    if place_meeting(x, y, obj_stackofreceipts)  //test if it's meeting an object3. if it is,
      {
        meetreceits = true //set the toggle variable to true
        break; //stop looking, cuz you've already found a meeting pair
		}
	} //if no object2 meets object3, then meet23 will stay false since no one set it to true
	if meetreceits = true //if that toggle variable is true
  {
   		inventoryAdd(id, 2);
		global.hasreceipts = true
		instance_destroy(obj_stackofreceipts);
	}
		if (global.receiptsfound = true) {
			inventoryRemove(id, 2)
	}
}
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
    	inventoryAdd(id, 3);
		global.hastornpage = true
		instance_destroy(obj_tornpage);
	}
		if (global.tornpagefound = true) {
			inventoryRemove(id, 3)
	}
}
#endregion
 
 #region toolbox
var meettoolbox = false 


if (mouse_check_button_pressed(mb_left)) {
  with (obj_player) //for each object 2
  {
    if place_meeting(x, y, obj_toolbox)  //test if it's meeting an object3. if it is,
      {
        meettoolbox = true //set the toggle variable to true
        break; //stop looking, cuz you've already found a meeting pair
		}
	} //if no object2 meets object3, then meet23 will stay false since no one set it to true
	if meettoolbox = true //if that toggle variable is true
  {
   		inventoryAdd(id, 4);
		global.hastoolbox = true
		instance_destroy(obj_toolbox);
	}
		if (global.toolboxfound = true) {
			inventoryRemove(id, 4)
	}
}
#endregion
 
#region journal
var meetjournal = false 


if (mouse_check_button_pressed(mb_left)) {
  with (obj_player) //for each object 2
  {
    if place_meeting(x, y, obj_journal)  //test if it's meeting an object3. if it is,
      {
        meetjournal = true //set the toggle variable to true
        break; //stop looking, cuz you've already found a meeting pair
		}
	} //if no object2 meets object3, then meet23 will stay false since no one set it to true
	if meetjournal = true //if that toggle variable is true
  {
    	inventoryAdd(id, 5);
		global.hasjournal = true
		instance_destroy(obj_journal);
	}
		if (global.journalfound = true) {
			inventoryRemove(id, 5)
	}
}
#endregion
 
#region photo
var meetphoto = false 


if (mouse_check_button_pressed(mb_left)) {
  with (obj_player) //for each object 2
  {
    if place_meeting(x, y, obj_oldphoto)  //test if it's meeting an object3. if it is,
      {
        meetphoto = true //set the toggle variable to true
        break; //stop looking, cuz you've already found a meeting pair
		}
	} //if no object2 meets object3, then meet23 will stay false since no one set it to true
	if meetphoto = true //if that toggle variable is true
  {
		inventoryAdd(id, 6);
		global.hasoldphoto = true
		instance_destroy(obj_oldphoto);
	}
		if (global.oldphotofound = true) {
			inventoryRemove(id, 6)
	}
}
#endregion
 
#region coin
var meetcoin = false 


if (mouse_check_button_pressed(mb_left)) {
  with (obj_player) //for each object 2
  {
    if place_meeting(x, y, obj_coin)  //test if it's meeting an object3. if it is,
      {
        meetcoin = true //set the toggle variable to true
        break; //stop looking, cuz you've already found a meeting pair
		}
	} //if no object2 meets object3, then meet23 will stay false since no one set it to true
	if meetcoin = true //if that toggle variable is true
  {
   		inventoryAdd(id, 7);
		global.hascoin = true
		instance_destroy(obj_coin);
	}
		if (global.coinfound = true) {
			inventoryRemove(id, 7)
	}
}
#endregion
 
#region cloth
var meetcloth = false 


if (mouse_check_button_pressed(mb_left)) {
  with (obj_player) //for each object 2
  {
    if place_meeting(x, y, obj_cloth)  //test if it's meeting an object3. if it is,
      {
        meetcloth = true //set the toggle variable to true
        break; //stop looking, cuz you've already found a meeting pair
		}
	} //if no object2 meets object3, then meet23 will stay false since no one set it to true
	if meetcloth = true //if that toggle variable is true
  {
   		inventoryAdd(id, 8);
		global.hascloth = true
		instance_destroy(obj_cloth);
	}
		if (global.clothfound = true) {
			inventoryRemove(id, 8)
	}
}
#endregion
 
#region candle
var meetcandle = false 


if (mouse_check_button_pressed(mb_left)) {
  with (obj_player) //for each object 2
  {
    if place_meeting(x, y, obj_candle)  //test if it's meeting an object3. if it is,
      {
        meetcandle = true //set the toggle variable to true
        break; //stop looking, cuz you've already found a meeting pair
		}
	} //if no object2 meets object3, then meet23 will stay false since no one set it to true
	if meetcandle = true //if that toggle variable is true
  {
  		inventoryAdd(id, 9);
		global.hascandle = true
		instance_destroy(obj_candle);
	}
		if (global.candlefound = true) {
			inventoryRemove(id, 9)
	}
}
#endregion
 
#region apron
var meetapron = false 


if (mouse_check_button_pressed(mb_left)) {
  with (obj_player) //for each object 2
  {
    if place_meeting(x, y, obj_apron)  //test if it's meeting an object3. if it is,
      {
        meetapron = true //set the toggle variable to true
        break; //stop looking, cuz you've already found a meeting pair
		}
	} //if no object2 meets object3, then meet23 will stay false since no one set it to true
	if meetapron = true //if that toggle variable is true
  {
    	inventoryAdd(id, 10);
		global.hasapron = true
		instance_destroy(obj_apron);
	}
		if (global.apronfound = true) {
			inventoryRemove(id, 10)
	}
}
#endregion

#region brokenmirror
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
    	inventoryAdd(id, 11);
		global.hasbrokenmirror = true
		instance_destroy(obj_brokenmirror);
	}
		if (global.brokenmirrorfound = true) {
			inventoryRemove(id, 11)
	}
}
#endregion

#region letter
var meettornletter = false 


if (mouse_check_button_pressed(mb_left)) {
  with (obj_player) //for each object 2
  {
    if place_meeting(x, y, obj_tornletter)  //test if it's meeting an object3. if it is,
      {
        meettornletter = true //set the toggle variable to true
        break; //stop looking, cuz you've already found a meeting pair
		}
	} //if no object2 meets object3, then meet23 will stay false since no one set it to true
	if meettornletter = true //if that toggle variable is true
  {
  		inventoryAdd(id, 12);
		global.hastornletter = true
		instance_destroy(obj_tornletter);
	}
		if (global.tornletterfound = true) {
			inventoryRemove(id, 12)
	}
}
#endregion