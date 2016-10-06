///trick_roll
//the enemy won't deal any damage
if(obj_combatManager.currentTurn == turn.foe)
{
    obj_unitFriend.defense++;
    return false;
}
//the trick had no effect!
else
{
    return false;
}
