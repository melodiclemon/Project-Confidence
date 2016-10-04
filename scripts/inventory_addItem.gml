///inventory_addItem(itemId)


var iId = argument0;

with(Inventory)
{
    // make sure the item doesn't already exist.
    // if it does we add another stack of it and
    // exit the script.
    for(var i = 0; i < ds_list_size(inventory); i++)
    {
        if(ds_list_find_value(inventory,i) == iId)
        {
            ds_list_replace(inventoryCount,i,ds_list_find_value(inventoryCount,i)+1);
            exit;
        }
        
    }
    // if we didn't the item we add it to the inventory
    // and set its amount to 1.
    ds_list_add(inventory,iId);
    ds_list_add(inventoryCount,1);
}

