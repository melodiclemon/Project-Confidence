///doggie_idleState()

var pX = obj_player.x;
var pY = obj_player.y;

//check if the player is too far away from us. If that is the case we set up a path.
if(point_distance(x,y,obj_player.x,obj_player.y) > astar_get_cell_size()*5)
{
    //targetX = astar_get_cell_room_x(pX);
   // targetY = astar_get_cell_room_y(pY);
    astar_path(obj_player.x,obj_player.y,2);
    animation_play(spr_doggie_move,0,DOGGIE_ANIMATION_MOVE_SPEED);
    state = doggie_moveToPlayerState;
}
