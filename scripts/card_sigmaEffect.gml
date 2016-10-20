///card_sigmaEffect(id[optional])

var i, arg;
for (i = 0; i < 1; i += 1;)
{
    if argument_count > i
    {
        arg[i] = argument[i]
    }
    else
    {
        arg[i] = -1;
    }
}



// returns the value of the other cards in the hand. if the total value is odd
// it returns the positive value, otherwise it return the negative value. if the
// value is 0 it returns 0.
var currentValue = arg[0];
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
    if(currentValue != -1)
    {
    if(currentValue - sum < 0)
        return -currentValue;
    else
        return -sum;  
    }  
    else
        return -sum;
}
else
{
    return sum;
}
