if !firsttime{
startDialogue("White")
firsttime = true;
}
else if (color == "blue") && (color1 == "green") && (color2 == "red") && (color3 == "yellow"){
	startDialogue("All of them")
}

else if (color == "blue") && (color1 == "green") && (color2 == "red"){
	startDialogue("Blue Green Red")
}

else if (color == "blue") && (color1 == "green"){
	startDialogue("Blue Green")
}


else if (color == "blue"){
	startDialogue("Blue Only")
}

else if (color1 == "green"){
	startDialogue("Green Only")
}

else if (color2 == "red"){
	startDialogue("Red Only")
}

else if (color3 == "yellow"){
	startDialogue("Yellow Only")
}
else{
startDialogue("Are you done");
}