///particles_create_card(x,y,type)


var xx = argument0;
var yy = argument1;
var type = argument2;


var part = instance_create(xx,yy,obj_part_card);
part.x1 = xx-sprite_xoffset;
part.x2 = xx+sprite_xoffset;
part.y1 = yy-sprite_yoffset;
part.y2 = yy+sprite_yoffset;

switch(type)
{
    case 0:
        part.color = c_white;
        break;
    case 1: 
        part.color = c_blue;
        break;
    case 2:
        part.color = c_yellow;
        break;
    case 3:
        part.color = c_green;
        break;
    case 4:
        part.color = c_red;
        break;
    
}

part.propertiesSet = true;
part.trigger = true;
