///Player_Overworld_Move()


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

/*
//Stop path if we are close enough
if(path != undefined)
{
    if(point_distance(x, y, position_get_x(endPosition), position_get_y(endPosition)) <= pathSpeed)
    {
        x = position_get_x(endPosition);
        y = position_get_y(endPosition);
        path_end();
        path = undefined;
        state = Player_Overworld_Idle;
        animation_play(spr_player_idle,0,0.05);
    }
}
*/

/*
if(mouse_check_button_released(mb_left))
{
    var size = aStar_get_cell_size();
    if(path != undefined)
    {
        //If we are currently moving, stop the path and snap to the cell
        path = undefined;
        path_end();
        x -= x mod size;
        y -= y mod size;
        
    }
}
*/
if(mouse_check_button_released(mb_left))
{
    hspeed = 0;
    vspeed = 0;
    state = Player_Overworld_Idle;
    animation_play(spr_player_idle,0,0.05);
}

