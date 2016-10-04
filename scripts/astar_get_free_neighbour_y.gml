///astar_get_free_neighbour_y(x,y)

var gridX = argument0;
var gridY = argument1;

return position_get_y(astar_get_cell_room_y(astar_get_free_neighbour_position(gridX,gridY)));
