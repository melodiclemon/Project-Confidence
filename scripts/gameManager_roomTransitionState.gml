//gameManager_roomTransitionState()

if(transitionReady)
{
    transitionReady = false;
    room_goto(transitionToRoom);
    stateChangerId = noone;
    state = gameManager_idleState;
}
else if(!instance_exists(TransitionManager) && stateChangerId != noone)
{
    transition_create(stateChangerId.transition,stateChangerId);           
}
