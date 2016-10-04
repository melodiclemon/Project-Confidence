///unit_friendAttackState


with(obj_unitFoe)
{
    instance_destroy();
}

state = unit_friendIdleState;
obj_combatManager.currentTurn = turn.foe;
