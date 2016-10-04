///unit_idleState
if(sprite_index != spr_player_idle)
    animation_play(sprite_player_idle,0,0.05);


if(obj_combatManager.currentTurn == turn.action && !turnCompleted)
{
    state = unit_friendAttackState; 
    animation_play(spr_player_attack,0,0.1);
}

// make sure to let the CombatManager know that we are done with our turn
combatManager_turnCompleted(turn.upkeep,turn.foe);


