/// draw_dialogbubble_default_actor(actor, dialogID, type, closeable, skipable, textSound, textSpeed);
// actor - the actorID connected to the bubble
// dialogID - dialogID from dialog.txt
// type - 0 == normal, 1 == shouting, 2 == thinking
// closeable - should the player be able to close this dialogbubble? (true/false)
// skipable - should the player be able to skip through dialog in this bubble? (true/false)
// textSound - sound to play. -1 if not sound
// textSpeed - textspeed. default 1.5 (value should be between 0.1(instant) - 3(slow);

var customTextSound = -1;
if(argument_count >= 6)
{
    customTextSound = argument[5];
}

var customTextSpeed = -1;
if(argument_count == 7)
{
    customTextSpeed = argument[6];
}

var dialogBubble = instance_create(0, 0, obj_dialogbubble);

with(dialogBubble)
{
    actor = argument[0];
    dialogID = argument[1];
    type = argument[2];
    closeable = argument[3];
    skipable = argument[4];
    
    if(customTextSound != -1)
        textSound = customTextSound;
    
    if(customTextSpeed != -1)
        textSpeed = customTextSpeed;
    
    write = true;
}

with(DialogManager)
{
    ds_list_add(dialogList, dialogBubble);
}
