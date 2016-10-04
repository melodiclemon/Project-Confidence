///player_overworld_moveToDoggieState

var dX = astar_get_cell_room_x(Doggie.x)+astar_get_cell_room_x(astar_get_cell_size()*2);
var dY = astar_get_cell_room_x(Doggie.y);

if(targetX != dX && targetY != dY)
    astar_path(dX,dY,movementSpeed,1);

if(targetX == astar_get_cell_room_x(x) && targetY == astar_get_cell_room_y(y))
{
    //show_message("we have reached the position!")
    targetX = -1;
    targetY = -1;
    animation_play(spr_player_pet,0,0.1);
    y = Doggie.y+1;

    state = player_overworld_doggieMenuState; 
}   


