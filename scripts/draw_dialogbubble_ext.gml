/// draw_dialogbubble_ext(x, y, dialogID, type, font, fontscale, textSpeed, textSound, typewriter, closeable, skipable, actor);
// x - origin x value. Origin is top left corner of the bubble
// y - origin y value. Origin is top left corner of the bubble
// dialogID - dialogID from dialog.txt
// type - 0 == normal, 1 == shouting, 2 == thinking
// font - a font to use
// fontscale - scale of the font used. x and y must be scaled equally. default 1
// textSpeed - speed of the text. default 1.5
// textSound - sound to play. -1 if not sound
// typewriter - 0 == no typewriter, 1 == char by char. 2 == word by word
// closeable - should the player be able to close this dialogbubble? (true/false)
// skipable - should the player be able to skip through dialog in this bubble? (true/false)
// actor - is the bubble connected to an actor? -1 if not, else id

var dialogBubble = instance_create(argument0, argument1, obj_dialogbubble);

with(dialogBubble)
{
    dialogID = argument2;
    type = argument3;
    font = argument4;
    fontScale = argument5;
    textSpeed = argument6;
    textSound = argument7;
    typewriter = argument8;
    closeable = argument9;
    skipable = argument10;
    actor = argument11;
    write = true;
}

with(DialogManager)
{
    ds_list_add(dialogList, dialogBubble);
}
