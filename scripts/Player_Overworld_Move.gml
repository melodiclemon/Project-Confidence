///Player_Overworld_Move()


//show_debug_message(dir);
if(mouse_check_button(mb_left))
{
    astar_path_player(mouse_x,mouse_y,2);
}

if((astar_get_cell_room_x(x) == targetX && astar_get_cell_room_y(y) == targetY))
{
    
    state = Player_Overworld_Idle;
    animation_play(spr_player_idle,0,0.05);
}

if(mouse_check_button_released(mb_left))
{
    path_end();
    state = Player_Overworld_Idle;
    animation_play(spr_player_idle,0,0.05);
}

/*
if(mouse_check_button(mb_left))
{
    if(point_distance(x,y,mouse_x,mouse_y) > 3)
        move_towards_point(mouse_x,mouse_y,2);
    else
    {
        hspeed = 0;
        vspeed = 0;
    }
    
}

if(mouse_check_button_released(mb_left))
{
    hspeed = 0;
    vspeed = 0;
    state = Player_Overworld_Idle;
    animation_play(spr_player_idle,0,0.05);
}
*/
