///astar_path_player(x,y,speed,step,converted)

var i, arg;
for (i = 0; i < 5; i ++)
{
    if argument_count > i
    {
       arg[i] = argument[i]
    }
    else
    {
       arg[i] = -1;
    }
}
//if the values are already converted we just feed them in.
if(arg[4] == true)
{
    var tX = arg[0];
    var tY = arg[1];
}
//otherwise we make sure to convert them.
else
{
    var tX = astar_get_cell_room_x(arg[0]);
    var tY = astar_get_cell_room_y(arg[1]);
}

var spd = arg[2];

//if we want to move the player along a traversable path towards the goal.
if(arg[3] == false)
{
    if(mp_grid_path(global.astarGrid,path,x,y,tX,tY,1))
    {
        if(arg[4] == true)
        {
            targetX = astar_get_cell_room_x(tX);
            targetY = astar_get_cell_room_y(tY);
        }
        else
        {
            targetX = tX;
            targetY = tY;
        }
        path_start(path,spd,path_action_stop,false);  
         
    } 
    else
        mp_linear_step_object(tX,tY,spd,Block);
}
//otherwise we just take one step at the time towards the goal.
else
    mp_linear_step_object(tX,tY,spd,Block);
