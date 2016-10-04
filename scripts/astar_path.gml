///astar_path(x,y,speed,close)

var tX = astar_get_cell_room_x(argument0);
var tY = astar_get_cell_room_y(argument1);
var spd = argument2;
var close = argument3;


if(mp_grid_path(global.astarGrid,path,x,y,tX,tY,1))
{
    targetX = tX;
    targetY = tY;
    path_start(path,spd,path_action_stop,false);  
     
} 
else if(close == 1)
{
    if(mp_grid_path(global.astarGrid,path,x,y,astar_get_free_neighbour_x(tX,tY),astar_get_free_neighbour_y(tX,tY),1))
    {
        path_start(path,spd,path_action_stop,false);
        show_message("found a path close to it");
    }
    
    else
        show_message("Unable to find a path!"); 
}
else
    show_message("Unable to find a path!"); 

