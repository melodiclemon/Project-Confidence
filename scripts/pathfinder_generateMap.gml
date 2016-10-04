///pathfinder_generateMap()

/*
*   Generate a map
*/

var col;

for(var j = 0; j < room_height / aStar_get_cell_size(); j ++)
{
    for(var i = 0; i < room_width / aStar_get_cell_size(); i ++)
    {
        if(collision_point(i*aStar_get_cell_size(),j*aStar_get_cell_size(),Block,0,1))
        {
            aStar_set_blocked(i,j,true);
        }
        else
            aStar_set_blocked(i,j,false);
    }
}

