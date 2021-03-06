///unit_idleState

//check for death
if(defense <= 0)
{
    obj_combatManager.currentTurn = turn.finished;
    animation_play(spr_player_defeat,0,200);
    state = unit_friendDefeatState;
}


//play idle sprite
if(animation_end() && sprite_index != spr_player_idle)
    animation_play(spr_player_idle,0,PLAYER_ANIMATION_IDLE_SPEED);


if(obj_combatManager.currentTurn == turn.action && !turnCompleted)
{
    state = unit_friendAttackState; 
    animation_play(spr_player_attack,0,PLAYER_ANIMATION_ATTACK_SPEED);
}

if(obj_combatManager.currentTurn == turn.upkeep)
{
    cardPlayed = false;
    itemUsed = false;
}

//inventory interaction.
if(mouse_check_button_pressed(mb_right) && sprite_index == spr_player_idle && !cardPlayed && obj_combatManager.currentTurn == turn.friend)
{
    var col = noone;
    if(y-mouse_y < 48 && y-mouse_y > 0 && x-mouse_x < 6 && x-mouse_x > -6)
    {
        col = collision_rectangle(mouse_x,mouse_y,mouse_x-(x-mouse_x),mouse_y-(mouse_y-y),object_index,false,false)
        if(col != noone)
        {
            animation_play(spr_player_openBag,0,PLAYER_ANIMATION_OPENBAG_SPEED);
            state = unit_friendInventoryState;
        }
    }
}




// make sure to let the CombatManager know that we are done with our turn
combatManager_turnCompleted(turn.upkeep,turn.foe);


