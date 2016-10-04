///doggie_idleState()

//check if the player is too far away from us. If that is the case we set up a path.

/*
if(point_distance(x,y,obj_player.x,obj_player.y) > aStar_get_cell_size()*5)
{
    pathfinder_setPath(obj_player.x,obj_player.y);   
    
    //if setting up the path was successful we start moving towards it.
    if(path != undefined)
    {
        path_start(path, pathSpeed, path_action_reverse, true);
        endPosition = position_create(path_get_point_x(path, path_get_number(path) - 1), path_get_point_y(path, path_get_number(path) - 1));
        animation_play(spr_doggie_move,0,0.2);
        state = doggie_moveToPlayerState;
    }
}
*/
/*
if(point_distance(x,y,obj_player.x,obj_player.y) > 45)
{
    if(mp_grid_path(global.grid,path,x,y,obj_player.x,obj_player.y,1))
    {
        path_start(path,3,path_action_stop,false);
        
    }
    targetX = obj_player.x;
    targetY = obj_player.y;
    animation_play(spr_doggie_move,0,0.2);
    state = doggie_moveToPlayerState;
}
*/

if(point_distance(x,y,obj_player.x,obj_player.y) > 40)
{
    astar_path(obj_player.x,obj_player.y,3);
    animation_play(spr_doggie_move,0,0.2);
    state = doggie_moveToPlayerState;
}
