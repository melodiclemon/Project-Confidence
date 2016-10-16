///Player_Overworld_Inventory
var col = noone;

//set our animation to bag idle when we are done opening the bag
if(animation_end() && sprite_index == spr_player_openBag)
{
    animation_play(spr_player_bagIdle,0,PLAYER_ANIMATION_BAGIDLE_SPEED);
}

//end state if we are done with the closing bag animation.
if(animation_end() && sprite_index == spr_player_closeBag)
{
     state = Player_Overworld_Idle;  
}

// if we have the mouse over the character and right click we close the bag.
if(mouse_check_button_pressed(mb_right) && sprite_index == spr_player_bagIdle)
{
    if(y-mouse_y < 48 && y-mouse_y > 0 && x-mouse_x < 6 && x-mouse_x > -6)
    {
        col = collision_rectangle(mouse_x,mouse_y,mouse_x-(x-mouse_x),mouse_y-(mouse_y-y),object_index,false,false)
        if(col != noone)
        {
            animation_play(spr_player_closeBag,0,PLAYER_ANIMATION_CLOSEBAG_SPEED);  
        }
    }  
}


       
    
