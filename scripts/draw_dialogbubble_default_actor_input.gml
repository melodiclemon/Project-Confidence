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

with(dialogBubble)
{
    actor = argument[0];
    dialogID = argument[1];
    type = argument[2];
    choices = argument[3];
    closeable = false;
    skipable = false;
    textSound = textSound;
    textSpeed = textSpeed;
    write = true;
}

with(DialogManager)
{
    ds_list_add(dialogList, dialogBubble);
}
