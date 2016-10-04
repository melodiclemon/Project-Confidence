/// draw_dialogbubble_ext_color(x, y, dialogID, type, font, fontscale, fontcolor, bubblecolor, textSpeed, typewriter, closeable, skipable, actor);
// x - origin x value. Origin is top left corner of the bubble
// y - origin y value. Origin is top left corner of the bubble
// dialogID - dialogID from dialog.txt
// type - 0 == normal, 1 == shouting, 2 == thinking
// font - a font to use
// fontscale - scale of the font used. x and y must be scaled equally. default 1
// fontcolor - fontcolor
// bubblecolor - bubblecolor
// textSpeed - speed of the text. default 1.5
// textSound - sound to play. -1 if not sound
// typewriter - 0 == no typewriter, 1 == char by char. 2 == word by word
// closeable - should the player be able to close this dialogbubble? (true/false)
// skipable - should the player be able to skip through dialog in this bubble? (true/false)
// actor - is the bubble connected to an actor? -1 if not, else id

var dialogBubble = instance_create(argument0, argument1, obj_dialogbubble);
dialogBubble.dialogID = argument2;
dialogBubble.type = argument3;
dialogBubble.font = argument4;
dialogBubble.fontScale = argument5;
dialogBubble.color = argument6;
dialogBubble.bubbleColor = argument7
dialogBubble.textSpeed = argument8;
dialogBubble.textSound = argument9;
dialogBubble.typewriter = argument10
dialogBubble.closeable = argument11;
dialogBubble.skipable = argument12;
dialogBubble.actor = argument13;
dialogBubble.write = true;

return dialogBubble;
