/// draw_dialogbubble_default(x, y, dialogID, type, closeable, skipable, textSound, textSpeed);
// x - origin x value. Origin is top left corner of the bubble
// y - origin y value. Origin is top left corner of the bubble
// dialogID - dialogID from dialog.txt
// type - 0 == normal, 1 == shouting, 2 == thinking
// closeable - should the player be able to close this dialogbubble? (true/false)
// skipable - should the player be able to skip through dialog in this bubble? (true/false)
// textSound - sound to play. -1 if not sound
// textSpeed - textspeed. default 1.5 (value should be between 0.1(instant) - 3(slow);

var textSound = -1;
if(argument_count == 7)
{
    textSound = argument[6];
}

var textSpeed = 1.5;
if(argument_count >= 8)
{
    textSpeed = argument[7];
}

var dialogBubble = instance_create(argument[0], argument[1], obj_dialogbubble);
dialogBubble.dialogID = argument[2];
dialogBubble.type = argument[3];
dialogBubble.closeable = argument[4];
dialogBubble.skipable = argument[5];
dialogBubble.textSound = textSound;
dialogBubble.textSpeed = textSpeed;

dialogBubble.fontScale = 0.45;
dialogBubble.font = font_default;
dialogBubble.write = true;

return dialogBubble;
