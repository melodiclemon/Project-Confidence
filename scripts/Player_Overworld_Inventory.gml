///Player_Overworld_Inventory

if(animation_end() && sprite_index == spr_player_openBag)
{
  //  show_debug_message("now we can start loading the inventory!");
    animation_play(spr_player_bagIdle,0,0.05);
}

if(mouse_check_button_pressed(mb_right) && sprite_index == spr_player_bagIdle)
{
   animation_play(spr_player_closeBag,0,0.1);
   state = Player_Overworld_Idle;
}
