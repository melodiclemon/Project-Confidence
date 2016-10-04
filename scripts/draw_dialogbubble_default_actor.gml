/// draw_dialogbubble_default_actor(actor, dialogID, type, closeable, skipable, textSound, textSpeed);
// actor - the actorID connected to the bubble
// dialogID - dialogID from dialog.txt
// type - 0 == normal, 1 == shouting, 2 == thinking
// closeable - should the player be able to close this dialogbubble? (true/false)
// skipable - should the player be able to skip through dialog in this bubble? (true/false)
// textSound - sound to play. -1 if not sound
// textSpeed - textspeed. default 1.5 (value should be between 0.1(instant) - 3(slow);

var textSound = -1;
if(argument_count == 6)
{
    textSound = argument[5];
}

var textSpeed = 1.5;
if(argument_count >= 7)
{
    textSpeed = argument[6];
}

var dialogBubble = instance_create(0, 0, obj_dialogbubble);
dialogBubble.actor = argument[0];
dialogBubble.dialogID = argument[1];
dialogBubble.type = argument[2];
dialogBubble.closeable = argument[3];
dialogBubble.skipable = argument[4];
dialogBubble.textSound = textSound;
dialogBubble.textSpeed = textSpeed;

dialogBubble.fontScale = 0.45;
dialogBubble.font = font_default;
dialogBubble.write = true;

return dialogBubble;
