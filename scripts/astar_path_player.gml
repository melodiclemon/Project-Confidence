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

if(arg[4] == true)
{
    var tX = arg[0];
    var tY = arg[1];
}
else
{
    var tX = astar_get_cell_room_x(arg[0]);
    var tY = astar_get_cell_room_y(arg[1]);
}

var spd = arg[2];

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
else
    mp_linear_step_object(tX,tY,spd,Block);



/*
var i, arg;
for (i = 0; i < 4; i ++)
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

if(arg[3] == true)
{
    var tX = arg[0];
    var tY = arg[1];
}
else
{
    var tX = astar_get_cell_room_x(arg[0]);
    var tY = astar_get_cell_room_y(arg[1]);
}

var spd = arg[2];


if(mp_grid_path(global.astarGrid,path,x,y,tX,tY,1))
{
    if(arg[3] == true)
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
*/

