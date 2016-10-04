///inventory_useItem(item id)

var iId = argument0;

with(Inventory)
{
    equipment_reset(item[iId,itemData.type]);
    if(item[iId,itemData.type] != itemType.consumable)
    {
        if(item[iId,itemData.type] == itemType.armor)
            armorEquipped = iId;
        else
            weaponEquipped = iId;
    }
    else
        inventory_removeItem(iId);
}
    

with(PlayerManager)
{
    if(Inventory.item[iId,itemData.use] != noone)
        script_execute(Inventory.item[iId,itemData.use]);
}
  

