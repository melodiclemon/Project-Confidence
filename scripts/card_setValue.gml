///card_setValue()

var minValue = PlayerManager.cardMinValue;
var maxValue = PlayerManager.cardMaxValue;
var randomValue;

var chanceArray = PlayerManager.strongChances;
var valueArray = PlayerManager.strongNumbers;

var success = multi_chance(valueArray[0],chanceArray[0],valueArray[1],chanceArray[1],valueArray[2],chanceArray[2],0);

if(success != 0)
    return success;

else
{
    repeat(100)
    {
        randomValue = irandom_range(minValue,maxValue);
        if(randomValue != valueArray[0] && randomValue != valueArray[1] && randomValue != valueArray[2])
            return randomValue;
    }
   
    return randomValue;
}
