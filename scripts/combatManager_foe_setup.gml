///combatManager_foe_setup(list)

var list = argument0;

var groundSize = room_width/2;
var totalSpriteWidth = 0;
var totalSpacing = room_width/2;
var spacing = 0;
var foeArray;

for(var i = 0; i < ds_list_size(list); i++)
{
   foeArray[i] = instance_create(0,0,ds_list_find_value(list,i));
   totalSpriteWidth += foeArray[i].sprite_width;
}

totalSpacing -= totalSpriteWidth;
spacing = totalSpacing/ds_list_size(list);
for(var j = 0; j < ds_list_size(list); j++)
{
    foeArray[j].x = foeArray[j].sprite_xoffset*(j+1)+(room_width/2)+spacing*(j*1)+foeArray[j].sprite_xoffset*(j);
    foeArray[j].y = 143+(foeArray[j].sprite_yoffset/2);
    
    foeArray[j].uiX = foeArray[j].x;
    foeArray[j].uiY = foeArray[j].y;
}

