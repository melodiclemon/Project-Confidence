///doggie_moveToPlayerState()

var pX = obj_player.x;
var pY = obj_player.y;

if(targetX != astar_get_cell_room_x(pX) || targetY != astar_get_cell_room_y(pY))
{
   // targetX = astar_get_cell_room_x(pX);
   // targetY = astar_get_cell_room_y(pY);
    astar_path(pX,pY,2);
}
else if(astar_get_cell_room_x(x) == targetX && astar_get_cell_room_x(y) == targetY)
{
    animation_play(spr_doggie_idle,0,DOGGIE_ANIMATION_MOVE_SPEED);
    state = doggie_idleState;
}
