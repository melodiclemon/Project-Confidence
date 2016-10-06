///gameManager_requestState(state)

/*
    Used by other objects to see if it is possible to change the Game Managers
    current state. Returns true if successful otherwise false.

*/


if(GameManager.state != gameManager_idleState)
{
    //show_message("GameManager is currently in state: " + string(script_get_name(GameManager.state)) + "\n" + "and could not change to state: " + string(script_get_name(argument0)));
    return false;
}
else
{
    GameManager.stateChangerId = id;
    return true;
}
