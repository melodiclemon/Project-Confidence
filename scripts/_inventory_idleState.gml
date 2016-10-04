///inventory_idleState()

var i;
//inventory_updateVisibleInventory();

for(i = 0; i < array_length_1d(itemObject);i++)
{
    with(itemObject[i])
    {
        if(mouse_over())
        {
            if(mouse_check_button_pressed(mb_left))
            {
                with(PlayerManager)
                {
                    inventory_useItem(item[ds_list_find_value(inventory,i+inventoryPosition),itemData.use]);
                }
            }
        }
    }
}



/*
// move down one item in the inventory
if(alarm[0] == -1 && mouse_y > bbox_bottom && ds_list_size(items) > 5 && ds_list_size(items) > array_length_1d(visibleItems) + currentPosition)
{
    currentPosition++;
    for(i = 0; i < array_length_1d(visibleItems); i++)
    {
        visibleItems[i] = ds_list_find_value(items,i+currentPosition);
    }
    alarm[0] = room_speed;
}

// move up one item in the inventory
if(alarm[0] == -1 && mouse_y < bbox_top && ds_list_size(items) > 5 && currentPosition > 0)
{
    currentPosition--;
    for(i = 0; i < array_length_1d(visibleItems); i++)
    {
        visibleItems[i] = ds_list_find_value(items,currentPosition-i);
    }
    alarm[0] = room_speed;
}
*/


