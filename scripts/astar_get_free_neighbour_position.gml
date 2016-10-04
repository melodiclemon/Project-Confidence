///astar_get_free_neighbour_position(x,y)

var checkX = 0;
var checkY = 0;
var m = 0;

var xx = 0;
var yy = 0;

var gridX = argument0;
var gridY = argument1;

if(gridX = 0)
    checkX = 1;
    
if(gridY = 0)
    checkY = 1;
    
for(var i = checkX; i < 3; i++)
{
    for(var j = checkY; j < 3; j++)
    {
        //we are looking at our own square, just continue
        if(i == 1 && j == 1)
            continue;
        else if(mp_grid_get_cell(global.astarGrid,gridX,gridY == 0))
        {
            m = i+j+m;
        }
        //there is no more square to look at.
        else if(i == 2 && j == 2)
            m = -1;
    }
    m +=2;
}

if(m == -1)
    return -1;
else
{
    switch(m)
    {
        case 0:
        xx = astar_get_cell_room_x(-2);
        yy = astar_get_cell_room_y(-2);
        break;
        case 1:
        xx = astar_get_cell_room_x(-1);
        yy = 0
        break;
        case 2:
        xx = astar_get_cell_room_x(-1);
        yy = astar_get_cell_room_y(1);
        break;
        case 3:
        xx = astar_get_cell_room_x(-1);
        yy = astar_get_cell_room_y(0);
        break;
        case 4:
        xx = astar_get_cell_room_x(0);
        yy = astar_get_cell_room_y(0);
        break;
        case 5:
        xx = astar_get_cell_room_x(1);
        yy = astar_get_cell_room_y(0);
        break;
        case 6:
        xx = astar_get_cell_room_x(-1);
        yy = astar_get_cell_room_y(1);
        break;
        case 7:
        xx = astar_get_cell_room_x(0);
        yy = astar_get_cell_room_y(1);
        break;
        case 8:
        xx = astar_get_cell_room_x(1);
        yy = astar_get_cell_room_y(1);
        break;
    }




    return position_create(xx+gridX,yy+gridY);
}
