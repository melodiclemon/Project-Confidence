///unit_enemyReanimateState()
if(sprite_index != animations[? "reanimate"])
{
   
    defense = initialDefense;
    attack = initialAttack;
    reanimate -= 1;
    canAttack = false;
    animation_play(animations[? "reanimate"],0,animReanimateSpeed);
   // alarm[0] = animation_set_frame_duration_ms(animReanimateSpeed);  
}

if(animation_end())
{
    combatManager_turnCompleted(turn.foe);
    alarm[0] = -1;
    state = unit_enemyIdleState;
    exit;
}

