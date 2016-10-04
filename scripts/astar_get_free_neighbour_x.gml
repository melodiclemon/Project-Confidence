///astar_get_free_neighbour_x(x,y)

var gridX = argument0;
var gridY = argument1;

return position_get_x(astar_get_cell_room_x(astar_get_free_neighbour_position(gridX,gridY)));
