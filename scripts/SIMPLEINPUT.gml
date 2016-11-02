actor = argument0;
input = argument1;

if (input == 0) 
{
    draw_dialogbubble_default_actor(actor, "SIMPLEINPUTYES", 3, true, true);
}
else if (input == 1)
{   
    draw_dialogbubble_default_actor(actor, "SIMPLEINPUTNO", 1, true, true);
}
else if (input == 2)
{
    draw_dialogbubble_default_actor(actor, "SIMPLEINPUTMAYBE1", 0, true, true);
}
else
{
    show_debug_message("No input or illegal input was submitted.");
}

