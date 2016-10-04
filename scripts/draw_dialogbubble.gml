/// draw_dialogbubble(x, y, dialogID, type, font);
// x - origin x value. Origin is top left corner of the bubble
// y - origin y value. Origin is top left corner of the bubble
// dialogID - dialogID from dialog.txt
// type - 0 == normal, 1 == shouting, 2 == thinking
// font - a font to use

var dialogBubble = instance_create(argument0, argument1, obj_dialogbubble);
dialogBubble.dialogID = argument2;
dialogBubble.type = argument3;
dialogBubble.font = argument4;
dialogBubble.write = true;

return dialogBubble;
