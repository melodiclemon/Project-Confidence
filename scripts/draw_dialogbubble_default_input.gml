/// draw_dialogbubble_default_input(x, y, dialogID, type, choices, textSound, textSpeed);
// x - origin x value. Origin is top left corner of the bubble
// y - origin y value. Origin is top left corner of the bubble
// dialogID - dialogID from dialog.txt
// type - 0 == normal, 1 == shouting, 2 == thinking
// choices - a string array, where each spot in the array is a possible input from the player
// textSound - sound to play. -1 if not sound
// textSpeed - textspeed. default 1.5 (value should be between 0.1(instant) - 3(slow);

var textSound = -1;
if(argument_count >= 6)
{
    textSound = argument[5];
}

var textSpeed = 3;
if(argument_count == 7)
{
    textSpeed = argument[6];
}

var dialogBubble = instance_create(argument[0], argument[1], obj_dialogbubble);

with(dialogBubble)
{
    dialogID = argument[2];
    type = argument[3];
    choices = argument[4];
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
