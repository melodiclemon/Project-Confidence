///unit_friendAttackState

var target = obj_combatManager.attackTarget;
if(animation_hitFrame(4))
{
    draw_dialogbubble_default_actor(id, "PATTACK", 0, false, false);
    target.defense -= attack;
    //instance_create(bbox_right,y-24,obj_part_punch);
}

if(animation_end())
{
    animation_play(spr_player_idle,0,PLAYER_ANIMATION_IDLE_SPEED);
    state = unit_friendIdleState;
    combatManager_turnCompleted(turn.action);
}
