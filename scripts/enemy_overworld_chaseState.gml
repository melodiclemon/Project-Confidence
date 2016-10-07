///enemy_overworld_chaseState
if(animation_end() && sprite_index != spr_idle)
{
    animation_play(spr_idle,0,300);
}


var pX = obj_player.x;
var pY = obj_player.y;

if(targetX != astar_get_cell_room_x(pX) || targetY != astar_get_cell_room_y(pY))
{
    astar_path(pX,pY,movementSpeed);
}
else if(astar_get_cell_room_x(x) == targetX && astar_get_cell_room_x(y) == targetY)
{
    state = enemy_overworld_chaseState;
    animation_play(spr_attack,0,200);
}
