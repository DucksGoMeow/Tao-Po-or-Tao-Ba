// The one public-facing function that you need to call!
// Creates a textbox and starts it running its dialogue actions.
// @param topic - What topic the dialogue box should use
// @param onClose - optionally pass in a function that runs when the textbox closes
function startDialogue(topic, onClose = undefined) {
	var inst = instance_create_depth(x, y, -999, obj_textbox);
	inst.onClose = onClose;
	inst.setTopic(topic);
}