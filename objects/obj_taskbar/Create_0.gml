taskList = [];

updateTaskIndex = function() {
    for (var _i = 0; _i < array_length(taskList); _i++) 
    {
        taskList[_i].taskIndex = _i + 1;
    }
}

removeTask = function(_taskIndex) {
    for (var _i = 0; _i < array_length(taskList); _i++) 
    {
        if (taskList[_i].taskIndex == _taskIndex) 
        {
            array_delete(taskList, _i, 1);
            updateTaskIndex();
            break;
        }
    }
}

createTask = function(_name, _descriptionFunction, _check) 
{
    var _task =  
    {
            taskIndex: -1,
            name: _name,
            descriptionFunction: _descriptionFunction,
            taskCheck: _check,
    };
    array_push(taskList, _task);
    updateTaskIndex();
}

//Just some test stuff.
crops = 0;

createTask("Crops", function() { return "Gathered: " + string(crops) + "/3"; }, function() {return (crops >= 3);});