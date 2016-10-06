///Player_Overworld_Move()

if(mouse_check_button(mb_left))
{
    astar_path_player(mouse_x,mouse_y,1);
}

if((astar_get_cell_room_x(x) == targetX && astar_get_cell_room_y(y) == targetY))
{
    
    state = Player_Overworld_Idle;
    animation_play(spr_player_idle,0,PLAYER_ANIMATION_IDLE_SPEED);
}

if(mouse_check_button_released(mb_left))
{
    path_end();
    state = Player_Overworld_Idle;
    animation_play(spr_player_idle,0,PLAYER_ANIMATION_IDLE_SPEED);
}
