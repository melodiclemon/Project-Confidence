///pathfinder_moveTowards(x,y,stopCurrentPath)

var i, arg;
for(i = 0; i < 3; i++)
{
    if(argument_count > i)
    {
        arg[i] = argument[i];
    }
    else
        arg[i] = -1;
}


var size = aStar_get_cell_size();

if(path != undefined && arg[2] == true)
{
    //If we are currently moving, stop the path and snap to the cell
    path_end();
    x -= x mod size;
    y -= y mod size;
}



var ourX = aStar_get_cell_coordinate(x);
var ourY = aStar_get_cell_coordinate(y);
var targetX = aStar_get_cell_coordinate(arg[0]);
var targetY = aStar_get_cell_coordinate(arg[1]);

// if the target position is blocked we check if an adjacent cell is free
// and set the target to that cell instead

if(aStar_get_blocked(targetX,targetY))
{
    var suitableNeighbor = false;
    for(var i = 0; i < 7; i++)
    {
        var neighborPosition = aStar_get_neighbor_position(position_create(targetX,targetY),i);
        if is_undefined(neighborPosition)
        {
            //show_debug_message("neighbor: " + string(i) + " was undefined.")
            continue;
        }
        if(!aStar_get_blocked(position_get_x(neighborPosition),position_get_y(neighborPosition)))
        {
            //show_debug_message("we found a suitable neighbour!");
            suitableNeighbor = true;
            targetX = aStar_get_cell_coordinate(position_get_x(neighborPosition));  
            targetY = aStar_get_cell_coordinate(position_get_y(neighborPosition));
            break;          
        } 
    }
    //if we couldn't find any free neighbour we end the path!
    if(suitableNeighbor == false)
    {
        show_debug_message("this shit happened");
        x -= x mod size;
        y -= y mod size;
        path_end();
        path = undefined;
        exit;
    }
}
path = aStar_find_path(ourX, ourY, targetX, targetY);

