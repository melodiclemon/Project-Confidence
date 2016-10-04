///trick_bark()

//the enemy won't deal any damage
if(obj_combatManager.currentRound == 1 && obj_combatManager.currentTurn == turn.foe)
{
    return true;
}
//the trick had no effect!
else
{
    return false;
}
