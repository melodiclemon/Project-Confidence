///player_overworld_freezeState()

// this state is used to freeze the player, making it unable to do anything


if(animation_end() && sprite_index != spr_player_idle)
{
    animation_play(spr_player_idle,0,PLAYER_ANIMATION_IDLE_SPEED);
}

path_end();
