///unit_friendAttackState

var target = obj_combatManager.attackTarget;
if(animation_hitFrame(4))
{
    draw_dialogbubble_default_actor(id, "PATTACK", 0, false, false);
    target.defense -= attack;
}

if(animation_end())
{
    animation_play(spr_player_idle,0,PLAYER_ANIMATION_IDLE_SPEED);
    state = unit_friendIdleState;
    combatManager_turnCompleted(turn.action);
}
