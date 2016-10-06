///doggieMenu_useTrick(trick id)

var iId = argument0;

with(DoggieMenu)
{
    trickEquipped = iId;
}
    

with(PlayerManager)
{
    doggieTrick = DoggieMenu.trick[iId,trickData.use];
}
  
