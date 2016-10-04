///combatManager_turnCompleted(turns)

// make sure to let the CombatManager know that we are done with our turn

var i;

for(i = 0; i < argument_count; i++)
{
    arg[i] = argument[i];
}

for(i = 0; i < array_length_1d(arg); i++)
{
    if(obj_combatManager.currentTurn == arg[i])
    {
        turnCompleted = true;
        exit;
    }   
}

