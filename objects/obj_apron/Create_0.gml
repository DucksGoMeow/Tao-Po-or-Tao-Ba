my_id = $"{x}:{y}" //we need to run our own custom id system to tell the objects apart, 
//because 'id' is volatile and can change between runs. $" " is called a string format. 
//it's just a neater way of writing string(x)+":"+string(y). the things inside {} run 
//the code.

if global.room_save_data[$ room_get_name(room)] == undefined
{
  global.room_save_data[$ room_get_name(room)] = {};
}


if global.room_save_data[$ room_get_name(room)][$ my_id] == true {
//everything data. room data . object data. you can see the two inner layers i 
//mentioned before with the two [$ ]. we store whether it's true or false there, 
//indicating whether i've destroyed this object before or not
//a property of [$ ] is that if you get a variable that doesn't exist in the struct,
//it will not crash. it'll just return "undefined"

//if that data already exists, and is true, i.e. we've already destroyed the object,
  instance_destroy(); //then destroy it.
}
else{ //otherwise, if it's false, OR if it is undefined (aka we've never registered 
	//this object with the save yet)
  global.room_save_data[$ room_get_name(room)][$ my_id] = false; //register it 
  //with the save
  //if the data is false, then we also just override it with false, so that's fine :)
}