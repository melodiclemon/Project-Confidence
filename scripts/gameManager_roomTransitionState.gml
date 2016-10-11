//gameManager_roomTransitionState()

if(transitionReady)
{
    
    transitionReady = false;
    room_goto(transitionToRoom);
    stateChangerId = noone;
    state = gameManager_idleState;
}
else if(!instance_exists(TransitionManager) && stateChangerId != noone && alarm[0] == -1)
{
    alarm[0] = transitionDelay;  
    previousRoom = room;
    //freeze the player
    if(instance_exists(obj_player))
        obj_player.state = player_overworld_freezeState;
          
}


