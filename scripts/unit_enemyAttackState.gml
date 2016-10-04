///unit_enemyAttackState

if(canAttack && animation_hitFrame(3))
{
    if(PlayerManager.doggieTrick != noone)
        combat_perform(combat_foe_attack,PlayerManager.doggieTrick);
        //trick_perform(PlayerManager.doggieTrick,combat_foe_attack);
    else
        script_execute(combat_foe_attack);
}

if(animation_end())
{
    animation_play(animations[? "idle"],0,0.05);
    state = unit_enemyIdleState;
    combatManager_turnCompleted(turn.foe);
    obj_deck.canRedraw = true;
    canAttack = true;
}
