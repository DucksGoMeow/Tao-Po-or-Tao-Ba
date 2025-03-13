tasklist = [];
taskstruct = 
{
  taskname : "Do thing.",
  taskdesc : "Go to the place and do the thing."
}

array_push(tasklist, taskstruct)

for (i = 0; i < array_length(tasklist); i++){
  draw_text(0, 0 + (10 * i), tasklist[i].taskname)
}