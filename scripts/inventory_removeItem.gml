///inventory_removeItem(itemId)

var iId = argument0;

with(Inventory)
{
    index = ds_list_find_index(inventory,iId);

    // if the item count is reduced to 0 we remove it from the list.
    // We also make sure to update the weapon and armor id. Otherwise 
    // we reduce the amount by 1.
    if(inventoryCount[| index] - 1 == 0)
    {
        if(iId == weaponEquipped || iId == armorEquipped)
        {
            equipment_reset(item[iId,itemData.type]);
            if(item[iId,itemData.type] == armorEquipped)
                armorEquipped = -1;
            else
                weaponEquipped = 4;
               
        }
            
        ds_list_delete(inventory,index);
        ds_list_delete(inventoryCount,index);
    }
    else
        ds_list_replace(inventoryCount,index,inventoryCount[| index] -1);
}
