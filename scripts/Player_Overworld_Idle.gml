///Player_Overworld_Idle()

//make sure we face the mouse
if(mouse_x > x )
   image_xscale = 1;
else
   image_xscale = -1;



var col;

if(animation_end() && sprite_index != spr_player_idle)
{
    animation_play(spr_player_idle,0,PLAYER_ANIMATION_IDLE_SPEED);
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
    
   
    
}
else if(mouse_check_button(mb_left) && distance_to_point(mouse_x,mouse_y) > astar_get_cell_size() && !collision_line(x,y,x+lengthdir_x(astar_get_cell_size()*2,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(astar_get_cell_size(),point_direction(x,y,mouse_x,mouse_y)),Block,1,1))
{   

        astar_path_player(mouse_x,mouse_y,1,movementSpeed,0);
        animation_play(spr_player_walk,0,PLAYER_ANIMATION_WALK_SPEED);
        state = Player_Overworld_Move; 

}

// right mouse button interactions

if(mouse_check_button_pressed(mb_right) && sprite_index == spr_player_idle)
{
    col = noone;

    //inventory interaction.
    if(y-mouse_y < 48 && y-mouse_y > 0 && x-mouse_x < 6 && x-mouse_x > -6)
    {
        col = collision_rectangle(mouse_x,mouse_y,mouse_x-(x-mouse_x),mouse_y-(mouse_y-y),object_index,false,false)
        if(col != noone)
        {
            animation_play(spr_player_openBag,0,PLAYER_ANIMATION_OPENBAG_SPEED);
            state = Player_Overworld_Inventory;
        }
        col = noone;
    }
    //Doggie menu interaction 
    else if(Doggie.y-mouse_y < 15 && Doggie.y-mouse_y > 0 && Doggie.x-mouse_x < 10 && Doggie.x-mouse_x > -9)
    {
        col = collision_rectangle(mouse_x,mouse_y,mouse_x-(Doggie.x-mouse_x),mouse_y-(mouse_y-Doggie.y),Doggie,1,true);    
        if(col != noone)
        {
            targetX = -1;
            targetY = -1;
            animation_play(spr_player_walk,0,PLAYER_ANIMATION_WALK_SPEED);
            state = player_overworld_moveToDoggieState;
        }
        col = noone; 
    }
    //do our secondary action
    else if(PlayerManager.ability != noone)
    {
        //show_message(script_get_name(PlayerManager.ability));
        //state = PlayerManager.ability; 
    }
    
}

