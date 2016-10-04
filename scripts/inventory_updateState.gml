///inventory_updateVisibleInventory()

var i;
var size = array_length_1d(visibleInventory) ;

if(ds_list_size(inventory) < array_length_1d(visibleInventory))
    size = ds_list_size(inventory);

for(i = 0; i < size; i++)
{
    visibleItems[i] = ds_list_find_value(inventory,i);
}

state = inventory_idleState;
