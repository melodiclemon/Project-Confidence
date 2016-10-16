///Player_Overworld_Move()

//make sure we face the mouse
if(mouse_x > x )
   image_xscale = 1;
else
   image_xscale = -1;


if(mouse_check_button(mb_left))
{
    astar_path_player(mouse_x,mouse_y,movementSpeed,1,0);
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
