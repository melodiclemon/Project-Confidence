///unit_friendInventoryState()
    
var col = noone;

if(animation_end() && sprite_index == spr_player_openBag)
{
  //  show_debug_message("now we can start loading the inventory!");
    animation_play(spr_player_bagIdle,0,PLAYER_ANIMATION_BAGIDLE_SPEED);
}

if(mouse_check_button_pressed(mb_right) && sprite_index == spr_player_bagIdle)
{
    if(y-mouse_y < 48 && y-mouse_y > 0 && x-mouse_x < 6 && x-mouse_x > -6)
    {
        col = collision_rectangle(mouse_x,mouse_y,mouse_x-(x-mouse_x),mouse_y-(mouse_y-y),object_index,false,false)
        if(col != noone)
        {
            animation_play(spr_player_closeBag,0,PLAYER_ANIMATION_CLOSEBAG_SPEED);
            state = unit_friendIdleState;    
        }
    }  
}

if(sprite_index == spr_player_bagIdle && itemUsed)
{
    animation_play(spr_player_closeBag,0,PLAYER_ANIMATION_SPEED);    
}

if(animation_end() && sprite_index == spr_player_closeBag)
{
    
    combatManager_turnCompleted(turn.friend);
    state = unit_friendIdleState;  
    itemUsed = false;
}
