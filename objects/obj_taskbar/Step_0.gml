//This is a pretty bad way to check to see if tasks are done but it shouldn't matter too much if you don't have thousands of tasks.
for (var _i = 0; _i < array_length(taskList); _i++)
{
    if (taskList[_i].taskCheck()) { removeTask(taskList[_i].taskIndex) }; 
}

//Test stuff
if (keyboard_check_pressed(vk_space))
{
    crops += 1;
}