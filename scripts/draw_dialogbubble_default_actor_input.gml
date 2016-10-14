/// draw_dialogbubble_default_actor_input(actor, dialogID, type, choices, textSound, textSpeed);
// actor - the actorID connected to the bubble
// dialogID - dialogID from dialog.txt
// type - 0 == normal, 1 == shouting, 2 == thinking
// choices - a string array, where each spot in the array is a possible input from the player
// textSound - sound to play. -1 if not sound
// textSpeed - textspeed. default 1.5 (value should be between 0.1(instant) - 3(slow);

var textSound = -1;
if(argument_count >= 5)
{
    textSound = argument[4];
}

var textSpeed = 3;
if(argument_count == 6)
{
    textSpeed = argument[5];
}

var dialogBubble = instance_create(0, 0, obj_dialogbubble);
dialogBubble.actor = argument[0];
dialogBubble.dialogID = argument[1];
dialogBubble.type = argument[2];
dialogBubble.choices = argument[3];
dialogBubble.closeable = false;
dialogBubble.skipable = false;
dialogBubble.textSound = textSound;
dialogBubble.textSpeed = textSpeed;

dialogBubble.write = true;

return dialogBubble;
