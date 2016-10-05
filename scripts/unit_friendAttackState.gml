///unit_friendAttackState

var target = obj_combatManager.attackTarget;
if(animation_hitFrame(4))
{
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
}

if(animation_end())
{
animation_play(spr_player_idle,0,200);
state = unit_friendIdleState;
combatManager_turnCompleted(turn.action);
//obj_combatManager.currentTurn = turn.foe;

}
