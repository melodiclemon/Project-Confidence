///Player_Overworld_Idle()

var col;

if(animation_end() && sprite_index != spr_player_idle)
{
    animation_play(spr_player_idle,0,0.05);
}

// left mouse button interactions

if(mouse_check_button_pressed(mb_left))
{
    col = collision_point(mouse_x,mouse_y,interactableObject,false,true);    

    if(col != noone && point_distance(x,y,mouse_x,mouse_y) < interactionDist)
    {
        if(col.capsuledState != noone)
            state = col.capsuledState;
    }
    else
    {
        animation_play(spr_player_walk,0,0.1);
        state = Player_Overworld_Move; 
    }   
    
}

if(mouse_check_button_pressed(mb_right) && sprite_index == spr_player_idle)
{
    col = noone;

    //make sure we are within the boundary of the player sprite and check for collision
    if(y-mouse_y < 48 && y-mouse_y > 0 && x-mouse_x < 6 && x-mouse_x > -6)
        col = collision_rectangle(mouse_x,mouse_y,mouse_x-(x-mouse_x),mouse_y-(mouse_y-y),object_index,false,false)
        
    if(col != noone)
    {
        animation_play(spr_player_openBag,0,0.1);
        state = Player_Overworld_Inventory;
    }
    //do our secondary action
    else if(PlayerManager.ability != noone)
    {
        state = PlayerManager.ability; 
    }
    
}

