//card_removeCardFromArray(id)

for(var i = 0; i < array_length_1d(obj_deck.cardArray); i++)
{
    if(obj_deck.cardArray[i] == argument0)
    {
        obj_deck.cardArray[i] = -1;
        break;
    }
}
