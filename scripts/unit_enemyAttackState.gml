///unit_enemyAttackState

if(canAttack && animation_hitFrame(3))
{
    obj_unitFriend.defense -= attack;
}

if(animation_end())
{
    animation_play(animations[? "idle"],0,0.05);
    state = unit_enemyIdleState;
    combatManager_turnCompleted(turn.foe);
    obj_deck.canRedraw = true;
    canAttack = true;
}
