///enemy_overworld_idleState()

var pX = obj_player.x;
var pY = obj_player.y;

//make sure we are playing the correct animation
if(animation_end() && sprite_index != spr_idle)
{
    animation_play(spr_idle,0,200);
}

//check if we are within range to chase the player
if(point_distance(x,y,pX,pY) < astar_get_cell_size()*attackRange)
{

    astar_path(pX,pY,movementSpeed);
    state = enemy_overworld_chaseState;
}

