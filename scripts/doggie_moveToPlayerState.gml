///doggie_moveToPlayerState()

var pX = obj_player.x;
var pY = obj_player.y;

if(targetX != astar_get_cell_room_x(pX) || targetY != astar_get_cell_room_y(pY))
{
    astar_path(pX,pY,2,0);
    //show_debug_message(pX
}
else if(astar_get_cell_room_x(x) == targetX && astar_get_cell_room_x(y) == targetY)
{
    animation_play(spr_doggie_idle,0,0.1);
    state = doggie_idleState;
}

/*
//Stop path if we are close enough
if(path != undefined)
{
    //check if we are close enough to reach the end of the path during the next iteration.
    if(point_distance(x, y, position_get_x(endPosition), position_get_y(endPosition)) <= pathSpeed)
    {
        //set us up in the correct position and end the current path.
        x = position_get_x(endPosition);
        y = position_get_y(endPosition);
        path_end();
        path = undefined;
        
        //check if the player has moved away from us and if so plan out a new path.
        if(point_distance(x,y,obj_player.x,obj_player.y) > aStar_get_cell_size()*5)
        {
            pathfinder_setPath(obj_player.x,obj_player.y);
            if(path != undefined)
            {
                
                path_start(path, pathSpeed, path_action_reverse, true);
                endPosition = position_create(path_get_point_x(path, path_get_number(path) - 1), path_get_point_y(path, path_get_number(path) - 1));
            }
        }
        //else go back to idle
        else
        {
            animation_play(spr_doggie_idle,0,0.1);
            state = doggie_idleState;
        }      
    }
}
*/

