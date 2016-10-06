///unit_friendAttackState

var target = obj_combatManager.attackTarget;
if(animation_hitFrame(4))
{
    target.defense -= attack;
    /*
    if(attack == target.defense)
    {
        with(target)
        {
            instance_destroy();
        }
    }
    else
    {
        target.defense -= attack;
    }
    */
}

if(animation_end())
{
    animation_play(spr_player_idle,0,PLAYER_ANIMATION_ATTACK_SPEED);
    state = unit_friendIdleState;
    combatManager_turnCompleted(turn.action);
}
