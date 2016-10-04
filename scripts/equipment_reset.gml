///equipment_reset(itemType)

var iType = argument0

//resets the appropriate stats depending on the item type.
with(PlayerManager)
{
    if(iType == itemType.armor)
    {
        for(var j = 0; j < 4; j++)
        {
            cardChanceArray[j] = 0;
        }
        defense = 0;
    }
    else if(iType == itemType.weapon)
    {
        for(var i = 0; i < 3; i++)
        {
            strongNumbers[i] = -1;
            strongChances[i] = -1;
            ability = noone;
        }
    }
    else if(iType == itemType.consumable)
    {
        exit;
    }

}
