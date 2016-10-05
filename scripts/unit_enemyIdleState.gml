unit_grow();

if(sprite_index != animations[? "idle"])
    animation_play(animations[? "idle"], 0,200);

if(obj_combatManager.currentTurn == turn.foe && !turnCompleted)
{
    state = unit_enemyAttackState;  
    animation_play(animations[? "attack"],0,200);
}

// make sure to let the CombatManager know that we are done with our turn
combatManager_turnCompleted(turn.upkeep,turn.action,turn.friend);
