///card_setValue()
var mN = random(1);
var highestStrongNumber = -1;
var nN;

//run the strong numbers.
for(var i = 0; i < array_length_1d(PlayerManager.strongNumbers); i++)
{
    if(PlayerManager.strongChances[i] >= mN)
    {
       // show_debug_message("returning: " +  string(PlayerManager.strongNumbers[i]));
        return PlayerManager.strongNumbers[i];
        
    }
}
//if none of the strong numbers are chosen, go through the other numbers

//set the highest number we can get.
for(var j = 0; j < array_length_1d(PlayerManager.strongNumbers); j++)
{
    if(highestStrongNumber < PlayerManager.strongNumbers[j])
        highestStrongNumber = PlayerManager.strongNumbers[j];
} 

while(mN < 1)
{
    nN = irandom(highestStrongNumber);
    
    for(var h = 0; h < array_length_1d(PlayerManager.strongNumbers); h++)
    {
        if(highestStrongNumber != 3)
        {
            if(nN == PlayerManager.strongNumbers[h])
                nN = 0;   
        }
    }
    if(nN != 0)
        return nN;
}
