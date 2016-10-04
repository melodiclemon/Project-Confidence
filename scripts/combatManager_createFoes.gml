
var groundSize = room_width/2;
var totalSpriteWidth = 0;
var totalSpacing = room_width/2;
var spacing = 0;
var foeArray;
///set up the battle

ds_list_copy(battleList,GameManager.battleList);

for(var i = 0; i < ds_list_size(battleList); i++)
{
   foeArray[i] = instance_create(0,0,ds_list_find_value(battleList,i));
   totalSpriteWidth += foeArray[i].sprite_width;
}
totalSpacing -= totalSpriteWidth;
spacing = totalSpacing/ds_list_size(battleList);
show_message("tspacing:" + string(totalSpacing) + " spacing: " + string(spacing));
for(var j = 0; j < ds_list_size(battleList); j++)
{
    foeArray[j].x = foeArray[j].sprite_xoffset*(j+1)+(room_width/2)+spacing*(j*1)+foeArray[j].sprite_xoffset*(j);
    foeArray[j].y = 128+(foeArray[j].sprite_yoffset/2);
    
    foeArray[j].uiX = foeArray[j].x;
    foeArray[j].uiY = foeArray[j].y;
}



var player = instance_create(0,0,obj_unitFriend);
player.x = (room_width/4);
player.y = 128 + player.sprite_yoffset/2;


instance_create(32,203,obj_deck);
instance_create(276,220,EndTurnButton);

show_debug_message(attackTarget);

ds_list_clear(battleList);
ds_list_clear(GameManager.battleList);

