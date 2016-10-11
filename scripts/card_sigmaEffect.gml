///card_sigmaEffect()

// returns the value of the other cards in the hand. if the total value is odd
// it returns the positive value, otherwise it return the negative value. if the
// value is 0 it returns 0.

var sum = 0;

for(var i = 0; i < array_length_1d(obj_deck.cardArray); i++)
{
    if(index-1 == i)
        continue;
    else
    {
        sum += obj_deck.cardArray[i].cardValue;     
    }
}
//show_message("pre mod: "+string(sum));
if(sum == 0)
    return 0;

else if(sum mod 2 == 0)
{
    return -sum;    
}
else
{
    return sum;
}
