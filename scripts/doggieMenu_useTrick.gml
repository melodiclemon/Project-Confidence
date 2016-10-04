///doggieMenu_useTrick(trick id)

var iId = argument0;

with(DoggieMenu)
{
    trickEquipped = iId;
}
    

with(PlayerManager)
{
    if(Inventory.item[iId,itemData.use] != noone)
        script_execute(Inventory.item[iId,itemData.use]);
}
  

