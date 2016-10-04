if(sprite_index != spr_doggie_move)
{
    animation_play(spr_doggie_move,0,0.2);
}
/*
move_towards_point(Stick.x,Stick.y,3);

if(place_meeting(x,y,Stick))
{
    animation_play(spr_doggie_moveStick,0,0.2);
    state = doggie_returnStickState;
    with(Stick)
        instance_destroy();
}
*/

if(path == undefined)
{
    pathfinder_setPath(Stick.x,Stick.y);   
    
    //if setting up the path was successful we start moving towards it.
    if(path != undefined)
    {
        path_start(path, pathSpeed, path_action_reverse, true);
        endPosition = position_create(path_get_point_x(path, path_get_number(path) - 1), path_get_point_y(path, path_get_number(path) - 1));
        animation_play(spr_doggie_move,0,0.2);
        state = doggie_returnStickState;
    }
}
