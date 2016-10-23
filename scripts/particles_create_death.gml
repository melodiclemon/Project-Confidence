///particles_create_death(x,y)


var xx = argument0;
var yy = argument1;

var part = instance_create(xx,yy,obj_part_death);
part.x1 = xx-sprite_xoffset;
part.x2 = xx+sprite_xoffset;
part.y1 = yy;
part.y2 = yy;
part.propertiesSet = true;
part.trigger = true;
